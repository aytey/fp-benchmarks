#!/usr/bin/env python3
"""Inventory the four captured strata: per-query facts, and what overlaps.

    inventory.py CAPTURE_DIR OUT.tsv [WORKERS]

Two things make a naive byte-hash useless for the overlap question:

  * the float-to-bits encoding names its variables from a global counter
    (`__klee_fp_bits_37`), so the SAME query captured under two arms differs
    textually in every one of those names;
  * KLEE prints a `(set-info :status unknown)` and other boilerplate that
    carries no content.

So the hash is taken over a canonical form: those variables renumbered by
order of first appearance, set-info dropped, whitespace collapsed. Anything
still differing after that is a genuinely different query.
"""
import os, re, sys, csv, hashlib, collections
from multiprocessing import Pool

CAP, OUT = sys.argv[1], sys.argv[2]
WORKERS = int(sys.argv[3]) if len(sys.argv) > 3 else 16
ARMS = ("exact", "fpabs", "fpbv", "bwz")

# Every spelling that fixes a float's width: the sort, the two conversions,
# the short sort names, and the (fp sign exp sig) literal -- which names no
# sort at all, and was the only float in 23 gsl queries of bench-v2 that
# the first two patterns alone left at width 0.
FMT = re.compile(r"\(_ FloatingPoint (\d+) (\d+)\)|\(_ to_fp(?:_unsigned)? (\d+) (\d+)\)"
                 r"|Float(16|32|64|128)|\(fp #b([01]+) #b([01]+) #b([01]+)\)")
BITSVAR = re.compile(r"__(?:klee_)?fp_bits_\d+")
SETINFO = re.compile(r"^\(set-info[^\n]*\)\s*$", re.M)
WS = re.compile(r"\s+")
OPS = ("fp.mul", "fp.div", "fp.sqrt", "fp.fma", "fp.add", "fp.sub",
       "fp.to_sbv", "fp.to_ubv", "fp.rem", "fp.roundToIntegral")


def canonical(text):
    """Text with counter-named bit-vector variables renumbered by first
    appearance, set-info lines dropped and whitespace collapsed."""
    seen, order = {}, []

    def repl(m):
        name = m.group(0)
        if name not in seen:
            seen[name] = "__bits_%d" % len(order)
            order.append(name)
        return seen[name]

    t = BITSVAR.sub(repl, text)
    t = SETINFO.sub("", t)
    return WS.sub(" ", t).strip()


def scan(path):
    arm = os.path.relpath(path, CAP).split("/")[0]
    parts = path.split("/")
    lib, drv = parts[-4], parts[-3]
    try:
        s = open(path, errors="replace").read()
    except Exception:
        return None
    widths = set()
    for m in FMT.finditer(s):
        if m.group(1):
            widths.add(int(m.group(1)) + int(m.group(2)))
        elif m.group(3):
            widths.add(int(m.group(3)) + int(m.group(4)))
        elif m.group(5):
            widths.add(int(m.group(5)))
        else:
            widths.add(len(m.group(6)) + len(m.group(7)) + len(m.group(8)))
    h = hashlib.sha1(canonical(s).encode("utf-8", "replace")).hexdigest()
    row = [arm, lib, drv, os.path.basename(path), len(s),
           s.count("(assert"), ";".join(str(w) for w in sorted(widths)) or "0",
           max(widths) if widths else 0, h]
    row += [s.count("(" + o) for o in OPS]
    return row


files = []
for arm in ARMS:
    root = os.path.join(CAP, arm)
    for dirpath, _, names in os.walk(root):
        for n in names:
            if n.endswith(".smt2"):
                files.append(os.path.join(dirpath, n))
print("scanning %d files with %d workers" % (len(files), WORKERS), flush=True)

hdr = ["arm", "library", "driver", "file", "bytes", "asserts", "widths",
       "maxwidth", "hash"] + [o.replace("fp.", "") for o in OPS]
n = 0
with Pool(WORKERS) as p, open(OUT, "w", newline="") as fh:
    w = csv.writer(fh, delimiter="\t")
    w.writerow(hdr)
    for row in p.imap_unordered(scan, files, chunksize=256):
        if row is None:
            continue
        w.writerow(row)
        n += 1
        if n % 25000 == 0:
            print("  %d/%d" % (n, len(files)), flush=True)
print("wrote %d rows to %s" % (n, OUT), flush=True)

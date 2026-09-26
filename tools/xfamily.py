#!/usr/bin/env python3
"""Find duplicates ACROSS the two printer families.

    xfamily.py MANIFEST.tsv QUERY_DIR OUT.tsv [WORKERS]

The two captures print differently -- Bitwuzla's dumper emits
`declare-const` and `define-fun @defN` bindings where STP's inlines
everything -- so the same query has two spellings and a textual hash sees
two benchmarks. Pushing both through ONE parser and printer removes that:
`bitwuzla -p --print-no-letify` re-emits whatever it parsed in its own
normal form, and exits without solving.

Printing alone is not enough, because the builders also *name* things
differently (`a2_0` against `a20`, and the float-to-bits variables are
numbered from a counter). So every declared symbol is renamed by order of
first appearance, which makes the hash an alpha-equivalence class: two
queries that differ only in what their variables are called collapse
together, which for a benchmark set is exactly right -- they pose the solver
the same problem.
"""
import os, re, sys, csv, hashlib, subprocess, collections
from multiprocessing import Pool

MAN, QDIR, OUT = sys.argv[1], sys.argv[2], sys.argv[3]
WORKERS = int(sys.argv[4]) if len(sys.argv) > 4 else 16
BWZ = os.environ.get("BITWUZLA_BIN",
                     "/home/avj/clones/bitwuzla/main/build/src/main/bitwuzla")

DECL = re.compile(r"\((?:declare-fun|declare-const)\s+\|?([^\s|()]+)\|?")
WS = re.compile(r"\s+")


def canon(text):
    names = []
    seen = set()
    for m in DECL.finditer(text):
        n = m.group(1)
        if n not in seen:
            seen.add(n)
            names.append(n)
    # longest first, so a name that is a prefix of another cannot corrupt it
    out = text
    for i, n in enumerate(sorted(names, key=len, reverse=True)):
        out = re.sub(r"\|?\b%s\b\|?" % re.escape(n), "@v%d" % names.index(n), out)
    return WS.sub(" ", out).strip()


def one(name):
    path = os.path.join(QDIR, name)
    try:
        r = subprocess.run([BWZ, "-p", "--print-no-letify", path],
                           capture_output=True, text=True, timeout=120)
    except subprocess.TimeoutExpired:
        return (name, "")
    if r.returncode != 0 or not r.stdout:
        return (name, "")
    return (name, hashlib.sha1(canon(r.stdout).encode("utf-8", "replace")).hexdigest())


rows = list(csv.DictReader(open(MAN), delimiter="\t"))
names = [r["file"] for r in rows]
fam = {r["file"]: r["family"] for r in rows}
print("canonicalising %d queries with %d workers" % (len(names), WORKERS), flush=True)

# Written as it goes: this takes the better part of an hour, and a run that
# holds everything in memory until the end loses all of it to one stray kill.
res = {}
done = 0
with Pool(WORKERS) as p, open(OUT, "w", newline="") as fh:
    w = csv.writer(fh, delimiter="\t")
    w.writerow(["file", "family", "xhash"])
    for name, h in p.imap_unordered(one, names, chunksize=16):
        res[name] = h
        w.writerow([name, fam[name], h])
        done += 1
        if done % 1000 == 0:
            fh.flush()
            print("  %d/%d" % (done, len(names)), flush=True)

ok = [n for n in names if res.get(n)]
print("\ncanonicalised %d of %d (%d failed/timed out)"
      % (len(ok), len(names), len(names) - len(ok)))
byhash = collections.defaultdict(set)
for n in ok:
    byhash[res[n]].add(fam[n])
both = sum(1 for h, f in byhash.items() if len(f) == 2)
print("distinct queries after cross-family canonicalisation: %d" % len(byhash))
print("  present in BOTH families: %d" % both)
print("  stp only: %d   bwz only: %d"
      % (sum(1 for h, f in byhash.items() if f == {"stp"}),
         sum(1 for h, f in byhash.items() if f == {"bwz"})))
dupes = len(ok) - len(byhash)
print("  files that are duplicates of another file: %d" % dupes)

#!/usr/bin/env python3
"""Prove a set of dumped queries carries the float-to-bits encoding intact.

    check_bits_bindings.py QUERY_DIR [MANIFEST.tsv]

For every `__klee_fp_bits_N` symbol a query uses, it must be bound by a
`(= <float> ((_ to_fp e s) |__klee_fp_bits_N|))` -- or, for a NaN float,
the `(fp.isNaN ...)` STP's rewriter turns that into -- and no symbol may
be bound to two different floats. A symbol used but never bound is the
cross-query reuse the capture patch once allowed (a weaker query than
KLEE asked); a symbol bound to two floats is the within-query aliasing of
a freed node's address (an equality KLEE never stated). Both counts must
be zero for the corpus to be what it claims. With a manifest, only the
STP printer family is examined. Exit status 1 when either count is not 0.
"""
import collections
import csv
import os
import re
import sys

SYM = re.compile(rb"__klee_fp_bits_\d+")
CONV = re.compile(rb"\(\(_ to_fp \d+ \d+\)\s*\|?(__klee_fp_bits_\d+)\|?\s*\)")


def operand_before(data, pos):
    """The balanced operand that ends just before `pos`, and its start."""
    i = pos - 1
    while i >= 0 and data[i:i + 1].isspace():
        i -= 1
    end = i + 1
    c = data[i:i + 1]
    if c == b")":
        depth = 0
        while i >= 0:
            c = data[i:i + 1]
            if c == b")":
                depth += 1
            elif c == b"(":
                depth -= 1
                if depth == 0:
                    break
            i -= 1
        return data[i:end], i
    if c == b"|":
        j = data.rfind(b"|", 0, i)
        return data[j:end], j
    while i >= 0 and not data[i:i + 1].isspace() and data[i:i + 1] not in (b"(", b")"):
        i -= 1
    return data[i + 1:end], i + 1


def operand_after(data, pos):
    """The balanced operand that starts at or after `pos`."""
    i = pos
    while i < len(data) and data[i:i + 1].isspace():
        i += 1
    start = i
    c = data[i:i + 1]
    if c == b"(":
        depth = 0
        while i < len(data):
            c = data[i:i + 1]
            if c == b"(":
                depth += 1
            elif c == b")":
                depth -= 1
                if depth == 0:
                    break
            i += 1
        return data[start:i + 1]
    if c == b"|":
        j = data.find(b"|", i + 1)
        return data[start:j + 1]
    while i < len(data) and not data[i:i + 1].isspace() and data[i:i + 1] not in (b"(", b")"):
        i += 1
    return data[start:i]


LETALIAS = re.compile(rb"\(let \(\((\|\?let_k_\d+\|) \(\(_ to_fp \d+ \d+\)\s*\|?(__klee_fp_bits_\d+)\|?\s*\)\)\)")
ISNAN = re.compile(rb"\(fp\.isNaN\s*\(\(_ to_fp \d+ \d+\)\s*\|?(__klee_fp_bits_\d+)\|?\s*\)\s*\)")


def bindings(data):
    """(symbol, float text) for each (= <float> conv) or (= conv <float>),
    conv being ((_ to_fp e s) sym); the printer writes both orders. A float
    that is a NaN constant is bound as (fp.isNaN conv): SMT-LIB has one NaN
    value, so (= NaN x) and (fp.isNaN x) are the same fact, and STP's
    rewriter prints the second."""
    out = [(s, b"NaN") for s in ISNAN.findall(data)]
    # a conversion the printer let-bound: every use of the let symbol is a
    # use of the conversion, so bindings through the symbol count
    for alias, sym in LETALIAS.findall(data):
        for m in re.finditer(re.escape(alias), data):
            j = m.start() - 1
            while j >= 0 and data[j:j + 1].isspace():
                j -= 1
            before = data[max(0, j - 9):j + 1]
            if before.endswith(b"(fp.isNaN"):
                out.append((sym, b"NaN"))
            elif before.endswith(b"(="):
                out.append((sym, operand_after(data, m.end())))
            else:
                lhs, start = operand_before(data, m.start())
                k = start - 1
                while k >= 0 and data[k:k + 1].isspace():
                    k -= 1
                if data[max(0, k - 1):k + 1] == b"(=":
                    out.append((sym, lhs))
    for m in CONV.finditer(data):
        # conversion second: the float precedes it, "(=" precedes the float
        lhs, start = operand_before(data, m.start())
        j = start - 1
        while j >= 0 and data[j:j + 1].isspace():
            j -= 1
        if data[max(0, j - 1):j + 1] == b"(=":
            out.append((m.group(1), lhs))
            continue
        # conversion first: "(=" precedes it, the float follows
        j = m.start() - 1
        while j >= 0 and data[j:j + 1].isspace():
            j -= 1
        if data[max(0, j - 1):j + 1] == b"(=":
            out.append((m.group(1), operand_after(data, m.end())))
    return out


def main():
    qdir = sys.argv[1]
    names = sorted(n for n in os.listdir(qdir) if n.endswith(".smt2"))
    if len(sys.argv) > 2:
        fam = {r["file"]: r["family"] for r in csv.DictReader(open(sys.argv[2]), delimiter="\t")}
        names = [n for n in names if fam.get(n) == "stp"]
    using = unbound = aliased = 0
    ex_unbound, ex_aliased = [], []
    for n in names:
        d = open(os.path.join(qdir, n), "rb").read()
        used = set(SYM.findall(d))
        if not used:
            continue
        using += 1
        bound = collections.defaultdict(set)
        for s, lhs in bindings(d):
            bound[s].add(lhs)
        if used - set(bound):
            unbound += 1
            if len(ex_unbound) < 3:
                ex_unbound.append(n)
        if any(len(v) > 1 for v in bound.values()):
            aliased += 1
            if len(ex_aliased) < 3:
                ex_aliased.append(n)
    print("queries using bits symbols: %d" % using)
    print("  with a symbol used but never bound: %d %s" % (unbound, ex_unbound))
    print("  with a symbol bound to two different floats: %d %s" % (aliased, ex_aliased))
    sys.exit(1 if (unbound or aliased) else 0)


if __name__ == "__main__":
    main()

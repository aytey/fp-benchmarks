#!/usr/bin/env python3
"""Split KLEE's --use-query-log=solver:smt2 log into standalone queries.

    split_query_log.py LOG.smt2 OUTDIR PREFIX

The log writes one complete script per query -- set-logic, declarations,
asserts, check-sat -- separated by its own `; Query N` comments. Only the
S-expression lines are kept, the (get-value) requests are dropped so that a
replay reports one answer per file, and a query whose parens do not balance is
skipped rather than shipped as something else.
"""
import os, re, sys

SEXPR = re.compile(r"^\s*(\(|\)|$)")
src, outdir, prefix = sys.argv[1], sys.argv[2], sys.argv[3]
os.makedirs(outdir, exist_ok=True)
lines = open(src, errors="replace").read().split("\n")
starts = [i for i, l in enumerate(lines) if l.startswith("(set-logic")]
n = 0
for k, i in enumerate(starts):
    j = starts[k + 1] if k + 1 < len(starts) else len(lines)
    body = [l for l in lines[i:j]
            if SEXPR.match(l) and not l.startswith("(get-value")
            and not l.startswith("(check-sat") and not l.startswith("(exit")
            and not l.startswith("(set-option")]
    while body and not body[-1].strip():
        body.pop()
    text = "\n".join(body)
    if "(assert" not in text:
        continue
    if text.count("(") != text.count(")"):
        print("  unbalanced, skipped: query %d" % (k + 1), file=sys.stderr)
        continue
    n += 1
    with open(os.path.join(outdir, "%s.%04d.smt2" % (prefix, n)), "w") as fh:
        fh.write(text + "\n(check-sat)\n(exit)\n")
print("%s: %d queries" % (prefix, n))

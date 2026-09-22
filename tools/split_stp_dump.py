#!/usr/bin/env python3
"""Split KLEE's STP query dump (on stderr, interleaved with KLEE's own
messages) into standalone SMT-LIB2 files.

    split_stp_dump.py DUMP.err OUTDIR PREFIX

vc_printSMTLIB2 emits a whole script per query -- set-logic, set-info,
declarations, one assert -- so a query runs from a `(set-logic` line to the
last line before the next one, with KLEE's `KLEE:`-prefixed chatter dropped.
`(check-sat)` is appended because the printer does not emit one.
"""
import os, sys

import re
SEXPR = re.compile(r"^\s*(\(|\)|$)")
src, outdir, prefix = sys.argv[1], sys.argv[2], sys.argv[3]
os.makedirs(outdir, exist_ok=True)

lines = open(src, errors="replace").read().split("\n")
starts = [i for i, l in enumerate(lines) if l.startswith("(set-logic")]
n = 0
for k, i in enumerate(starts):
    j = starts[k + 1] if k + 1 < len(starts) else len(lines)
    # Only S-expression lines are the query: STP's printer starts every line
    # with a paren (a few are blank). Anything else is KLEE's own stderr
    # interleaved with the dump -- its KLEE: messages, a library's error
    # handler, a crash trace -- and 40 queries of capture4 did not parse
    # because of it.
    body = [l for l in lines[i:j] if SEXPR.match(l)]
    # trailing blank lines are the printer's, not content
    while body and not body[-1].strip():
        body.pop()
    text = "\n".join(body)
    if "(assert" not in text:
        continue
    # balance check: a truncated dump is worse than a missing one, because it
    # parses as something else entirely
    if text.count("(") != text.count(")"):
        print("  unbalanced, skipped: query %d" % (k + 1), file=sys.stderr)
        continue
    n += 1
    with open(os.path.join(outdir, "%s.%04d.smt2" % (prefix, n)), "w") as fh:
        fh.write(text + "\n(check-sat)\n(exit)\n")
print("%s: %d queries" % (prefix, n))

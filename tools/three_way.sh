#!/bin/bash
# Differential test for the generic SMT-LIB printer.
#
#   three_way.sh <lib> <driver> <backend> [budget]
#
# One KLEE run, two dumps of the same query stream: the solver backend's own
# builder, and the generic ExprSMTLIBPrinter. Both are replayed under a third
# party (Bitwuzla as a file solver) and compared query by query. A printer that
# means something other than what KLEE asked shows up as a differing answer.
#
# Both dumps include KLEE's trivial `(assert true)` query, so neither side is
# filtered: dropping it from one of them shifts every comparison by one and
# manufactures mismatches that are not there.
set -u
LIB=$1; DRV=$2; BACKEND=${3:-bitwuzla}; BUDGET=${4:-60}
HERE=$(cd "$(dirname "$0")" && pwd)
KLEE=${KLEE_BIN:-/mnt/baranem/klee-float/3.2-buildfpabs/bin/klee}
BWZ=${BITWUZLA_BIN:-/home/avj/clones/bitwuzla/main/build/src/main/bitwuzla}
W=${FP_BENCH_WORK:-/mnt/baranem/fp_bench-work}
FPB=${FP_BENCH_SRC:-/home/avj/clones/fp_bench}
BC=${5:-$W/$LIB/obj/$DRV.bc}
D=$(mktemp -d "${TMPDIR:-/tmp}/3way-XXXX")
[ -f "$BC" ] || { echo "$LIB/$DRV: no bitcode"; exit 0; }

if [ "$BACKEND" = stp ]; then
  DUMP=(--solver-backend=stp --stp-portable-float-bits --debug-dump-stp-queries)
else
  DUMP=(--solver-backend=bitwuzla --debug-bitwuzla-dump-queries=$D/ref.smt2)
fi
timeout $((BUDGET * 4 + 120)) $KLEE --output-dir=$D/run "${DUMP[@]}" \
  --use-query-log=solver:smt2 --write-no-tests --search=dfs \
  --max-time=${BUDGET}s --max-solver-time=15s --max-memory=3000 \
  "$BC" > $D/out.log 2> $D/err.log
if grep -q "ERROR: ExprSMTLIBPrinter" $D/err.log; then
  echo "$LIB/$DRV PRINTER-ERROR: $(grep -m1 'ERROR: ExprSMTLIBPrinter' $D/err.log)"; exit 1
fi

python3 "$HERE/split_query_log.py" $D/run/solver-queries.smt2 $D/new n >/dev/null 2>&1
if [ "$BACKEND" = stp ]; then
  python3 "$HERE/split_stp_dump.py" $D/err.log $D/ref q >/dev/null 2>&1
else
  python3 "$FPB/common/split-queries.py" $D/ref.smt2 $D/ref q >/dev/null 2>&1
fi

# KLEE asks a trivial `(assert true)` query that STP's dump records and
# Bitwuzla's does not, so it is dropped from both sides before they are lined
# up. Dropping it from one side only shifts every comparison by one and
# manufactures mismatches that are not there -- which is what it did until the
# file sizes gave it away.
for f in $D/new/*.smt2 $D/ref/*.smt2; do
  [ -f "$f" ] || continue
  if [ "$(grep -c '(assert' "$f")" = 1 ] && grep -qE '^\(assert true' "$f"; then
    rm -f "$f"
  fi
done

answers() { for f in $(ls $1 2>/dev/null); do a=$(timeout 120 $BWZ $f 2>&1 | head -1); echo "${a:-timeout}"; done; }
answers "$D/new/*.smt2" > $D/new.ans
answers "$D/ref/*.smt2" > $D/ref.ans
NN=$(wc -l < $D/new.ans); NR=$(wc -l < $D/ref.ans)
if [ "$NN" != "$NR" ]; then
  printf "%-36s %-9s COUNT MISMATCH new=%s ref=%s\n" "$LIB/$DRV" "$BACKEND" "$NN" "$NR"; exit 1
fi
MIS=$(paste $D/new.ans $D/ref.ans | awk '$1 != $2 && $1 != "timeout" && $2 != "timeout"' | wc -l)
ERR=$(grep -c "error" $D/new.ans)
printf "%-36s %-9s queries=%-5s mismatched=%-3s errors=%-3s  %s\n" \
  "$LIB/$DRV" "$BACKEND" "$NN" "$MIS" "$ERR" "$(sort $D/new.ans | uniq -c | tr '\n' ' ')"
[ "$MIS" != 0 ] && paste $D/new.ans $D/ref.ans | awk '$1 != $2' | head -3
[ "$ERR" != 0 ] && grep -m2 "error" $D/new.ans
exit 0

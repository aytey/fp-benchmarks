#!/bin/bash
# Capture SMT-LIB corpora under four provenances, across every width the
# suite builds.
#
#   capture4.sh <jobs> [budget] [cap]
#
# The four arms are the solver configurations a user could actually run:
#
#   exact     STP, no abstraction         -- the incumbent
#   fpabs     STP + floating-point CEGAR  -- the contribution
#   fpbv      STP + FP and BV abstraction -- STP's best, BV threshold 33
#             to match Bitwuzla's ABSTRACTION_BV_SIZE default
#   bwz       Bitwuzla, its own BV abstraction on (its default)
#
# Capturing under all four matters because none of them is a superset: the
# end-to-end run found the abstraction reaches further on most drivers but
# LESS on five of 130 (qsyr2k_ by 296 completed paths, cuba/Vegas by 77
# queries). A query never issued is a benchmark that does not exist, so the
# union is the corpus and each arm is also a stratum to report separately --
# which is what answers "whose solver chose these queries?".
#
# Both dumpers use the same float-to-bits encoding (a fresh bitvector
# constrained through to_fp), so the four corpora are directly comparable:
# KLEE's Bitwuzla builder has always done this, and --stp-portable-float-bits
# makes the STP builder match. --write-no-tests everywhere, because the
# relaxed encoding does not survive KLEE's model validation and no arm needs
# test cases.
set -u
JOBS=${1:-16}
BUDGET=${2:-120}
CAP=${3:-60}
W=/mnt/baranem/fp_bench-work
KLEE=/mnt/baranem/klee-float/3.2-buildfpabs/bin/klee
SPLIT_STP=/mnt/baranem/split_stp_dump.py
SPLIT_BWZ=/home/avj/clones/fp_bench/common/split-queries.py
OUT=/mnt/baranem/capture4
mkdir -p "$OUT"

# library:stride -- the strides are sweep-all.sh's, which exist so the big
# libraries do not swamp the small ones.
LIBS=(
  "f2clapack:1" "f2clapack-f64:1" "f2clapack-f32:1" "f2clapack-f16:1"
  "sundials:3" "sundials-f128:3" "sundials-f16:3"
  "cmsisdsp:3" "cmsisdsp-f32:3"
  "hdf5:1" "hdf5-f32:1"
  "cuba:1" "fftwq:1" "fftw:1"
  "cxsparse:1" "osqp:1" "blis:4" "openlibm:3" "gsl:10" "gmp:2"
)

: > /tmp/capture4.jobs
for entry in "${LIBS[@]}"; do
  lib=${entry%%:*}; stride=${entry##*:}
  [ -f "$W/$lib/drivers.txt" ] || { echo "skip $lib (not built)"; continue; }
  n=0
  while read -r d; do
    n=$((n + 1))
    [ $(( (n - 1) % stride )) -eq 0 ] || continue
    [ -f "$W/$lib/obj/$d.bc" ] || continue
    for arm in exact fpabs fpbv bwz; do echo "$lib $d $arm" >> /tmp/capture4.jobs; done
  done < "$W/$lib/drivers.txt"
done
echo "jobs: $(wc -l < /tmp/capture4.jobs)  (${JOBS}-way, budget ${BUDGET}s, cap ${CAP}s)"

run_one() {
  lib=$1; drv=$2; arm=$3
  d=$OUT/$arm/$lib/$drv
  rm -rf "$d"; mkdir -p "$d"
  case $arm in
    exact) flags=(--solver-backend=stp --stp-portable-float-bits) ;;
    fpabs) flags=(--solver-backend=stp --stp-portable-float-bits --stp-fp-abstraction) ;;
    fpbv)  flags=(--solver-backend=stp --stp-portable-float-bits --stp-fp-abstraction --stp-bv-abstraction-width=33) ;;
    bwz)   flags=(--solver-backend=bitwuzla) ;;
  esac
  if [ "$arm" = bwz ]; then
    dumpflag=(--debug-bitwuzla-dump-queries="$d/raw.smt2")
  else
    dumpflag=(--debug-dump-stp-queries)   # STP's dump goes to stderr
  fi
  timeout $((BUDGET * 4 + 180)) "$KLEE" --output-dir="$d/run" "${flags[@]}" \
    "${dumpflag[@]}" --write-no-tests --search=dfs --max-time=${BUDGET}s \
    --max-solver-time=${CAP}s --max-memory=4000 \
    "$W/$lib/obj/$drv.bc" > "$d/out.log" 2> "$d/err.log"
  rc=$?
  if [ "$arm" = bwz ]; then
    [ -s "$d/raw.smt2" ] && python3 "$SPLIT_BWZ" "$d/raw.smt2" "$d/split" q > /dev/null 2>&1
  else
    python3 "$SPLIT_STP" "$d/err.log" "$d/split" q > /dev/null 2>&1
  fi
  n=$(find "$d/split" -name '*.smt2' 2>/dev/null | wc -l)
  rm -rf "$d/run"          # the executor's own output is not the artefact
  echo "$lib/$drv $arm rc=$rc queries=$n"
}
export -f run_one; export OUT W KLEE SPLIT_STP SPLIT_BWZ BUDGET CAP

xargs -a /tmp/capture4.jobs -P "$JOBS" -L1 bash -c 'run_one "$@"' _ > "$OUT/yield.txt" 2>&1
echo "== captured, by arm:"
for arm in exact fpabs fpbv bwz; do
  echo "  $arm: $(find $OUT/$arm -name '*.smt2' 2>/dev/null | wc -l) queries"
done
echo "CAPTURE-DONE"

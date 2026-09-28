# Floating-point SMT-LIB benchmarks captured for the FP-abstraction work

> Part of the [floating-point benchmark work](https://github.com/aytey/fp-repro): that repository pins this one with the KLEE fork, the corpus, the replay harness and STP, and has the build recipe and the steps in order.

Every file here is one SMT-LIB2 query, dumped from a KLEE symbolic execution
of a real numerical library and split into a standalone file that replays
against any solver. Nothing here is hand-written and nothing is synthetic.

Captured 2026-09-01/02 with `fp_bench` (`/home/avj/clones/fp_bench`), whose
`common/dump-queries.sh` runs the drivers and `common/split-queries.py` cuts
the per-query files.

## What is here

| directory | queries | capture settings | contents |
| --- | ---: | --- | --- |
| `quad-60s/` | 9,690 | 60 s solver cap, 120 s budget/driver | everything four binary128 libraries produced |
| `quad-curated/` | 1,030 | (subset of the above) | only the queries containing binary128 **arithmetic** |
| `klee-5s/` | 1,558 | 5 s solver cap, 20 s budget/driver | an earlier, shallower capture: LAPACK at q128 and f64, Cuba |

`quad-60s/` by library: f2clapack 995, sundials-f128 3,505, cuba 97,
fftwq 5,093.

## The four-width corpora: bench-v1, bench-v2, bench-v3

The three directories above are binary128, and `klee-5s` also binary64.
The corpus an evaluation should actually read is **`bench-v3`**, which
spans four widths, because what this material is asked to show is what
width does.

| | queries | 16 | 32 | 64 | 128 | no float |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `bench-v1/` | 7,598 | 899 | 1,401 | 2,578 | 1,910 | 810 |
| `bench-v2/` | 7,598 | 899 | 1,401 | 2,601 | 1,910 | 787 |
| **`bench-v3/`** | **7,196** | **889** | **1,326** | **2,535** | **1,667** | **779** |

`bench-v1` and `bench-v2` are here because campaigns were run on them,
not because they should be run again: 1,148 of bench-v2's queries are
weaker than the ones KLEE asked. The commit that adds `bench-v3` says
why, and it is a capture bug rather than anything repairable in a file.

Three things separate these from the quad captures.

**Eighteen library/build labels, not four.** `gsl`, `openlibm`, `blis`,
`cxsparse`, `osqp` and `gmp` at the width their source is written in,
plus the matched arms that make width a controlled variable rather than
a confounded one: `f2clapack` at binary16, binary32, binary64 and
binary128 from one source tree, `sundials` at binary16, binary64 and
binary128, `cmsisdsp` at binary16 with a binary32 control, and `fftw`
against `fftwq`. `osqp` was measured and later dropped from `fp_bench`,
so its 83 queries have no counterpart in today's suite.

**Four capture solvers, not one.** STP exact, STP with the
floating-point abstraction, STP with both abstractions, and Bitwuzla,
each at a 120 s budget per driver and a 60 s cap per solver call. The
`provenance` column of `manifest.tsv` names the arms a query came from
and `family` names the printer that spelled it: the two printers spell
the same query differently, so a query is kept once per printer, merged
on the canonical `hash`. Four capture solvers narrow the conditioning
described above; they do not remove it.

**Sampled, not exhaustive.** Every binary128 query is kept. Every other
driver contributes at most 25, spread across its size range.

`group` splits each corpus into `abstractable` and `control`. The
control is every query holding no floating-point operation an
abstraction could take -- 1,386 of bench-v3, of which 779 mention no
float at all, among them every one of `fftw`'s and `fftwq`'s. A control
query is not an empty one: the bit-vector reasoning is still there, and
a bit-vector abstraction still engages on it.


## The two things to know before using these

**The capture solver decides which queries exist.** A query the solver cannot
answer inside the cap kills its path, and every query downstream of it is
never created. Everything here was captured under **Bitwuzla**, so the corpus
is conditioned on Bitwuzla's performance: it contains no path that Bitwuzla
could not get through in 60 s. That is a real bias and it matters when
comparing against Bitwuzla; the same capture under another solver would give
a different corpus. It is *not* a bias between two configurations of one
other solver.

**The cap decides how deep the corpus goes.** The `klee-5s/` arm exists to
show the difference: at a 5 s cap the corpus stops exactly where solvers
begin to differ, so it is systematically easier than `quad-60s/`. Prefer the
60 s material for anything about hard instances.

## quad-curated: what "curated" means

`quad-60s` contains a great deal that has no floating-point content at all --
notably **every one of fftwq's 5,093 queries contains zero binary128**, which
is expected rather than a fault: an FFT never branches on the values it is
transforming, so it contributes coverage and no solver load.

`quad-curated/` keeps only queries that contain binary128 **arithmetic**
(`fp.mul`, `fp.div`, `fp.sqrt` or `fp.fma`) -- 1,030 of them, from
sundials-f128 (587), f2clapack (382) and cuba (61). The selection rule is
syntactic, was fixed before any solver was timed, and is blind to which
solver answers what.

Operation content: 9,858 fused multiply-adds, 6,972 multiplications,
2,183 divisions, 190 square roots; 829 queries contain a quotient and 70 a
root. Sizes: 41 over 100 KB, 203 at 20-100 KB, 338 at 5-20 KB, 448 smaller.

`quad-curated/manifest.tsv` has one row per query: file, library, driver,
bytes, the formats it mentions, its widest format, assert count, and a count
of each floating-point operation.

## A correction applied to the corpus

29 of the curated queries were dumped carrying `(set-logic ALL)`. Bitwuzla
accepts that; STP refuses it by design and named the logics it does accept.
Left alone it would have scored 29 queries as STP failures for a keyword
rather than for anything about solving, so they were rewritten to
`(set-logic QF_AUFBVFP)` -- the logic `split-queries.py` prepends when a dump
carries none. The queries are otherwise untouched.

## Reproducing a capture

The drivers are `fp_bench` (`github.com/aytey/klee_fp_bench`), generated
from each library's own headers by `common/gen-drivers.py` rather than
written by hand; its `SELECTION.md` records why these libraries and not
the sixteen others that were surveyed and measured. The executor is
`/mnt/baranem/klee-float/3.2`, a clone of `aytey/klee` on branch
`aytey_20260824_fp_port` -- KLEE 3.2 with the floating-point port, whose
2026-08-28 tip is the first that executes binary128 symbolically instead
of terminating on it. It is not `klee-float` (KLEE 1.3, srg-imperial),
which is a different tree for different work and is easy to reach for by
name.

    export KLEE_BUILD=/mnt/baranem/quad-2026/klee-build   # NOT 3.2-buildtest
    export FP_BENCH_WORK=/mnt/baranem/fp_bench-work
    BUDGET=120 MAX_SOLVER_TIME=60 SOLVER=bitwuzla \
      /home/avj/clones/fp_bench/common/dump-queries.sh f2clapack q128

`KLEE_BUILD` matters more than it looks: the suite's default
`3.2-buildtest` **cannot execute binary128 at all**. It terminates on the
first quad instruction, still writes a test case, and still reports a
coverage figure -- so a quad capture made with it silently yields nothing.
The build above carries the `Expr::Int128 -> IEEEquad` patch.

Captures parallelise safely only with one output directory per driver:
`dump-queries.sh` wipes `$OUT/run` per driver, so two jobs sharing an `$OUT`
delete each other's KLEE output mid-run. `capture-quad.sh` on 0009 does this.
Note also that `timeout` around the script kills the script and not its KLEE
grandchild; a capture run should be checked for orphans afterwards.

## Recreating a corpus end to end

`tools/` holds every script that turned KLEE executions into the
`bench-v*` directories, taken as they ran. Each carries its reasoning in
its own header; the paths in them are this machine's.

The chain, as `bench-v3` was made:

    ./capture5.sh 16 120 60                                   # ~1 h 40 at 16-way
    python3 inventory.py capture5 capture5/inventory.tsv 16
    python3 curate.py capture5/inventory.tsv capture5 fp-benchmarks/bench-v3
    python3 check_bits_bindings.py bench-v3/queries bench-v3/manifest.tsv

`capture5.sh` runs each driver under the three STP arms; `capture4.sh`
is the same with Bitwuzla's arm as well, and is what bench-v1 and v2
came from. `inventory.py` records what every query contains and hashes
it canonically, so the same query captured under two arms is one query.
`curate.py` makes the corpus: de-duplicate within a printer family, cap
each driver at 25 spread across its size range, keep every binary128
query, carry a control group. `check_bits_bindings.py` is the gate --
every `__klee_fp_bits_N` bound exactly once and never to two floats,
exit 1 otherwise -- and `bench-v3` passes it at 0/0.

STP's dump is cut by `split_stp_dump.py` here and Bitwuzla's by
`fp_bench`'s own `common/split-queries.py`, because the two dumpers
write to different places in different shapes.

### What recreating one still needs, and is not in this repository

**The libraries as bitcode.** `capture*.sh` reads `drivers.txt` and
`obj/<driver>.bc` from `/mnt/baranem/fp_bench-work/<lib>`, built by
`fp_bench`'s `build-lib.sh`, `gen-drivers.py` and `build-drivers.sh`.
Adding a library to the suite is a day's work and none of it is here.

**The executor.** A KLEE that executes binary128 symbolically and
carries `--stp-portable-float-bits`: `aytey/klee` branch
`aytey_20260824_fp_port` at `938ddd7c`, built against an STP that has
the abstraction flags the `fpabs` and `fpbv` arms pass. `FP_PORT_2026.md`
in that tree documents the port and the build.

**`capture-quad.sh`**, which made `quad-60s` and `klee-5s`, ran on
another machine and is not here.

## Not included

The public SMT-LIB families this work also uses (`QF_FP/griggio`,
`ramalho`, `schanda`, `wintersteiger`, the Ultimate families, the
Liew-KLEE dumps) are third-party and live in
`/mnt/baranem/smt2_problems/non-incremental`. They are the right anchor for
a solver comparison precisely because nobody in the comparison generated
them.

The 8-bit material is not here either, and is not KLEE's: the QF_FP
submission `20260824-LatendresseFP-AndrewTeylu` is 55 problems written
at five formats (4+4, 5+11, 8+24, 11+53, 15+113) and lives with the
SMT-LIB submission.

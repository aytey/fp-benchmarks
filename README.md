# Floating-point SMT-LIB benchmarks captured for the FP-abstraction work

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

## Not included

The public SMT-LIB families this work also uses (`QF_FP/griggio`,
`ramalho`, `schanda`, `wintersteiger`, the Ultimate families, the
Liew-KLEE dumps) are third-party and live in
`/mnt/baranem/smt2_problems/non-incremental`. They are the right anchor for
a solver comparison precisely because nobody in the comparison generated
them.

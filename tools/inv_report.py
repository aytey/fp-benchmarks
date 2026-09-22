#!/usr/bin/env python3
"""Report the corpus inventory: duplication, cross-arm overlap, FP widths."""
import sys, csv, collections

rows = []
with open(sys.argv[1]) as fh:
    for r in csv.DictReader(fh, delimiter="\t"):
        rows.append(r)

ARMS = ("exact", "fpabs", "fpbv", "bwz")
WIDTH_OF_LIB = {
    'f2clapack': 128, 'sundials-f128': 128, 'cuba': 128, 'fftwq': 128,
    'f2clapack-f64': 64, 'sundials': 64, 'gsl': 64, 'openlibm': 64,
    'blis': 64, 'cxsparse': 64, 'osqp': 64, 'fftw': 64, 'gmp': 64,
    'f2clapack-f32': 32, 'cmsisdsp-f32': 32, 'hdf5-f32': 32,
    'f2clapack-f16': 16, 'sundials-f16': 16, 'cmsisdsp': 16, 'hdf5': 16,
}

print("=== 1. size, and duplication within each stratum ===")
by_arm = collections.defaultdict(list)
for r in rows:
    by_arm[r["arm"]].append(r)
arm_hashes = {}
for a in ARMS:
    hs = [r["hash"] for r in by_arm[a]]
    uniq = set(hs)
    arm_hashes[a] = uniq
    print("  %-6s %7d files  %7d distinct  (%.0f%% duplicates within the arm)"
          % (a, len(hs), len(uniq), 100 * (1 - len(uniq) / max(len(hs), 1))))

print("\n=== 2. overlap across strata (distinct queries) ===")
allh = collections.Counter()
for a in ARMS:
    for h in arm_hashes[a]:
        allh[h] += 1
dist = collections.Counter(allh.values())
total_distinct = len(allh)
print("  union of all four arms: %d distinct queries" % total_distinct)
for k in sorted(dist):
    print("    in exactly %d arm(s): %7d  (%.1f%%)"
          % (k, dist[k], 100 * dist[k] / total_distinct))
shared_all = sum(1 for h, c in allh.items() if c == 4)
print("  shared by all four: %d (%.1f%% of the union)"
      % (shared_all, 100 * shared_all / total_distinct))

print("\n  pairwise overlap (|A n B| / |A u B|):")
print("        " + "".join("%>9s" % a for a in ARMS).replace("%>9s", "%9s") % tuple(ARMS)
      if False else "        " + "".join("%9s" % a for a in ARMS))
for a in ARMS:
    line = "  %-6s" % a
    for b in ARMS:
        inter = len(arm_hashes[a] & arm_hashes[b])
        union = len(arm_hashes[a] | arm_hashes[b])
        line += "%8.1f%%" % (100 * inter / union) if union else "      n/a"
    print(line)

print("\n  queries unique to one arm:")
for a in ARMS:
    others = set()
    for b in ARMS:
        if b != a:
            others |= arm_hashes[b]
    only = arm_hashes[a] - others
    print("    %-6s %7d  (%.1f%% of its own distinct queries)"
          % (a, len(only), 100 * len(only) / max(len(arm_hashes[a]), 1)))

print("\n=== 3. floating-point widths across the corpus ===")
print("  (a query is counted once per width it mentions)")
w_count = collections.Counter()
w_arith = collections.Counter()
seen = set()
for r in rows:
    if r["hash"] in seen:
        continue
    seen.add(r["hash"])
    arith = sum(int(r[k]) for k in ("mul", "div", "sqrt", "fma"))
    for w in r["widths"].split(";"):
        if w and w != "0":
            w_count[int(w)] += 1
            if arith:
                w_arith[int(w)] += 1
print("  %8s %12s %14s" % ("width", "queries", "with fp arith"))
for w in sorted(w_count):
    print("  %8d %12d %14d" % (w, w_count[w], w_arith[w]))
nofp = sum(1 for r in rows if r["widths"] in ("", "0"))
print("  queries mentioning no float at all: %d of %d files" % (nofp, len(rows)))

print("\n=== 4. by library-width group (distinct queries, union) ===")
grp = collections.defaultdict(set)
grp_arith = collections.defaultdict(set)
for r in rows:
    w = WIDTH_OF_LIB.get(r["library"], 0)
    grp[w].add(r["hash"])
    if sum(int(r[k]) for k in ("mul", "div", "sqrt", "fma")):
        grp_arith[w].add(r["hash"])
print("  %8s %12s %16s" % ("build", "distinct", "with fp arith"))
for w in sorted(grp):
    print("  %8s %12d %16d" % ("binary%d" % w if w else "?", len(grp[w]),
                               len(grp_arith[w])))

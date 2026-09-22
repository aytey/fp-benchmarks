#!/usr/bin/env python3
"""Curate the four captured strata into a benchmark set for a three-solver
comparison (STP fp-off, STP fp-on, Bitwuzla).

    curate.py INVENTORY.tsv CAPTURE_DIR OUT_DIR

Four decisions, and why:

* **De-duplicate by canonical hash, within a printer family.** The three STP
  arms share a printer, so the same query captured by two of them is ONE
  benchmark and is kept once, with every arm that produced it recorded as its
  provenance. Bitwuzla's dump is a different printer (`declare-const` and
  `define-fun @defN` where STP inlines), so its hashes are not comparable to
  the STP ones and it stays a family of its own -- a semantically equal query
  may therefore appear once in each family, which is disclosed rather than
  hidden.

* **Cap each driver's contribution.** The abstractable queries are wildly
  concentrated: ten (arm, driver) groups hold 39% of them, and `openlibm/jnf`
  alone contributes ~7,000. Uncapped, the comparison would mostly measure
  three special functions. A cap of 25 per (family, library, driver) brings
  the top ten down to 3% of the set. Within a group the sample is spread
  across the size range rather than taken from the front, because the first
  queries of a driver are its shallow prefixes.

* **Keep every binary128 query.** It is the regime the technique's cost model
  says it wins, and the corpus holds only 1,839 of them; capping that away to
  balance a distribution would remove the experiment.

* **Carry a control group.** Queries with nothing to abstract are where the
  abstraction must be shown to cost nothing, so a stratified sample of them
  is part of the set rather than filtered out. A benchmark made only of
  favourable queries answers a question nobody asked.
"""
import os, sys, csv, shutil, collections, random

INV, CAP_DIR, OUT = sys.argv[1], sys.argv[2], sys.argv[3]
DEF = ("mul", "div", "sqrt", "fma")
ADD = ("add", "sub")
PER_DRIVER_CAP = 25
CONTROL_TARGET = 1500
random.seed(20260903)

rows = list(csv.DictReader(open(INV), delimiter="\t"))
family = lambda arm: "bwz" if arm == "bwz" else "stp"

# hash -> the row we keep, plus every arm that produced it
keep = {}
provenance = collections.defaultdict(set)
for r in rows:
    key = (family(r["arm"]), r["hash"])
    provenance[key].add(r["arm"])
    if key not in keep:
        keep[key] = r

groups = collections.defaultdict(list)      # abstractable, by driver group
quad = []                                   # every binary128 abstractable
control = collections.defaultdict(list)     # nothing to abstract
for (fam, h), r in keep.items():
    ws = [int(x) for x in r["widths"].split(";") if x and x != "0"]
    mw = max(ws) if ws else 0
    n_def = sum(int(r[k]) for k in DEF)
    n_add = sum(int(r[k]) for k in ADD)
    rec = (fam, h, r, mw, n_def, n_add)
    if n_def or n_add:
        if mw == 128:
            quad.append(rec)
        else:
            groups[(fam, r["library"], r["driver"])].append(rec)
    else:
        control[(fam, r["library"])].append(rec)

selected = list(quad)
for g, recs in groups.items():
    if len(recs) <= PER_DRIVER_CAP:
        selected.extend(recs)
        continue
    recs.sort(key=lambda t: int(t[2]["bytes"]))     # spread over the size range
    step = len(recs) / PER_DRIVER_CAP
    selected.extend(recs[int(i * step)] for i in range(PER_DRIVER_CAP))

# control: spread over libraries, proportional but at least a few each
libs = list(control)
per_lib = max(1, CONTROL_TARGET // max(len(libs), 1))
ctrl = []
for k in libs:
    pool = control[k]
    random.shuffle(pool)
    ctrl.extend(pool[:per_lib])
ctrl = ctrl[:CONTROL_TARGET]

os.makedirs(OUT, exist_ok=True)
qdir = os.path.join(OUT, "queries")
os.makedirs(qdir, exist_ok=True)
man = open(os.path.join(OUT, "manifest.tsv"), "w", newline="")
w = csv.writer(man, delimiter="\t")
w.writerow(["file", "group", "family", "provenance", "library", "driver",
            "maxwidth", "bytes", "asserts", "default_ops", "add_sub_ops",
            "hash"])

def emit(recs, group):
    n = 0
    for fam, h, r, mw, nd, na in recs:
        src = os.path.join(CAP_DIR, r["arm"], r["library"], r["driver"],
                           "split", r["file"])
        if not os.path.exists(src):
            continue
        # The arm belongs in the name: split numbering restarts per arm, so
        # q.0068.smt2 exists under `fpabs` AND under `fpbv` as two DIFFERENT
        # queries. Without the arm they collapse onto one filename, the second
        # copy silently overwrites the first, and the manifest ends up with two
        # rows describing one file whose content belongs to only one of them.
        # (arm, library, driver, file) is the source path, so it cannot collide.
        name = "%s.%s.%s.%s.%s.%s" % (group, fam, r["arm"], r["library"],
                                      r["driver"], r["file"])
        name = name.replace("/", "_")
        shutil.copyfile(src, os.path.join(qdir, name))
        w.writerow([name, group, fam,
                    ",".join(sorted(provenance[(fam, h)])), r["library"],
                    r["driver"], mw, r["bytes"], r["asserts"], nd, na, h])
        n += 1
    return n

n_sel = emit(selected, "abstractable")
n_ctl = emit(ctrl, "control")
man.close()
print("curated: %d abstractable + %d control = %d queries"
      % (n_sel, n_ctl, n_sel + n_ctl))

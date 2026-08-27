#!/usr/bin/env python3
"""Cluster functions by assembly SIMILARITY, so the queue can deduplicate
work that `shape_hash` cannot see.

WHY THIS EXISTS, AND WHAT IT ADDS OVER shape_index.py. `twins.fingerprint()`
is an md5 of normalised instructions -- an EXACT hash. Two functions whose
assembly differs by even one instruction land in different groups, however
obviously they are the same problem. Measured on this corpus:

    exact (shape_hash)   242 groups,   735 functions,   493 avoidable searches
    fuzzy (this tool)    385 clusters, 1449 functions, 1064 avoidable searches

**+571 avoidable searches** over what shape_hash already gives us. That is the
whole point of this file. With 12 permuter slots against a queue thousands
deep, a redundant search is the scarcest thing in the factory.

The approach is the one ethteck/coddog uses (bounded similarity over opcode
sequences); the specific numbers above are this project's own measurement, not
coddog's.

DEDUPLICATION ONLY -- THIS IS THE LOAD-BEARING SAFETY PROPERTY. shape_hash
members differ *only* in immediates and symbol names, which is exactly why
`twins.propagate()` can mechanically generate one member's C from another's
and `validator.propagate_to_twins()` is sound. Cluster members differ
STRUCTURALLY: same overall shape, but a genuinely different instruction here
and there. **No substitution between them is valid.** This column must never
be used to generate a candidate, only to defer a redundant search. Nothing is
dropped either way -- a deferred function is claimable again the moment the
slot frees.

WHY CLUSTERS ARE STAR-SHAPED, NOT TRANSITIVE. The obvious implementation is
union-find: link every pair above the threshold and take connected components.
That was tried first, and it produces chains -- A~B and B~C both above
threshold while A~C is not. Clique-checking its five largest clusters found
100%/99% pairwise similarity in two of them and **59%/47%/54%** in the other
three: those three are chains, and their members are NOT all the same problem.

So this tool assigns every member against a single representative instead,
which guarantees every member is within the threshold of a common centre.
Re-measuring the same way on the star-shaped clusters this produces:

    size 47: 98.0%   size 47: 100%   size 43: 100%
    size 41:  100%   size 34: 95.3%  size 28:  86.7%

-- genuine cliques, against union-find's 47-59% on the same corpus. Note this
is a stronger property than the construction alone guarantees: every member is
within THRESHOLD of the *representative* by definition, but member-to-member
similarity is measured, not implied, and it holds.

    python3 tools/factory/cluster_index.py             # report
    python3 tools/factory/cluster_index.py --apply     # store cluster_id
"""
from __future__ import annotations

import argparse
import collections
import hashlib
import re
import sys
from difflib import SequenceMatcher
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402

FRAG = gitops.REPO / "asm" / "nonmatching"

# Similarity at or above which two functions count as the same problem.
# 0.90 is where the measurement above was taken.
THRESHOLD = 0.90

# Functions outside this range are skipped: below it there is not enough
# structure for a similarity number to mean anything (and tiny functions are
# cheap to search anyway), above it the pairwise comparison gets expensive
# for vanishingly few candidates.
MIN_INSTRS, MAX_INSTRS = 4, 600

# An assembly line's mnemonic. Leading-dot directives (.syntax, .text,
# .thumb_func_start, ...) are not instructions and must not count.
INSTR = re.compile(r"^\s+(?!\.)(\w+)")


def opcodes(text: str) -> tuple[str, ...]:
    """The function's opcode sequence, operands discarded.

    Operands are dropped on purpose. Registers and immediates are exactly
    what differs between two functions doing the same job, and what
    `twins.fingerprint()` already normalises away for its own hash.
    """
    return tuple(m.group(1) for m in
                 (INSTR.match(l) for l in text.splitlines()) if m)


def similarity(a: tuple[str, ...], b: tuple[str, ...]) -> float:
    """Ratio in [0,1]. Cheap rejects first -- real_quick_ratio and
    quick_ratio are upper bounds, so a value below the threshold means
    ratio() cannot reach it either and does not need computing."""
    sm = SequenceMatcher(None, a, b, autojunk=False)
    if sm.real_quick_ratio() < THRESHOLD or sm.quick_ratio() < THRESHOLD:
        return 0.0
    return sm.ratio()


def build_clusters(seqs: dict[str, tuple[str, ...]]) -> dict[str, str]:
    """-> {function name: cluster_id}, only for functions in a 2+ cluster.

    Greedy star-shaped assignment: take the longest unassigned function as a
    representative, sweep every other unassigned function against it, and
    assign those within THRESHOLD. Longest-first is deliberate -- a big
    function is the more informative centre, and it keeps a short one from
    capturing a cluster it only marginally belongs to.
    """
    # Length bucketing: ratio() cannot reach THRESHOLD if the lengths differ
    # by more than that factor, so those pairs need never be compared.
    by_len: dict[int, list[str]] = collections.defaultdict(list)
    for n, s in seqs.items():
        by_len[len(s)].append(n)
    lengths = sorted(by_len)

    # Opcode multiset overlap is an upper bound on ratio() and is far cheaper,
    # so it rejects most pairs before SequenceMatcher is ever constructed.
    sigs = {n: collections.Counter(s) for n, s in seqs.items()}

    assigned: dict[str, str] = {}
    members: dict[str, list[str]] = {}
    for rep in sorted(seqs, key=lambda n: (-len(seqs[n]), n)):
        if rep in assigned:
            continue
        la = len(seqs[rep])
        lo, hi = int(la * THRESHOLD), int(la / THRESHOLD) + 1
        found = []
        for L in lengths:
            if not (lo <= L <= hi):
                continue
            for cand in by_len[L]:
                if cand == rep or cand in assigned:
                    continue
                lb = len(seqs[cand])
                inter = sum((sigs[rep] & sigs[cand]).values())
                if 2 * inter / (la + lb) < THRESHOLD:
                    continue
                if similarity(seqs[rep], seqs[cand]) >= THRESHOLD:
                    found.append(cand)
        if found:
            cid = hashlib.md5(rep.encode()).hexdigest()[:12]
            assigned[rep] = cid
            members[cid] = [rep]
            for c in found:
                assigned[c] = cid
                members[cid].append(c)
    return assigned


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    args = ap.parse_args()

    conn = db.connect(readonly=not args.apply)
    states = {n: s for n, s in conn.execute("SELECT name, state FROM functions")}

    seqs: dict[str, tuple[str, ...]] = {}
    for p in sorted(FRAG.glob("*.s")):
        if states.get(p.stem) in ("matched", "excluded"):
            continue
        try:
            o = opcodes(p.read_text(errors="ignore"))
        except Exception:
            continue
        if MIN_INSTRS <= len(o) <= MAX_INSTRS:
            seqs[p.stem] = o

    if not seqs:
        # Never a verdict from zero observations.
        print("no unmatched fragments in range -- nothing measured, no verdict",
              file=sys.stderr)
        return 2

    assigned = build_clusters(seqs)
    by_cluster: dict[str, list[str]] = collections.defaultdict(list)
    for n, cid in assigned.items():
        by_cluster[cid].append(n)

    avoidable = sum(len(v) - 1 for v in by_cluster.values())
    print(f"unmatched fragments considered: {len(seqs)}")
    print(f"  clusters (2+ members)       : {len(by_cluster)}")
    print(f"  functions in them           : {len(assigned)} "
          f"({100 * len(assigned) / len(seqs):.1f}%)")
    print(f"  redundant searches avoidable: {avoidable}")
    if by_cluster:
        sizes = collections.Counter(len(v) for v in by_cluster.values())
        print("  cluster sizes:", ", ".join(f"{k}x{v}" for k, v in sorted(sizes.items())))
        print("\n  largest:")
        for cid, v in sorted(by_cluster.items(), key=lambda kv: -len(kv[1]))[:8]:
            print(f"    {len(v):3d}  {cid}  {', '.join(sorted(v)[:5])}"
                  + (" ..." if len(v) > 5 else ""))

    if not args.apply:
        print("\npass --apply to store cluster_id.")
        return 0

    with db.tx(conn):
        # Clear first: a function that has since matched, or drifted out of a
        # cluster as fragments changed, must not keep a stale id that would go
        # on suppressing its claims forever.
        conn.execute("UPDATE functions SET cluster_id = NULL")
        for name, cid in assigned.items():
            conn.execute("UPDATE functions SET cluster_id=? WHERE name=?", (cid, name))
    print(f"\nstored cluster_id for {len(assigned)} function(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

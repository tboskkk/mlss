#!/usr/bin/env python3
"""Cache each function's structural shape so the queue can deduplicate.

`twins.fingerprint()` hashes a function's retail assembly with immediates,
labels and symbol names normalised away, so two functions that differ only in
constants share a hash. `twins.py` has described deduplication as its exploit
#1 since it was written, and nothing ever consumed it -- because computing the
hash means reading every fragment off disk, which tier2 cannot do per claim.

Measured on the live pool: 254 structural groups hold 785 unmatched functions.
Searching each member separately is 531 redundant permuter searches on what is
really 254 distinct problems -- and with 12 slots against a queue thousands
deep, a wasted slot is the scarcest thing in the factory.

Storing the hash lets tier2 skip a function whose twin is ALREADY being
searched. That is pure waste elimination with no risk attached: if the twin
converges, validator.propagate_to_twins() hands this function the same C for
free, and if it does not, this one is claimable again the moment the slot
frees.

Idempotent and cheap to re-run; do so after a batch of extractions, since
split_func.py adds fragments continuously.

    python3 tools/factory/shape_index.py            # report
    python3 tools/factory/shape_index.py --apply
"""
from __future__ import annotations

import argparse
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import twins  # noqa: E402

FRAG = gitops.REPO / "asm" / "nonmatching"


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    args = ap.parse_args()

    conn = db.connect(readonly=not args.apply)
    states = {n: s for n, s in conn.execute("SELECT name, state FROM functions")}

    shapes: dict[str, str] = {}
    for p in sorted(FRAG.glob("*.s")):
        try:
            h, n = twins.fingerprint(p.read_text(errors="ignore"))
        except Exception:
            continue
        if n:
            shapes[p.stem] = h

    groups = defaultdict(list)
    for name, h in shapes.items():
        if states.get(name) not in ("matched", "excluded"):
            groups[h].append(name)
    dup = {h: v for h, v in groups.items() if len(v) > 1}
    redundant = sum(len(v) - 1 for v in dup.values())

    print(f"fragments fingerprinted: {len(shapes)}")
    print(f"  structural groups with >1 unmatched member: {len(dup)}")
    print(f"  unmatched functions in them: {sum(len(v) for v in dup.values())}")
    print(f"  redundant searches avoidable: {redundant}")
    sizes = Counter(len(v) for v in dup.values())
    print("  group sizes:", ", ".join(f"{k}x{v}" for k, v in sorted(sizes.items())))

    if not args.apply:
        print("\npass --apply to store the hashes.")
        return 0

    with db.tx(conn):
        for name, h in shapes.items():
            conn.execute("UPDATE functions SET shape_hash=? WHERE name=?", (h, name))
    print(f"\nstored shape_hash for {len(shapes)} function(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

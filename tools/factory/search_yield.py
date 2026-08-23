#!/usr/bin/env python3
"""Live-search convergence, with harvested backlog EXCLUDED.

WHY IT IS SEPARATE FROM health.py's number. `converged` events are emitted by
two very different things: tier2 finishing a real permuter search, and
`rescue_isolated_zeros.py` replaying a win that was already sitting on disk.
Both are good, but only the first says anything about whether the SEARCH is
working -- and a rescue run drowns the other out completely.

Measured while exactly that was happening: 21 converged in an hour looked like
a 5x improvement from the iso_score re-ranking (T.13). 17 of the 21 carried
`candidate_source = "permuter"`, which is what the rescue sets. The live search
had produced 4. Reporting the 21 would have credited a scheduling change with a
backlog drain -- the same attribution error CLAUDE.md keeps recording.

So this splits by `candidate_source`: `tier2` is a live search, `permuter` is a
replayed win, everything else is a deterministic seed that never searched.

    python3 tools/factory/search_yield.py [--hours 3]

Read-only: one query, no builds, no repo lock.
"""
from __future__ import annotations

import argparse
import sys
import time
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402

LIVE = "tier2"


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--hours", type=float, default=3.0)
    args = ap.parse_args()
    conn = db.connect(readonly=True)
    since = time.time() - args.hours * 3600

    launches = conn.execute(
        "SELECT COUNT(*) FROM events WHERE kind='t2_launch' AND ts>?", (since,)).fetchone()[0]
    conv = [r[0] for r in conn.execute(
        "SELECT function_name FROM events WHERE kind='converged' AND ts>?", (since,))]
    src = Counter()
    if conv:
        q = ",".join("?" * len(conv))
        for r in conn.execute(
                f"SELECT candidate_source FROM functions WHERE name IN ({q})", conv):
            src[r[0] or "unknown"] += 1

    live = src.get(LIVE, 0)
    print(f"window: last {args.hours:g}h")
    print(f"  permuter searches launched : {launches}")
    print(f"  converged, LIVE SEARCH     : {live}")
    for k, v in src.most_common():
        if k != LIVE:
            print(f"  converged, {k:<16}: {v}   (not a live search)")
    # A yield printed from a handful of launches is noise wearing a decimal
    # point. At the 15.6% baseline you need on the order of 100 launches before
    # the number distinguishes "the search got worse" from an ordinary quiet
    # stretch -- over 32 launches the baseline itself predicts about 5, and
    # seeing 1 means nothing. This project has repeatedly acted on numbers that
    # small, so the tool refuses rather than inviting it.
    MIN_LAUNCHES = 100
    if not launches:
        print("\n  no launches in the window -- no verdict")
    elif launches < MIN_LAUNCHES:
        print(f"\n  {live} live convergence(s) in {launches} launch(es) -- "
              f"NOT ENOUGH TO STATE A YIELD.")
        print(f"  Needs >= {MIN_LAUNCHES} launches; at the 15.6% baseline this "
              f"window would predict ~{0.156*launches:.0f}.")
    else:
        print(f"\n  live search yield: {100*live/launches:.1f}%   "
              f"(CLAUDE.md baseline 15.6%, n={launches})")
    if src.get("permuter"):
        print("\n  NOTE: a rescue/harvest run is inflating the raw converged count.")
        print("  Only the LIVE SEARCH line speaks to whether the search is working.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

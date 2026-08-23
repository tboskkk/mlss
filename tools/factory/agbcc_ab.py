#!/usr/bin/env python3
"""Did the [agbcc] permuter profile actually help? Randomised A/B, read-only.

WHY THIS EXISTS. `tools/permuter_patches/` adds an `[agbcc]` randomization
profile to decomp-permuter, because upstream ships none for ARM and this
project was running `compiler_type = "gcc"` -- a profile whose own comment says
its passes "were originally written with IDO in mind". Roughly 6,300 searches
had run MIPS-derived weights against ARM/Thumb code.

The weight deltas are each justified (Klonoa's ablations, or a census of our
own candidate bodies), but justified is not measured, and this project's entire
history says the difference matters. Weights cannot affect CORRECTNESS -- only
how fast a search finds an answer -- so the risk is bounded, but "bounded risk"
is not evidence of benefit either.

THE SETUP. `tools/permute.py` regenerates a function's `nonmatchings/<name>/`
directory on isolation, so only newly-isolated functions picked up the new
profile: 85 of 2,952 dirs, about 3%. That is too little to matter and too
little to measure. So the remaining 2,867 were split at random, seeded, half
flipped to `agbcc` and half left on `gcc`, with the assignment recorded in
`.claude/factory/agbcc_ab.json`.

Both arms then run concurrently in the same pool, on the same machine, under
the same scheduler, competing for the same cores. That controls for everything
this project has previously been fooled by -- time of day, queue composition,
which other repairs happened to land -- because both arms experience all of it
equally.

WHAT TO LOOK AT. Convergence per launch, per arm. `t2_launch` counts searches
started; `converged` counts searches that reached score 0. CLAUDE.md section F
establishes that pair as the diagnostic that distinguishes "the search is
failing" from "something downstream is discarding results", and it is the right
pair here too.

READ IT HONESTLY. A difference of a few points on a few hundred launches is
noise. The baseline this is measured against is CLAUDE.md's 15.6% (1,780
launches -> 278 converged over 24h), and a real effect should be visible as a
gap between the arms rather than against that historical number, which was
taken under a different pipeline.

    python3 tools/factory/agbcc_ab.py

Strictly read-only: one query against the events table, no builds, no repo
lock. Safe against a live factory.
"""
from __future__ import annotations

import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402

ASSIGN = Path(__file__).resolve().parent.parent.parent / ".claude" / "factory" / "agbcc_ab.json"


def main() -> int:
    if not ASSIGN.exists():
        print(f"no assignment file at {ASSIGN} -- the A/B was never set up")
        return 1
    assign = json.loads(ASSIGN.read_text())
    arms = {name: set(members) for name, members in assign.items()}

    conn = db.connect(readonly=True)
    start = conn.execute(
        "SELECT MIN(ts) FROM events WHERE kind = 'requeued_stale_seed'").fetchone()[0]
    # Only events since the split; anything earlier predates the assignment.
    cut = ASSIGN.stat().st_mtime

    rows = conn.execute(
        "SELECT function_name, kind FROM events "
        "WHERE ts >= ? AND kind IN ('t2_launch','converged','state:matched')",
        (cut,)).fetchall()

    tally = {a: {"t2_launch": 0, "converged": 0, "state:matched": 0} for a in arms}
    for fn, kind in rows:
        for a, members in arms.items():
            if fn in members:
                tally[a][kind] += 1
                break

    print(f"events since the split ({len(rows)} total)\n")
    print(f"{'arm':<10}{'searches':>10}{'converged':>11}{'matched':>9}{'yield':>9}")
    for a in ("agbcc", "gcc"):
        t = tally.get(a)
        if t is None:
            continue
        n = t["t2_launch"]
        y = (100.0 * t["converged"] / n) if n else 0.0
        print(f"  {a:<8}{n:>10}{t['converged']:>11}{t['state:matched']:>9}{y:>8.1f}%")

    # A two-proportion z-test, because printing two percentages side by side
    # invites reading a gap that is not there. The first run of this tool
    # showed 9.1% vs 13.3% and looked like a verdict; it is about ONE standard
    # error, p ~= 0.3. Stating that plainly is the whole point -- this project
    # has repeatedly acted on numbers that were really noise.
    import math
    a, b = tally["agbcc"], tally["gcc"]
    na, nb = a["t2_launch"], b["t2_launch"]
    print()
    if min(na, nb) < 30:
        print(f"NOT CONCLUSIVE -- smaller arm has {min(na, nb)} search(es). Keep waiting.")
        return 0
    pa, pb = a["converged"] / na, b["converged"] / nb
    pool = (a["converged"] + b["converged"]) / (na + nb)
    se = math.sqrt(pool * (1 - pool) * (1 / na + 1 / nb))
    z = (pa - pb) / se if se else 0.0
    # Two-sided p from the normal CDF, via erfc -- no scipy in this container.
    pval = math.erfc(abs(z) / math.sqrt(2))
    print(f"difference {100*(pa-pb):+.1f} points, z = {z:+.2f}, p = {pval:.2f}")
    if pval > 0.05:
        print("NOT DISTINGUISHABLE FROM NOISE. Do not act on the direction; the")
        print("arms need several hundred more launches each before this decides")
        print("anything. Leaving the profile in place costs nothing meanwhile,")
        print("because weights affect only search speed, never correctness.")
    elif pa > pb:
        print("The agbcc profile is measurably BETTER. Keep it.")
    else:
        print("The agbcc profile is measurably WORSE. Revert it:")
        print("  git revert the [agbcc] profile commit, and set")
        print("  compiler_type back to \"gcc\" in permuter_settings.toml.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

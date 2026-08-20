#!/usr/bin/env python3
"""Re-attempt extraction for needs_human rows that have no fragment on
disk at all -- these are not "hard functions a human should look at", they
are collateral damage from an unrelated bug.

Root cause: `gitops.revert_to_clean()` runs `git clean -fd` scoped to
FACTORY_PATHS (asm/, src/, ...) when a validator rejects some OTHER
candidate. That's correct for cleaning up the REJECTED candidate's own
splice -- but `split_func.py` extraction creates its `asm/nonmatching/
<name>.s` fragment and the matching src/*.c guard block as UNCOMMITTED
files/edits. Nothing protects those from a `git clean -fd`/`git checkout
--` triggered by a completely different function's validation failing in
between this function's extraction and its own next commit. Confirmed
live: 144 of ~180 needs_human rows carry the note "tier2: couldn't
isolate for permuter" (implying a fragment DID exist at some point) but
have neither a fragment nor a guard block right now.

The fix here is just: try extraction again. It was never actually
impossible for these functions -- split_func.py succeeds immediately on
retry (verified on reset_game_80189C4, the first one checked by hand). On
success the row goes back to `needs_attempt`, a clean hand-off to the
normal pipeline (tier_m2c tries it fresh, tier3 as fallback).

This tool only recovers what was ALREADY lost. The actual hole is now
closed at the source: tier1.py, tier3.py's ensure_extracted(), and this
tool's own try_reextract() below all commit an extraction immediately,
still under the repo lock, instead of leaving it uncommitted until a
match. `git checkout`/`git clean` in a later, unrelated revert can only
ever touch UNCOMMITTED files -- so a committed extraction is no longer
reachable by this bug at all, regardless of how long it sits before (or
without ever) matching. This tool stays useful for two reasons: recovering
the ~170 functions this already happened to before the fix landed, and as
a safety net for the small window that still exists (rare -- e.g. a
process killed between `split_func.py` succeeding and the commit call).

Usage:
    python3 tools/factory/reclaim_extraction.py [--limit N] [--dry-run]
"""
from __future__ import annotations

import argparse
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402


def missing_fragment_rows(conn) -> list[str]:
    rows = conn.execute(
        "SELECT name FROM functions WHERE state = 'needs_human' ORDER BY lines ASC"
    ).fetchall()
    return [r["name"] for r in rows
            if not (gitops.REPO / "asm" / "nonmatching" / f"{r['name']}.s").exists()]


def try_reextract(name: str) -> tuple[bool, str]:
    """-> (succeeded, detail). Serialized under the repo lock like every
    other repo-mutating step -- this races against the live pipeline's own
    extractions/reverts exactly like any other factory process would."""
    with gitops.repo_lock(what=f"reclaim extract {name}"):
        r = gitops.run(["./container.sh", "tools/split_func.py", name])
        if r.returncode != 0:
            return False, (r.stdout + r.stderr).strip()[-300:]
        build = gitops.run(["./container.sh", "make"])
        if build.returncode != 0:
            # Extraction landed but broke the build -- revert everything
            # this touched rather than leave a half-extracted function
            # behind for the NEXT run to trip over.
            gitops.revert_to_clean()
            return False, "extraction succeeded but ./container.sh make failed afterward"
        gitops.refresh_expected()
        # Commit immediately, still under the lock -- this IS the fix for
        # the bug this whole tool exists to recover from (see gitops.py's
        # commit() call sites in tier1.py/tier3.py for the full story).
        # Re-losing a just-recovered extraction to the same bug on the
        # very next unrelated revert would be a fittingly embarrassing way
        # to fail.
        gitops.commit(name, f"Extract {name}\n\nFactory pipeline (tools/factory) -- "
                             f"re-extraction via reclaim_extraction.py, not yet matched.")
        return True, "re-extracted"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=None)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    conn = db.connect()
    names = missing_fragment_rows(conn)
    if args.limit:
        names = names[: args.limit]
    print(f"{len(names)} needs_human row(s) with no fragment on disk"
          f"{' (dry run)' if args.dry_run else ''}\n")

    recovered, still_stuck = 0, 0
    t0 = time.time()
    for i, name in enumerate(names, 1):
        if args.dry_run:
            print(f"  [{i}/{len(names)}] {name}: (dry run, not attempting)")
            continue
        ok, detail = try_reextract(name)
        if ok:
            recovered += 1
            with db.tx(conn):
                db.set_state(conn, name, "needs_attempt", worker_id=None,
                             notes="re-extracted by reclaim_extraction.py after the fragment "
                                    "was lost to an unrelated validator revert")
            db.log_event(conn, name, "reclaimed", "re-extraction succeeded")
            conn.commit()
            print(f"  [{i}/{len(names)}] {name}: RECOVERED")
        else:
            still_stuck += 1
            print(f"  [{i}/{len(names)}] {name}: still stuck -- {detail}")

    conn.close()
    print(f"\n{recovered} recovered, {still_stuck} still genuinely stuck, "
          f"{time.time()-t0:.0f}s")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Re-check functions parked in needs_human / stalled for candidates that
actually DO match, and hand them back to the validator.

Why this exists: the pipeline has thrown away confirmed-correct work more
than once, always for the same reason -- a verification step returned
"no" when it should have returned "don't know". The worst case was
`asm_differ_matches` treating an unreadable asm-differ verdict as a
mismatch: a decomp-permuter search that genuinely reached SCORE 0 (which
is byte-perfect C, definitionally correct) was demoted to stalled, and
re-checking the identical candidate by hand afterwards returned a clean
match. Three such candidates were found in a single sweep of the permuter
output directories; two validated and committed immediately.

So the parked queues are not purely "hard functions" -- they contain real
wins lost to transient failures. This re-checks them cheaply.

Two sources of candidates, both already on disk:
  * `candidate_body` in the DB (from tier1/tier3/tier2)
  * `nonmatchings/<fn>/output-0-*/source.c` -- a permuter score-0 win,
    the strongest possible evidence, which is why it is preferred.

SAFE TO RUN WHILE THE FACTORY IS LIVE: every splice+verify happens under
gitops.repo_lock(), the same mutex the tiers use, and a candidate that
does not verify has its file reverted immediately so nothing is left
half-applied.

Usage:
    python3 tools/factory/recover.py [--states needs_human stalled] [--limit N] [--dry-run]
"""
from __future__ import annotations

import argparse
import glob
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import tier2  # noqa: E402


def permuter_win(name: str) -> str | None:
    """A score-0 source the permuter already produced, if any."""
    hits = sorted(glob.glob(f"nonmatchings/{name}/output-0-*/source.c"))
    if not hits:
        return None
    return tier2.trim_source(Path(hits[0]).read_text(), name)


def candidates_for(conn, name: str) -> list[tuple[str, str]]:
    """(source_label, body) worth trying, strongest evidence first."""
    out = []
    win = permuter_win(name)
    if win:
        out.append(("permuter score-0", win))
    row = conn.execute("SELECT candidate_body FROM functions WHERE name = ?", (name,)).fetchone()
    if row and row["candidate_body"] and row["candidate_body"] != win:
        out.append(("stored candidate", row["candidate_body"]))
    return out


def recheck(conn, name: str, dry_run: bool) -> str | None:
    """-> label of the candidate that verified, or None."""
    for label, body in candidates_for(conn, name):
        with gitops.repo_lock(what=f"recover {name}"):
            c_path = gitops.splice_into_else(name, body)
            if c_path is None:
                continue
            ok = gitops.asm_differ_matches(name)
            if not ok:
                # Never leave a non-verifying candidate applied.
                gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])
                continue
            if dry_run:
                gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])
                return label
        with db.tx(conn):
            db.set_state(conn, name, "validating", worker_id=None,
                         candidate_body=body, candidate_source="tier2",
                         notes=f"recovered by recover.py from {label}")
        db.log_event(conn, name, "converged", f"score=0 (recovered: {label})")
        conn.commit()
        return label
    return None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--states", nargs="*", default=["needs_human", "stalled"])
    ap.add_argument("--limit", type=int, default=None)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    conn = db.connect()
    q = ",".join("?" for _ in args.states)
    rows = conn.execute(
        f"SELECT name FROM functions WHERE state IN ({q}) ORDER BY lines ASC", args.states
    ).fetchall()
    names = [r["name"] for r in rows]
    if args.limit:
        names = names[: args.limit]
    print(f"re-checking {len(names)} parked function(s) from {args.states}"
          f"{' (dry run)' if args.dry_run else ''}\n")

    found = []
    for i, name in enumerate(names, 1):
        try:
            label = recheck(conn, name, args.dry_run)
        except Exception as e:
            print(f"  [{i}/{len(names)}] {name}: error {e}")
            continue
        if label:
            found.append(name)
            print(f"  [{i}/{len(names)}] {name}: RECOVERED via {label}")
        elif i % 25 == 0:
            print(f"  ...{i}/{len(names)} checked, {len(found)} recovered so far")

    print(f"\n{len(found)} recovered: {found}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

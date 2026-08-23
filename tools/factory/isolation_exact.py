#!/usr/bin/env python3
"""Find candidates that ALREADY compile to retail, by measuring one symbol alone.

WHY THIS EXISTS. Every score this project stores was measured by building the
candidate inside its real translation unit and diffing whole OBJECTS. CLAUDE.md
N.4a showed that number tracks position-in-file more than code quality (same
code, 76x the score, purely from how many functions follow it), and sections
D/I/M/P showed the same build mode discards finished work outright when a
sibling's draft is broken.

Measuring ONE function ALONE removes both problems at once. There is no
translation unit to poison and no trailing content to diff against:

    retail    = assemble asm/nonmatching/<name>.s              -> .text + relocs
    candidate = preprocessed context + candidate_body -> agbcc -> .text + relocs

If those are equal, the C compiles to retail bytes. That is not a score, it is
an answer.

MEASURED, on the first 58 high-score rows tried: **7 were byte-exact**, with
stored scores of 50,000 to 101,400 -- squarely inside the band CLAUDE.md
section R describes as never converting. One of them, sub_806C8C0, is
instruction-for-instruction identical to retail and had been rejected on every
single attempt; it matched within minutes once the splice-path declaration
repairs landed.

WHAT THIS IS NOT. Byte-exact in isolation does not prove the candidate matches
in its real file -- agbcc's codegen is coupled across a translation unit (the
Klonoa decomp measured a byte-identical edit changing a different function
1,833 lines further down the same .c). So this tool ROUTES to the validator; it
never promotes. finish_match()'s from-scratch build plus ROM sha1 remains the
only verdict, exactly as before.

SAFETY. The repo is mounted read-only and all work happens in a scratch dir, so
this needs no gitops.repo_lock() and cannot race a live factory. --apply
touches only the DB.

    python3 tools/factory/isolation_exact.py --limit 200
    python3 tools/factory/isolation_exact.py --limit 200 --apply
    SCRATCH=/some/fast/dir python3 tools/factory/isolation_exact.py --limit 500
"""
from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import compiler_variants as cv  # noqa: E402
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

# One variant only. compiler_variants.py settled the question of whether this
# ROM has more than one agbcc configuration (it does not -- CLAUDE.md T.5), so
# testing four here would quadruple the cost for nothing.
ONE = {"agbcc": ("agbcc", [])}

CLAIMABLE = ("tier2_ready", "stalled", "needs_human")


def pick(conn, args):
    if args.names:
        q = ",".join("?" * len(args.names))
        return conn.execute(
            f"SELECT name, candidate_body, best_score, lines, state FROM functions "
            f"WHERE name IN ({q}) AND candidate_body IS NOT NULL", args.names).fetchall()
    states = ",".join("?" * len(CLAIMABLE))
    return conn.execute(
        f"SELECT name, candidate_body, best_score, lines, state FROM functions "
        f"WHERE state IN ({states}) AND worker_id IS NULL "
        f"AND candidate_body IS NOT NULL "
        f"AND candidate_body NOT LIKE '%M2C_ERROR%' "
        f"ORDER BY COALESCE(lines, 9999) ASC LIMIT ?",
        (*CLAIMABLE, args.limit)).fetchall()


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--limit", type=int, default=200)
    ap.add_argument("--names", nargs="*")
    ap.add_argument("--apply", action="store_true",
                    help="route byte-exact rows to `validating` (the validator "
                         "still runs the from-scratch gate)")
    ap.add_argument("--keep", action="store_true")
    ap.add_argument("--loop", type=float, default=0, metavar="SECONDS",
                    help="run continuously, sweeping every SECONDS (implies --apply)")
    args = ap.parse_args()

    # Loop mode exists because this tool feeds an AUTOMATED queue while being a
    # MANUAL tool, and the mismatch quietly wasted most of the search capacity.
    #
    # tier_m2c clears iso_score whenever it writes a new seed (it must -- a
    # score measured on a body the row no longer has is worse than none), and
    # it produces seeds continuously as it drains the unseeded backlog. So the
    # ranking data goes stale as fast as it is generated. Measured: 2,254 of
    # 2,508 queued rows (90%) had no score, and over one 3h window 210 of 336
    # searches went to unscored rows and produced ONE convergence -- 63% of the
    # pool's capacity spent on rows nobody had measured yet.
    #
    # A full sweep is ~75s at ~2,000 rows/min, so refreshing every few minutes
    # costs almost nothing and keeps tier2 ranking on current data.
    if args.loop:
        args.apply = True

    ctx = m2c_bridge.ensure_context()
    if ctx is None:
        print("could not build the preprocessed context", file=sys.stderr)
        return 1

    conn = db.connect(readonly=not args.apply)
    rows = pick(conn, args)
    if not rows:
        print("nothing to test with those filters")
        return 0

    work = Path(os.environ.get("SCRATCH", "/tmp")) / f"isoexact.{os.getpid()}"
    work.mkdir(parents=True, exist_ok=True)
    t0 = time.time()
    try:
        # strict=False: this sweeps the whole claimable pool, and a row whose
        # function matched between the query and here legitimately has no
        # fragment left. stage() reports the loss rather than hiding it.
        staged = cv.stage(rows, work, ctx, strict=False)
        (work / "names.txt").write_text("\n".join(staged) + "\n")
        (work / "variants.txt").write_text("agbcc agbcc \n")
        print(f"testing {len(staged)} candidate(s) in isolation")

        script = cv.SCRIPT.replace("@@FLAGS@@", " ".join(cv.BASE_FLAGS))
        subprocess.run(
            ["podman", "run", "--rm",
             "-v", f"{gitops.REPO}:/workspace:ro", "-v", f"{work}:/w:Z",
             cv.IMAGE, "bash", "-c", script],
            capture_output=True, text=True, timeout=7200)

        scored, exact = 0, []
        measured: dict[str, int] = {}
        for name in staged:
            d = cv.distance(work / f"{name}.agbcc.bin", work / f"{name}.retail.bin",
                            work / f"{name}.agbcc.rel", work / f"{name}.retail.rel")
            if d is None:
                continue
            scored += 1
            diff, _dlen, rel = d
            measured[name] = diff
            if diff == 0 and rel:
                exact.append(name)

        dt = time.time() - t0
        if not scored:
            # Never a verdict from zero observations -- the failure mode this
            # project has hit repeatedly, and that this very tool shipped once.
            print("\nNOTHING WAS MEASURED -- no verdict. Re-run with --keep and "
                  "read *.retail.err / *.cc.err in the scratch dir.")
            return 2

        by = {r["name"]: r for r in rows}
        print(f"\nmeasured {scored} of {len(staged)} in {dt:.0f}s "
              f"({scored / max(dt, 1) * 60:.0f}/min)")
        print(f"BYTE-EXACT in isolation: {len(exact)}  ({100 * len(exact) / scored:.1f}%)")
        if exact:
            print(f"\n  {'function':<20}{'state':<14}{'stored score':>13}")
            for n in exact[:40]:
                r = by[n]
                print(f"  {n:<20}{r['state']:<14}{str(r['best_score']):>13}")
            if len(exact) > 40:
                print(f"  ... and {len(exact) - 40} more")

        if args.apply and measured:
            # Record the distance for EVERY measured candidate, not just the
            # exact ones. This is the artifact-free number the queue should be
            # ranked by: best_score is an asm-differ score taken inside the
            # shared translation unit, which N.4a showed tracks position in
            # file more than code quality, and which is NULL for most rows
            # because that build frequently cannot produce a number at all.
            with db.tx(conn):
                for n, dv in measured.items():
                    conn.execute("UPDATE functions SET iso_score = ? WHERE name = ?",
                                 (dv, n))
            print(f"recorded iso_score for {len(measured)} candidate(s)")

        if exact and args.apply:
            routed = 0
            for n in exact:
                r = conn.execute("SELECT state, worker_id FROM functions WHERE name=?",
                                 (n,)).fetchone()
                if r["worker_id"] is not None or r["state"] not in CLAIMABLE:
                    continue
                with db.tx(conn):
                    db.set_state(conn, n, "validating", worker_id=None,
                                 escalation_count=0,
                                 notes="byte-exact in isolation (isolation_exact.py); "
                                       "from-scratch gate still decides")
                    db.log_event(conn, n, "isolation_exact", "routed to the validator")
                routed += 1
            print(f"\nrouted {routed} row(s) to validating.")
        elif exact:
            print("\npass --apply to route these to the validator.")
        return 0
    finally:
        if args.keep:
            print(f"\nscratch kept at {work}")
        else:
            shutil.rmtree(work, ignore_errors=True)


def loop(interval: float) -> int:
    while True:
        try:
            main()
        except Exception as e:                     # never let one sweep kill the worker
            print(f"sweep failed: {type(e).__name__}: {e}", flush=True)
        time.sleep(interval)


if __name__ == "__main__":
    _argv = sys.argv[1:]
    if "--loop" in _argv:
        _iv = float(_argv[_argv.index("--loop") + 1])
        sys.argv = [a for i, a in enumerate(sys.argv)
                    if a != "--loop" and (i == 0 or sys.argv[i - 1] != "--loop")]
        sys.argv.append("--apply")
        raise SystemExit(loop(_iv))
    raise SystemExit(main())

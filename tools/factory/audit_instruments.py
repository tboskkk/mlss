#!/usr/bin/env python3
"""Audit the factory's MEASUREMENTS, not its throughput.

    python3 tools/factory/audit_instruments.py [--sample N]

WHY THIS EXISTS. Every large recovery this project has made came from finding
that a check was wrong, not that the code was hard - CLAUDE.md sections F, I,
M, N, P, Q and R are all the same shape, and each one read as "the rest is
genuinely difficult" until somebody looked. The count is now around ten. So
"we have done all we can" has never once been true here; it has meant "our
instruments say so".

health.py answers "is the factory running". This answers "is it MEASURING
correctly", which is the question that has actually mattered. They were both
fully green through the section-F collapse.

Read-only by default: it samples, compiles in a scratch directory, and never
writes to src/, build/ or the database. Safe against a live factory. It takes
the repo lock only for checks that must build a real object, and says so.

Every check here corresponds to a bug that really happened. If a check has
never fired, that is worth knowing too - do not delete it on that basis.
"""
from __future__ import annotations

import argparse
import collections
import json
import pathlib
import random
import re
import subprocess
import sys
import time

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
import db          # noqa: E402
import gitops      # noqa: E402

SCRATCH = gitops.REPO / ".claude" / "factory" / "audit"
OK, WARN, BAD = "ok  ", "WARN", "BAD "


def line(status, name, detail):
    colour = {OK: "\033[92m", WARN: "\033[93m", BAD: "\033[91m"}[status]
    print(f"  {colour}{status}\033[0m  {name:<22} {detail}")


# --------------------------------------------------------------------------
def check_terminal_queues(conn, sample):
    """needs_human and stalled are dead ends - nothing reclaims from them.

    Section Q: 99 of 106 rows filed as "the destination file will not compile
    with it spliced" compiled perfectly well when re-checked. The tree keeps
    improving underneath a verdict that never expires.
    """
    rows = list(conn.execute(
        "SELECT name, candidate_body FROM functions "
        "WHERE state IN ('needs_human','stalled') AND candidate_body IS NOT NULL"))
    if not rows:
        return line(OK, "terminal queues", "no rows carrying a candidate to re-check")
    SCRATCH.mkdir(parents=True, exist_ok=True)
    picked = random.sample(rows, min(sample, len(rows)))
    compiles = 0
    for r in picked:
        c_path, block = gitops.find_guard_block(r["name"])
        if c_path is None:
            continue
        text = c_path.read_text().replace(block, r["candidate_body"].rstrip() + "\n")
        if _compiles(r["name"], text):
            compiles += 1
    rate = compiles / max(1, len(picked))
    detail = (f"{compiles}/{len(picked)} sampled rows compile NOW "
              f"({len(rows)} carry a candidate) -- these are unreachable, "
              f"nothing reclaims from these states")
    line(BAD if rate > 0.25 else WARN if compiles else OK, "terminal queues", detail)


def _compiles(tag, text):
    src, pre = SCRATCH / f"{tag}.c", SCRATCH / f"{tag}.i"
    src.write_text(text)
    rs, rp = (p.relative_to(gitops.REPO).as_posix() for p in (src, pre))
    script = (f"arm-none-eabi-cpp -I tools/agbcc/include -nostdinc -undef -iquote include "
              f"-Wno-trigraphs {rs} -o {rp} && tools/agbcc/bin/agbcc -O2 -mthumb-interwork "
              f"-fno-common -Wimplicit -Wparentheses -Werror -g -ffix-debug-line "
              f"-o /dev/null {rp}")
    r = subprocess.run(["./container.sh", "bash", "-c", script], cwd=gitops.REPO,
                       capture_output=True, text=True)
    for f in (src, pre):
        f.unlink(missing_ok=True)
    return r.returncode == 0


# --------------------------------------------------------------------------
def check_unharvested_wins(conn):
    """decomp-permuter wins sitting on disk for functions that never matched.

    Section F and P: the search succeeded and the plumbing threw the answer
    away. 191 functions once had a score-0 output on disk and no match.
    """
    unmatched = {r["name"] for r in conn.execute(
        "SELECT name FROM functions WHERE state NOT IN "
        "('matched','validating','permuting','excluded')")}
    wins = []
    for d in pathlib.Path("nonmatchings").glob("*/"):
        if d.name not in unmatched:
            continue
        if any((o / "score.txt").is_file() and (o / "score.txt").read_text().strip() == "0"
               and (o / "source.c").is_file() for o in d.glob("output-*")):
            wins.append(d.name)
    detail = (f"{len(wins)} unmatched function(s) have a score-0 permuter output "
              f"on disk -- run rescue_isolated_zeros.py --all-on-disk")
    line(BAD if len(wins) > 40 else WARN if wins else OK, "unharvested wins", detail)


# --------------------------------------------------------------------------
def check_score_instrument(conn, sample):
    """Do stored seed scores agree with a plain-build measurement?

    Section N.4a: best_score used to measure OBJECT LAYOUT - same code scored
    76x worse purely for sitting early in a big file - and the whole claim
    order was keyed on it. tier_m2c now scores against a plain build; this
    catches a regression, or scores left over from before the fix.
    """
    import rescore_seeds
    rows = [r for r in conn.execute(
        "SELECT name, best_score, candidate_body FROM functions "
        "WHERE state='tier2_ready' AND candidate_body IS NOT NULL "
        "AND best_score IS NOT NULL")]
    if not rows:
        return line(OK, "score instrument", "no scored seeds to check")
    picked = random.sample(rows, min(sample, len(rows)))
    diffs, checked = [], 0
    for r in picked:
        with gitops.repo_lock(what="audit score"):
            got = rescore_seeds.plain_score(r["name"], r["candidate_body"])
        if got is None:
            continue
        checked += 1
        if r["best_score"]:
            diffs.append(abs(got - r["best_score"]) / max(r["best_score"], 1))
    if not checked:
        return line(WARN, "score instrument", "no sampled seed could be re-scored")
    bad = sum(1 for d in diffs if d > 0.5)
    line(BAD if bad > checked / 3 else OK, "score instrument",
         f"{bad}/{checked} stored scores differ >50% from a plain-build re-score")


# --------------------------------------------------------------------------
def check_expected_freshness():
    """expected/ is the baseline every asm-differ score is taken against.

    Documented repeatedly and still easy to miss: a stale snapshot silently
    makes every score meaningless.
    """
    exp = gitops.REPO / "expected"
    if not exp.exists():
        return line(BAD, "expected/ snapshot", "missing -- every asm-differ score is invalid")
    age_h = (time.time() - exp.stat().st_mtime) / 3600
    newest_src = max((p.stat().st_mtime for p in (gitops.REPO / "src").glob("*.c")), default=0)
    stale = newest_src > exp.stat().st_mtime
    line(WARN if stale else OK, "expected/ snapshot",
         f"{age_h:.1f}h old" + (" -- src/ is NEWER, refresh it" if stale else ""))


# --------------------------------------------------------------------------
def check_parked_rows(conn):
    """Rows excluded by a ruleset stamp that no longer corresponds to anything.

    Section N.1: ruleset_version() hashed the RECORDED submodule SHA, which
    never moves for a working-tree patch -- so the ldsh/ldsb fix re-opened
    zero rows. And O.2: changing a fragment's CONTENT does not move the stamp
    at all, so a decode like the jump-table work leaves its rows parked.
    """
    import m2c_bridge
    cur = m2c_bridge.ruleset_version()
    total = conn.execute("SELECT COUNT(*) c FROM functions WHERE notes LIKE 'm2c:%'").fetchone()["c"]
    stale = conn.execute("SELECT COUNT(*) c FROM functions WHERE notes LIKE 'm2c:%' "
                         "AND notes NOT LIKE ?", (f"m2c:{cur}:%",)).fetchone()["c"]
    line(WARN if stale else OK, "parked rows",
         f"{total} stamped, {stale} by a SUPERSEDED ruleset (those are claimable; "
         f"the other {total - stale} wait on a rule change)")


# --------------------------------------------------------------------------
def check_fragment_drift(conn):
    """Fragments edited since their row was last judged.

    O.2: rewriting asm/nonmatching/<name>.s does not move ruleset_version(),
    so the row keeps a verdict formed against assembly that no longer exists.
    """
    rows = list(conn.execute(
        "SELECT name, updated_at FROM functions WHERE state IN "
        "('needs_attempt','stalled','tier2_ready')"))
    drifted = []
    for r in rows:
        f = gitops.REPO / "asm" / "nonmatching" / f"{r['name']}.s"
        if f.exists() and f.stat().st_mtime > (r["updated_at"] or 0) + 60:
            drifted.append(r["name"])
    line(WARN if drifted else OK, "fragment drift",
         f"{len(drifted)} row(s) judged BEFORE their fragment was last edited "
         f"-- their verdict describes assembly that changed")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--sample", type=int, default=12,
                    help="rows to sample for the checks that must compile")
    ap.add_argument("--fast", action="store_true",
                    help="skip checks that build objects (no repo lock taken)")
    args = ap.parse_args()

    print(f"instrument audit  {time.strftime('%H:%M:%S')}")
    conn = db.connect()
    check_expected_freshness()
    check_unharvested_wins(conn)
    check_parked_rows(conn)
    check_fragment_drift(conn)
    if not args.fast:
        check_terminal_queues(conn, args.sample)
        check_score_instrument(conn, args.sample)
    else:
        line(OK, "compile checks", "skipped (--fast)")
    print("\nA check that fires is not proof of a bug -- it is proof that something "
          "\n  is being measured in a way nobody has confirmed recently. Confirm it.")
    return 0


if __name__ == "__main__":
    sys.exit(main())

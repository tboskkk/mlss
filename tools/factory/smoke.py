#!/usr/bin/env python3
"""Fast invariant check for the factory pipeline. Run this after EVERY
change, before ever launching a long run.

Why this exists: every bug found across a full day of hour-long test runs
was actually detectable within the first minute or two --

  * 60 false-positive pre-checks .......... first one at T+0.3min
  * validator/extraction build race ....... first failure at T+0.3min
  * tier2<->validating infinite loop ...... visible immediately in events

...yet each cost an hour of setup and babysitting to notice, because
nothing was checking the invariants automatically. A run that "looks
busy" is not a run that is working: the infinite-loop run logged 40
convergences and 0 matches while burning a full rebuild every lap.

This asserts the properties that were actually violated in practice,
rather than generic health checks:

  1. NO STATE CYCLES. A function must never return to a state it has
     already been in. That is the signature of a tier disagreement
     ping-ponging forever, and it is the single cheapest bug to detect
     mechanically.
  2. PRE-CHECK AND VALIDATOR AGREE. If tier2 says "score 0" and the
     validator then says "not byte-identical" about an unchanged
     candidate, one of them is wrong. That exact disagreement caused (1).
  3. NOTHING LEFT RUNNING. No orphaned factory processes or podman
     containers -- abandoned permuter containers once drove load average
     to 26.5 and starved llama-server for 12+ hours.
  4. REPO INTACT. Clean tree and a byte-identical ROM at the end, which
     is the one guarantee this whole project rests on.

Usage:
    python3 tools/factory/smoke.py [--functions N] [--minutes M]
"""
from __future__ import annotations

import argparse
import subprocess
import sys
import time
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402


def baseline_event_id(conn) -> int:
    row = conn.execute("SELECT MAX(id) m FROM events").fetchone()
    return row["m"] or 0


def check_no_state_cycles(conn, since: int) -> list[str]:
    """Invariant 1: no function revisits a state it was already in."""
    seen = defaultdict(list)
    rows = conn.execute(
        "SELECT function_name, kind FROM events WHERE id > ? AND kind LIKE 'state:%' ORDER BY id",
        (since,),
    ).fetchall()
    for r in rows:
        seen[r["function_name"]].append(r["kind"])
    problems = []
    for name, states in seen.items():
        # A repeat of any state means the function went round a loop.
        dupes = {s for s in states if states.count(s) > 1}
        if dupes:
            problems.append(f"{name} revisited {sorted(dupes)} (visited: {' -> '.join(states)})")
    return problems


def check_precheck_validator_agree(conn, since: int) -> list[str]:
    """Invariant 2: a converge must not be followed by a rejection."""
    rows = conn.execute(
        "SELECT id, function_name, kind FROM events WHERE id > ? "
        "AND kind IN ('converged','rejected','matched') ORDER BY id",
        (since,),
    ).fetchall()
    last_converge = {}
    problems = []
    for r in rows:
        n = r["function_name"]
        if r["kind"] == "converged":
            last_converge[n] = r["id"]
        elif r["kind"] == "rejected" and n in last_converge:
            problems.append(
                f"{n}: tier2 reported score 0 but the validator rejected it "
                f"-- the two disagree about the same candidate")
    return problems


def check_nothing_running() -> list[str]:
    problems = []
    r = subprocess.run(["ps", "-eo", "cmd"], capture_output=True, text=True)
    for line in r.stdout.splitlines():
        if "tools/factory/" in line and "smoke.py" not in line:
            problems.append(f"factory process still running: {line.strip()[:70]}")
    r = subprocess.run(["podman", "ps", "--format", "{{.ID}}"], capture_output=True, text=True)
    for cid in r.stdout.split():
        problems.append(f"container still running: {cid}")
    return problems


def check_repo_intact() -> list[str]:
    problems = []
    r = gitops.run(["git", "status", "--porcelain"])
    dirty = [l for l in r.stdout.splitlines() if l.strip()]
    if dirty:
        problems.append(f"working tree dirty ({len(dirty)} paths), e.g. {dirty[:3]}")
    import shutil
    shutil.rmtree(gitops.REPO / "build", ignore_errors=True)
    r = gitops.run(["./container.sh", "make"])
    if "mlss.gba: OK" not in r.stdout:
        problems.append("from-scratch build does NOT produce a byte-identical ROM")
    return problems


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--functions", type=int, default=4, help="how many to push through")
    ap.add_argument("--minutes", type=float, default=4.0, help="wall-clock budget")
    args = ap.parse_args()

    conn = db.connect()
    since = baseline_event_id(conn)
    print(f"smoke: baseline event id {since}, {args.functions} functions, "
          f"{args.minutes:.0f} min budget\n")

    # Short stall so tiny functions resolve fast rather than idling slots.
    t2 = subprocess.Popen([sys.executable, "tools/factory/tier2.py",
                           "--stall-min", "1", "--max-functions", str(args.functions)],
                          cwd=gitops.REPO)
    val = subprocess.Popen([sys.executable, "tools/factory/validator.py", "--loop", "10"],
                           cwd=gitops.REPO)
    deadline = time.time() + args.minutes * 60
    try:
        while time.time() < deadline and t2.poll() is None:
            time.sleep(5)
    finally:
        for p in (t2, val):
            p.terminate()
            try:
                p.wait(timeout=20)
            except subprocess.TimeoutExpired:
                p.kill()
        for cid in subprocess.run(["podman", "ps", "-q"], capture_output=True,
                                  text=True).stdout.split():
            subprocess.run(["podman", "kill", cid], capture_output=True)

    conn = db.connect()
    failures = []
    for label, probs in [
        ("state cycles (infinite loop)", check_no_state_cycles(conn, since)),
        ("pre-check/validator disagreement", check_precheck_validator_agree(conn, since)),
        ("leftover processes/containers", check_nothing_running()),
    ]:
        if probs:
            failures.append(label)
            print(f"FAIL  {label}:")
            for p in probs[:5]:
                print(f"        {p}")
        else:
            print(f"ok    {label}")

    # Repo check last: it reverts nothing but does a full rebuild.
    probs = check_repo_intact()
    if probs:
        failures.append("repo integrity")
        print("FAIL  repo integrity:")
        for p in probs:
            print(f"        {p}")
    else:
        print("ok    repo integrity (clean tree, byte-identical ROM)")

    matched = conn.execute(
        "SELECT COUNT(*) c FROM events WHERE id > ? AND kind = 'matched'", (since,)
    ).fetchone()["c"]
    conv = conn.execute(
        "SELECT COUNT(*) c FROM events WHERE id > ? AND kind = 'converged'", (since,)
    ).fetchone()["c"]
    print(f"\nthroughput: {conv} converged, {matched} matched")
    if conv and not matched:
        failures.append("converged but nothing matched")
        print("FAIL  converged functions produced zero matches -- the last mile is broken")

    print(f"\n{'SMOKE FAILED: ' + ', '.join(failures) if failures else 'SMOKE PASSED'}")
    return 1 if failures else 0


if __name__ == "__main__":
    sys.exit(main())

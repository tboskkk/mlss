#!/usr/bin/env python3
"""Assert the factory's invariants and report VIOLATIONS, not statistics.

dashboard.py is for watching; this is for catching. Every check here
corresponds to a failure mode that actually happened, so a regression
announces itself instead of hiding behind plausible-looking numbers:

  * tier2_ready starved to zero while needs_attempt piles up -- the shape
    of the tier_m2c-never-extracted regression, which silently idled 9 of
    12 permuter slots and read from the outside as "throughput mysteriously
    collapsed".
  * a worker dead while the supervisor still claims to be running.
  * claims stuck on a worker_id with no live process behind them.
  * orphaned permuter containers outliving the pool that spawned them.
  * the working tree dirty in ways the factory itself would not produce.
  * matches flatlining while the pipeline still looks busy.

Read-only: SQLite plus ps/podman/git status. No repo lock, no builds, no
writes -- safe to run against a live factory as often as you like.

Usage:
    python3 tools/factory/health.py          # human-readable
    python3 tools/factory/health.py --quiet  # only problems; exit 1 if any
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402

WORKERS = ["scanner", "validator", "tier1", "tier_m2c", "tier2"]
OK, WARN, FAIL = "ok", "warn", "fail"


def _ps() -> str:
    try:
        return subprocess.run(["ps", "-eo", "args"], capture_output=True,
                              text=True, timeout=5).stdout
    except Exception:
        return ""


def _running(ps: str, script: str) -> bool:
    """Is tools/factory/<script>.py ACTUALLY running as a process?

    Not `f"tools/factory/{script}.py" in ps`. That was the original check and
    it reports a false positive for any shell whose command line merely
    MENTIONS the path -- a `nohup ... python3 tools/factory/supervisor.py ...`
    wrapper, a pgrep, a grep of the log. It lied for real: after a restart
    command failed to fire, health.py reported "supervisor up but DEAD:
    scanner, validator, tier1, tier_m2c, tier2" when there was no supervisor
    at all, and the factory then sat idle for four hours.

    A monitor that can report a dead thing as alive is worse than no
    monitor, so require the process to be a PYTHON INVOCATION of that
    script: the interpreter first, the script as an argument. A shell
    wrapper fails that test because its argv[0] is bash.
    """
    needle = f"tools/factory/{script}.py"
    for line in ps.splitlines():
        if needle not in line:
            continue
        head = line.split(needle)[0]
        # argv[0] must be a python interpreter, and nothing may sit between
        # it and the script path except interpreter flags.
        # Allow an absolute directory prefix on the script path
        # (/usr/bin/python3 /home/.../tools/factory/scanner.py) but nothing
        # else -- a bash wrapper fails because head starts with /bin/bash.
        if re.match(r"^\S*python[0-9.]*\s+(-\S+\s+)*(\S*/)?$", head):
            return True
    return False


def checks(conn) -> list[tuple[str, str, str]]:
    out: list[tuple[str, str, str]] = []
    ps = _ps()
    counts = {r["state"]: r["c"] for r in
              conn.execute("SELECT state, COUNT(*) c FROM functions GROUP BY state")}
    now = time.time()

    # --- workers alive ---------------------------------------------------
    dead = [w for w in WORKERS if not _running(ps, w)]
    sup = _running(ps, "supervisor")
    if not sup and not dead:
        out.append(("workers", WARN, "all 5 running but no supervisor -- nothing will restart a crash"))
    elif dead and sup:
        out.append(("workers", FAIL, f"supervisor up but DEAD: {', '.join(dead)}"))
    elif dead:
        out.append(("workers", WARN if len(dead) == len(WORKERS) else FAIL,
                    "factory stopped" if len(dead) == len(WORKERS) else f"dead: {', '.join(dead)}"))
    else:
        out.append(("workers", OK, "5/5 running + supervisor"))

    # --- the starvation shape -------------------------------------------
    ready, attempt = counts.get("tier2_ready", 0), counts.get("needs_attempt", 0)
    permuting = counts.get("permuting", 0)
    if ready == 0 and attempt > 50 and permuting < 6:
        out.append(("permuter feed", FAIL,
                    f"tier2_ready=0 with needs_attempt={attempt} and only {permuting} permuting "
                    f"-- tier_m2c is not producing seeds (extraction broken? see git log for "
                    f"the ensure_extracted regression)"))
    elif ready == 0 and attempt > 50:
        out.append(("permuter feed", WARN,
                    f"tier2_ready=0 with needs_attempt={attempt} -- seeds draining as fast as "
                    f"they're made; fine if permuting is high ({permuting})"))
    else:
        out.append(("permuter feed", OK, f"tier2_ready={ready}, permuting={permuting}"))

    # --- stuck claims ----------------------------------------------------
    stale = conn.execute(
        "SELECT COUNT(*) c FROM functions WHERE worker_id IS NOT NULL AND updated_at < ?",
        (now - 45 * 60,)).fetchone()["c"]
    out.append(("stuck claims", FAIL if stale > 5 else (WARN if stale else OK),
                f"{stale} claim(s) held >45min with no progress" if stale else "none"))

    # --- containers vs pool ----------------------------------------------
    try:
        n = len([x for x in subprocess.run(
            ["podman", "ps", "--format", "{{.ID}}"], capture_output=True,
            text=True, timeout=8).stdout.splitlines() if x.strip()])
        if n and not sup and all(w in ps for w in []):
            out.append(("containers", WARN, f"{n} running with no supervisor"))
        elif n > 16:
            out.append(("containers", WARN, f"{n} running -- more than the pool should spawn"))
        else:
            out.append(("containers", OK, f"{n} permuter container(s)"))
    except Exception as e:
        out.append(("containers", WARN, f"could not check: {e}"))

    # --- match progress --------------------------------------------------
    for label, hrs in (("1h", 1), ("6h", 6)):
        n = conn.execute(
            "SELECT COUNT(DISTINCT function_name) c FROM events "
            "WHERE kind IN ('state:matched','matched') AND ts >= ?",
            (now - hrs * 3600,)).fetchone()["c"]
        if hrs == 1:
            out.append(("matches/hr", FAIL if n == 0 and sup else OK,
                        f"{n} in the last hour" + (" -- FLATLINED" if n == 0 and sup else "")))

    # --- working tree ----------------------------------------------------
    r = gitops.run(["git", "status", "--porcelain"])
    dirty = [l for l in r.stdout.splitlines() if l.strip()]
    # src/*.c churn is normal (in-flight candidate splices); anything else isn't.
    odd = [l for l in dirty if not l[3:].startswith(("src/", "asm/nonmatching/"))]
    if odd:
        out.append(("working tree", WARN,
                    f"{len(dirty)} dirty, {len(odd)} outside src/asm-nonmatching: "
                    + ", ".join(x[3:] for x in odd[:3])))
    else:
        out.append(("working tree", OK, f"{len(dirty)} in-flight src/ splice(s)"))

    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--quiet", action="store_true")
    args = ap.parse_args()

    conn = db.connect()
    try:
        results = checks(conn)
    finally:
        conn.close()

    bad = [r for r in results if r[1] in (WARN, FAIL)]
    sym = {OK: "\033[92mok  \033[0m", WARN: "\033[93mWARN\033[0m", FAIL: "\033[91mFAIL\033[0m"}
    if not args.quiet:
        print(f"factory health  {time.strftime('%H:%M:%S')}")
        for name, status, detail in results:
            print(f"  {sym[status]}  {name:<15} {detail}")
    else:
        for name, status, detail in bad:
            print(f"{status.upper()}: {name}: {detail}")
    return 1 if any(r[1] == FAIL for r in results) else 0


if __name__ == "__main__":
    sys.exit(main())

#!/usr/bin/env python3
"""Detect and recover the failure that has now cost two overnight runs.

THE FAILURE, precisely. tier2 can be alive, at 0% CPU, with a full
`permuting` count and a dozen live containers, and be doing NOTHING: its
monitoring loop (score updates, stall detection, kill_search, resolution)
stops running while its refill loop keeps finding the pool full. Every
surface signal reads healthy -- workers up, containers up, queue deep, tree
clean -- because the searches really were launched. They are simply never
looked at again.

Twice now this ran for hours. The first time a bad `except` placement left
the monitoring loop as dead code after a `continue` (5.5 hours, 0 matches,
containers running 6x their 15-minute stall cap).

WHAT IT WATCHES. Two signals, either of which is sufficient, and neither of
which a healthy factory can produce:

  * No `t2_launch` event for LAUNCH_SILENCE_S while rows sit in `permuting`.
    A working pool cycles constantly -- searches stall out and are replaced
    -- so prolonged silence with slots occupied means nothing is being
    retired.
  * A permuter container older than CONTAINER_MAX_S. tier2's own give-up
    ceiling is stall_seconds_for()'s max of 900s, so a container past that
    plus a wide margin proves kill_search() is not running.

WHAT IT DOES. SIGTERM to tier2, nothing else. The supervisor restarts it
within a minute, and tier2's own _cleanup_all() stops its containers and
requeues its rows, so a restart costs the in-flight searches and no state.
It never touches the repo, git, or the database.

Deliberately NOT part of health.py: health.py reports, this acts, and the
two should not be able to break each other.

Usage:
    python3 tools/factory/watchdog.py --interval 60
    python3 tools/factory/watchdog.py --once --dry-run
"""
from __future__ import annotations

import argparse
import os
import re
import signal
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402

LAUNCH_SILENCE_S = 1500      # 25 min; tier2's own ceiling is 900s
CONTAINER_MAX_S = 1800       # 30 min; 2x the give-up ceiling
GRACE_AFTER_RESTART_S = 300  # let a fresh tier2 settle before judging it

_AGE = re.compile(r"(?:(\d+)\s+(second|minute|hour|day))")


def _container_age_seconds(running_for: str) -> int:
    m = _AGE.search(running_for)
    if not m:
        return 0
    n, unit = int(m.group(1)), m.group(2)
    return n * {"second": 1, "minute": 60, "hour": 3600, "day": 86400}[unit]


def tier2_pid() -> int | None:
    out = subprocess.run(["ps", "-eo", "pid,args"], capture_output=True, text=True).stdout
    for line in out.splitlines():
        # Match the real interpreter invocation, never a grep/shell that
        # happens to carry the same string -- pattern-matching on the name
        # has self-matched and killed the wrong process here before.
        if re.search(r"^\s*\d+\s+\S*python[0-9.]*\s+(-\S+\s+)*\S*tools/factory/tier2\.py", line):
            return int(line.split()[0])
    return None


def permuter_containers() -> list[tuple[str, int]]:
    """(id, age_seconds). --no-trunc is REQUIRED: podman truncates
    {{.Command}} before `nonmatchings/<name>`, and a check without it once
    reported every container an orphan and every orphan legitimate."""
    try:
        out = subprocess.run(
            ["podman", "ps", "--no-trunc", "--format", "{{.ID}}|{{.RunningFor}}|{{.Command}}"],
            capture_output=True, text=True, timeout=20).stdout
    except Exception:
        return []
    rows = []
    for line in out.splitlines():
        parts = line.split("|", 2)
        if len(parts) == 3 and "nonmatchings/" in parts[2]:
            rows.append((parts[0], _container_age_seconds(parts[1])))
    return rows


def diagnose(conn) -> str | None:
    """-> reason string if tier2 is wedged, else None."""
    now = time.time()
    permuting = conn.execute(
        "SELECT COUNT(*) FROM functions WHERE state='permuting'").fetchone()[0]
    last_launch = conn.execute(
        "SELECT MAX(ts) FROM events WHERE kind='t2_launch'").fetchone()[0] or 0
    silence = now - last_launch

    if permuting > 0 and silence > LAUNCH_SILENCE_S:
        return (f"no t2_launch for {silence/60:.0f} min while {permuting} row(s) "
                f"sit in permuting -- the pool is not retiring searches")

    stale = [(cid, age) for cid, age in permuter_containers() if age > CONTAINER_MAX_S]
    if stale:
        oldest = max(a for _, a in stale)
        return (f"{len(stale)} permuter container(s) older than "
                f"{CONTAINER_MAX_S//60} min (oldest {oldest/60:.0f} min) -- "
                f"kill_search() is not running")
    return None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--interval", type=int, default=60)
    ap.add_argument("--once", action="store_true")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    last_action = 0.0
    while True:
        conn = db.connect(readonly=True)
        try:
            reason = diagnose(conn)
        except Exception as e:
            reason = None
            print(f"[{time.strftime('%H:%M:%S')}] watchdog check failed: {e}", flush=True)
        finally:
            conn.close()

        if reason and time.time() - last_action > GRACE_AFTER_RESTART_S:
            pid = tier2_pid()
            print(f"[{time.strftime('%H:%M:%S')}] WEDGED: {reason}", flush=True)
            if args.dry_run or pid is None:
                print(f"    would SIGTERM tier2 (pid {pid})", flush=True)
            else:
                os.kill(pid, signal.SIGTERM)
                print(f"    SIGTERM -> tier2 pid {pid}; supervisor will restart it",
                      flush=True)
                last_action = time.time()
        elif reason:
            print(f"[{time.strftime('%H:%M:%S')}] {reason} (within restart grace)", flush=True)

        if args.once:
            return 1 if reason else 0
        time.sleep(args.interval)


if __name__ == "__main__":
    sys.exit(main())

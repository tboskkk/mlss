#!/usr/bin/env python3
"""Stop and/or start the factory, and VERIFY it actually happened.

Doing this by hand with pkill/pgrep keeps going wrong, three separate ways
in one session, all the same root cause: a shell whose command line
CONTAINS "tools/factory/supervisor.py" is matched by a pattern meant to
find the supervisor.

  * A wait loop's `pgrep -cf ...` matched its own shell, so the count never
    reached zero, the restart line after it never ran, and the factory sat
    idle for four hours.
  * `pkill -f "tools/factory/supervisor.py"` matched the wrapper shell
    running the command and killed it mid-script.
  * health.py's `"tools/factory/x.py" in ps` reported "supervisor up" when
    the only thing alive was such a wrapper.

So: never match by pattern. Find real processes, kill them by PID, and
check the result by looking for the process afterwards rather than trusting
that the command worked. This file exists so its own argv is just
`python3 tools/factory/restart.py`, which contains none of the strings it
searches for.

Usage:
    python3 tools/factory/restart.py            # stop, then start
    python3 tools/factory/restart.py --stop     # stop only
    python3 tools/factory/restart.py --start    # start only
    python3 tools/factory/restart.py --hours 8  # supervisor --max-hours
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

REPO = Path(__file__).resolve().parent.parent.parent
PROCS = ["supervisor", "scanner", "validator", "tier1", "tier_m2c", "tier2"]


def factory_pids() -> dict:
    """{script_name: [pid, ...]} for processes that are REALLY a python run
    of tools/factory/<script>.py -- interpreter as argv[0], optional flags,
    optional absolute directory prefix, then the script. A bash wrapper that
    merely mentions the path fails this, which is the entire point."""
    out = subprocess.run(["ps", "-eo", "pid=,args="], capture_output=True, text=True).stdout
    found: dict = {p: [] for p in PROCS}
    me = os.getpid()
    for line in out.splitlines():
        line = line.strip()
        if not line:
            continue
        pid_s, _, args = line.partition(" ")
        try:
            pid = int(pid_s)
        except ValueError:
            continue
        if pid == me:
            continue
        for name in PROCS:
            needle = f"tools/factory/{name}.py"
            if needle not in args:
                continue
            head = args.split(needle)[0]
            if re.match(r"^\S*python[0-9.]*\s+(-\S+\s+)*(\S*/)?$", head):
                found[name].append(pid)
    return found


def alive() -> list:
    return [f"{n}({','.join(map(str, p))})" for n, p in factory_pids().items() if p]


def stop(timeout: float = 300) -> bool:
    pids = factory_pids()
    if not any(pids.values()):
        print("already stopped")
        return True

    # SIGTERM the supervisor first and let it shut its own children down --
    # it kills their permuter containers on the way out, which nothing else
    # does properly.
    for pid in pids["supervisor"]:
        print(f"SIGTERM supervisor pid {pid}")
        try:
            os.kill(pid, signal.SIGTERM)
        except ProcessLookupError:
            pass

    deadline = time.time() + timeout
    while time.time() < deadline:
        if not alive():
            break
        time.sleep(3)
    else:
        left = factory_pids()
        print(f"still alive after {timeout:.0f}s: {alive()} -- SIGKILL")
        for name in PROCS:
            for pid in left[name]:
                try:
                    os.kill(pid, signal.SIGKILL)
                except ProcessLookupError:
                    pass
        time.sleep(3)

    # Containers outlive a SIGKILLed pool; sweep whatever is left.
    r = subprocess.run(["podman", "ps", "--no-trunc", "--format", "{{.ID}} {{.Command}}"],
                       capture_output=True, text=True)
    killed = 0
    for line in r.stdout.splitlines():
        if "nonmatchings/" in line or "decomp-permuter" in line:
            subprocess.run(["podman", "kill", line.split()[0]], capture_output=True)
            killed += 1
    if killed:
        print(f"swept {killed} orphaned permuter container(s)")

    ok = not alive()
    print("stopped" if ok else f"FAILED to stop: {alive()}")
    return ok


def start(hours: float, log: Path) -> bool:
    if factory_pids()["supervisor"]:
        print("supervisor already running -- not starting a second one")
        return False
    cmd = ["systemd-inhibit", "--what=sleep:idle", "--why=mlss decomp factory",
           "python3", "tools/factory/supervisor.py", "--max-hours", str(hours)]
    with open(log, "w") as fh:
        subprocess.Popen(cmd, cwd=REPO, stdout=fh, stderr=subprocess.STDOUT,
                         start_new_session=True)
    print(f"launched; log -> {log}")

    # VERIFY. The whole reason this file exists is that "I ran the start
    # command" is not the same as "it started".
    deadline = time.time() + 90
    while time.time() < deadline:
        text = log.read_text() if log.exists() else ""
        if "all processes launched" in text:
            running = [n for n, p in factory_pids().items() if p]
            missing = [p for p in PROCS if p not in running]
            if not missing:
                print(f"started and verified: {', '.join(running)}")
                return True
        time.sleep(3)
    print("FAILED to confirm start. Log tail:")
    print((log.read_text() if log.exists() else "(no log)")[-800:])
    return False


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--stop", action="store_true")
    ap.add_argument("--start", action="store_true")
    ap.add_argument("--hours", type=float, default=12)
    ap.add_argument("--log", type=Path,
                    default=Path("/tmp/supervisor.log"))
    args = ap.parse_args()

    do_stop = args.stop or not args.start
    do_start = args.start or not args.stop

    if do_stop and not stop():
        return 1
    if do_start and not start(args.hours, args.log):
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

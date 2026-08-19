#!/usr/bin/env python3
"""Factory pipeline, process 6 of 6: the Daemon Supervisor.

The generalized version of what qwen_supervisor.sh already did for one
process (health-check llama-server, restart what dies, keep going past a
single batch) -- now covering all five factory processes at once. This is
the one command that makes the whole pipeline "walk away and it keeps
working": start it, and scanner/validator/tier1/tier2/tier3 all run
continuously, restarting each other's failures, until told to stop.

Startup does a clean slate on purpose: kills any stray factory processes
still running from a previous session, then releases every worker_id claim
in the DB. This is safe specifically because none of the tier processes
carry cross-restart state in a claim -- a fresh process only ever picks up
NEW work each loop iteration, so an inherited claim from a dead process is
always garbage, never legitimate in-flight work. (A permuter search itself
surviving a supervisor restart would be a real problem -- but tier2's own
kill_search()/atexit handling is what's responsible for those, and gets a
real chance to run since children are stopped with SIGTERM here, not
SIGKILL, before this reaper touches the DB.)

Usage:
    systemd-inhibit --what=sleep:idle --why="mlss decomp factory" \\
      ./tools/factory/supervisor.py [--max-hours 10]
"""
from __future__ import annotations

import argparse
import signal
import subprocess
import sys
import time
from pathlib import Path

import requests

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402

REPO = Path(__file__).resolve().parent.parent.parent
FACTORY_DIR = REPO / "tools" / "factory"
LOG_DIR = REPO / ".claude" / "factory" / "logs"
HEALTH_URL = "http://127.0.0.1:8080/health"
SERVE_SCRIPT = Path.home() / "Desktop" / "ai-training" / "qwen-coder" / "serve.sh"

# name -> (script, args, needs_llm). needs_llm processes are only started
# once llama-server answers healthy; the other four don't touch it at all.
PROCESSES = {
    "scanner":   ("scanner.py",   ["--loop", "300"],  False),
    "validator": ("validator.py", ["--loop", "15"],   False),
    "tier1":     ("tier1.py",     ["--loop", "30"],   False),
    "tier2":     ("tier2.py",     ["--loop", "20", "--stall-min", "15"], False),
    "tier3":     ("tier3.py",     ["--loop", "20"],   True),
}


def log(msg: str):
    line = f"[{time.strftime('%H:%M:%S')}] {msg}"
    print(line, flush=True)
    LOG_DIR.mkdir(parents=True, exist_ok=True)
    with open(LOG_DIR / "supervisor.log", "a") as f:
        f.write(line + "\n")


def llama_healthy() -> bool:
    try:
        r = requests.get(HEALTH_URL, timeout=3)
        return r.status_code == 200
    except Exception:
        return False


def restart_llama():
    log("!! llama-server not responding -- restarting it")
    subprocess.run(["pkill", "-KILL", "-f", "bin/llama-server"])
    time.sleep(2)
    subprocess.Popen(
        ["nohup", "./serve.sh"],
        cwd=SERVE_SCRIPT.parent,
        stdout=open(LOG_DIR / f"serve-{time.strftime('%Y%m%d-%H%M%S)')}.log", "w"),
        stderr=subprocess.STDOUT,
        start_new_session=True,
    )
    for _ in range(60):
        if llama_healthy():
            log("llama-server back up")
            return True
        time.sleep(3)
    log("!! llama-server still not responding after 3 minutes")
    return False


def clean_slate():
    log("clean slate: stopping any stray factory processes from a previous session")
    for pyname, _args, _needs_llm in PROCESSES.values():
        subprocess.run(["pkill", "-TERM", "-f", f"tools/factory/{pyname}"])
    time.sleep(3)  # give tier2 its atexit handler's chance to podman-kill real containers
    for pyname, _args, _needs_llm in PROCESSES.values():
        subprocess.run(["pkill", "-KILL", "-f", f"tools/factory/{pyname}"])

    conn = db.connect()
    with db.tx(conn):
        n = conn.execute("UPDATE functions SET worker_id = NULL WHERE worker_id IS NOT NULL").rowcount
    conn.close()
    log(f"reaped {n} orphaned worker claim(s)")


def start(name: str) -> subprocess.Popen:
    pyname, args, _needs_llm = PROCESSES[name]
    LOG_DIR.mkdir(parents=True, exist_ok=True)
    log_f = open(LOG_DIR / f"{name}.log", "a")
    proc = subprocess.Popen(
        [sys.executable, str(FACTORY_DIR / pyname), *args],
        cwd=REPO, stdout=log_f, stderr=subprocess.STDOUT,
    )
    log(f"started {name} (pid {proc.pid})")
    return proc


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--max-hours", type=float, default=None,
                     help="wall-clock budget; omit to run indefinitely until stopped")
    ap.add_argument("--check-interval", type=int, default=20,
                     help="seconds between health/liveness checks (default 20)")
    args = ap.parse_args()

    deadline = time.time() + args.max_hours * 3600 if args.max_hours else None

    clean_slate()

    procs: dict[str, subprocess.Popen | None] = {}
    for name in PROCESSES:
        _pyname, _args, needs_llm = PROCESSES[name]
        if needs_llm and not llama_healthy():
            if not restart_llama():
                log(f"skipping {name} this round -- llama-server unavailable")
                procs[name] = None
                continue
        procs[name] = start(name)

    stopping = False

    def _handle_sigterm(*_a):
        nonlocal stopping
        stopping = True

    signal.signal(signal.SIGTERM, _handle_sigterm)
    signal.signal(signal.SIGINT, _handle_sigterm)

    log("=== supervisor running -- all processes launched ===")
    while not stopping:
        if deadline and time.time() >= deadline:
            log("wall-clock budget reached, stopping")
            break
        time.sleep(args.check_interval)

        for name, (pyname, _args, needs_llm) in PROCESSES.items():
            proc = procs.get(name)
            if proc is not None and proc.poll() is None:
                continue  # alive
            if proc is not None:
                log(f"!! {name} died (exit code {proc.returncode}) -- restarting")
            if needs_llm and not llama_healthy():
                if not restart_llama():
                    procs[name] = None
                    continue
            procs[name] = start(name)

    log("stopping: sending SIGTERM to all children")
    for name, proc in procs.items():
        if proc is not None and proc.poll() is None:
            proc.terminate()
    for name, proc in procs.items():
        if proc is not None:
            try:
                proc.wait(timeout=20)
            except subprocess.TimeoutExpired:
                log(f"!! {name} didn't exit cleanly, killing")
                proc.kill()
    log("=== supervisor stopped ===")


if __name__ == "__main__":
    main()

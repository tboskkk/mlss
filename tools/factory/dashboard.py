#!/usr/bin/env python3
"""Live at-a-glance view of the decomp factory. Read-only.

Deliberately touches NOTHING: no repo lock, no git, no builds, no DB
writes -- just SQLite reads plus `ps`/`podman` for liveness. That matters,
because every other tool in here competes with the factory for the repo
lock, and a monitor that slowed down the thing it monitors would be worse
than useless. Safe to leave running in a spare terminal indefinitely.

Usage:
    python3 tools/factory/dashboard.py            # refresh every 5s
    python3 tools/factory/dashboard.py -n 15      # refresh every 15s
    python3 tools/factory/dashboard.py --once     # print once and exit
"""
from __future__ import annotations

import argparse
import os
import shutil
import sqlite3
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402

TOTAL_FUNCS = 5986  # "game proper" -- excludes the embedded Mario Bros. ROM

WORKERS = ["scanner", "validator", "tier1", "tier_m2c", "tier2"]

# State -> (label, colour). Ordered roughly by pipeline position so the
# display reads like the funnel it is.
STATES = [
    ("matched",       "matched",      "\033[92m"),
    ("validating",    "validating",   "\033[96m"),
    ("permuting",     "permuting",    "\033[94m"),
    ("tier2_ready",   "seeded",       "\033[36m"),
    ("needs_attempt", "needs attempt", "\033[93m"),
    ("stalled",       "stalled",      "\033[33m"),
    ("needs_human",   "needs human",  "\033[91m"),
    ("queued",        "queued",       "\033[37m"),
    ("raw",           "raw",          "\033[90m"),
    ("excluded",      "excluded",     "\033[90m"),
]

R = "\033[0m"
B = "\033[1m"
DIM = "\033[2m"


def counts(conn) -> dict[str, int]:
    return {r["state"]: r["c"] for r in
            conn.execute("SELECT state, COUNT(*) c FROM functions GROUP BY state")}


def match_events(conn, since: float) -> int:
    row = conn.execute(
        "SELECT COUNT(DISTINCT function_name) c FROM events "
        "WHERE kind IN ('state:matched','matched') AND ts >= ?", (since,)).fetchone()
    return row["c"] if row else 0


def recent_matches(conn, n: int) -> list[tuple[str, float]]:
    rows = conn.execute(
        "SELECT function_name, MAX(ts) t FROM events "
        "WHERE kind IN ('state:matched','matched') "
        "GROUP BY function_name ORDER BY t DESC LIMIT ?", (n,)).fetchall()
    return [(r["function_name"], r["t"]) for r in rows]


def worker_alive() -> dict[str, bool]:
    try:
        out = subprocess.run(["ps", "-eo", "args"], capture_output=True,
                             text=True, timeout=5).stdout
    except Exception:
        return {w: False for w in WORKERS}
    return {w: f"tools/factory/{w}.py" in out for w in WORKERS}


def container_count() -> int:
    try:
        out = subprocess.run(["podman", "ps", "--format", "{{.ID}}"],
                             capture_output=True, text=True, timeout=8).stdout
        return len([x for x in out.splitlines() if x.strip()])
    except Exception:
        return -1


def bar(frac: float, width: int, colour: str) -> str:
    filled = max(0, min(width, int(round(frac * width))))
    return f"{colour}{'█' * filled}{DIM}{'░' * (width - filled)}{R}"


def render(conn) -> str:
    cs = counts(conn)
    matched = cs.get("matched", 0)
    now = time.time()
    alive = worker_alive()
    up = sum(alive.values())
    width = min(shutil.get_terminal_size((100, 40)).columns, 100)

    L = []
    status = f"{'\033[92m● LIVE' if up else '\033[91m● STOPPED'}{R}"
    L.append(f"{B}MLSS DECOMP FACTORY{R}   {DIM}{time.strftime('%H:%M:%S')}{R}   {status}")
    L.append("─" * width)

    pct = 100.0 * matched / TOTAL_FUNCS
    L.append(f"  {B}MATCHED{R}  {B}\033[92m{matched}{R} / {TOTAL_FUNCS}   {B}{pct:.2f}%{R}")
    L.append(f"  {bar(matched / TOTAL_FUNCS, width - 6, '\033[92m')}")
    L.append("")

    # --- pipeline funnel -------------------------------------------------
    L.append(f"  {B}PIPELINE{R}")
    biggest = max((cs.get(s, 0) for s, _, _ in STATES), default=1) or 1
    for key, label, colour in STATES:
        n = cs.get(key, 0)
        if not n:
            continue
        L.append(f"    {colour}{label:<14}{R}{n:>6}  {bar(n / biggest, 28, colour)}")
    L.append("")

    # --- throughput ------------------------------------------------------
    h1 = match_events(conn, now - 3600)
    h6 = match_events(conn, now - 6 * 3600)
    h24 = match_events(conn, now - 24 * 3600)
    remaining = TOTAL_FUNCS - matched
    eta = f"{remaining / h1 / 24:.0f} days at this rate" if h1 else "--"
    L.append(f"  {B}THROUGHPUT{R}          {DIM}(completed matches){R}")
    L.append(f"    last hour   {B}{h1:>5}{R}      last 6h {B}{h6:>5}{R}      last 24h {B}{h24:>5}{R}")
    L.append(f"    {DIM}remaining {remaining}  ·  {eta}{R}")
    L.append("")

    # --- workers + recent matches side by side ---------------------------
    ncont = container_count()
    left = [f"  {B}WORKERS{R}"]
    for w in WORKERS:
        dot = "\033[92m●" if alive[w] else "\033[91m○"
        extra = ""
        if w == "tier2" and ncont >= 0:
            extra = f"  {DIM}{ncont} search{'es' if ncont != 1 else ''}{R}"
        left.append(f"    {dot}{R} {w:<10}{extra}")

    right = [f"{B}RECENT MATCHES{R}"]
    for fn, ts in recent_matches(conn, len(left) - 1):
        right.append(f"{DIM}{time.strftime('%H:%M', time.localtime(ts))}{R}  {fn}")

    for i in range(max(len(left), len(right))):
        lcell = left[i] if i < len(left) else ""
        rcell = right[i] if i < len(right) else ""
        pad = 34 - len(strip_ansi(lcell))
        L.append(lcell + " " * max(1, pad) + rcell)

    if up and up < len(WORKERS):
        L.append("")
        down = [w for w in WORKERS if not alive[w]]
        L.append(f"  \033[91m! not running: {', '.join(down)}{R}")
    return "\n".join(L)


def strip_ansi(s: str) -> str:
    import re
    return re.sub(r"\033\[[0-9;]*m", "", s)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("-n", "--interval", type=float, default=5.0)
    ap.add_argument("--once", action="store_true")
    args = ap.parse_args()

    while True:
        try:
            conn = db.connect(readonly=True)
            try:
                frame = render(conn)
            finally:
                conn.close()
        except sqlite3.OperationalError as e:
            # The factory writes constantly; a transient lock is normal and
            # absolutely not worth crashing a monitor over.
            frame = f"{DIM}(database busy: {e}){R}"
        if args.once:
            print(frame)
            return
        os.system("clear" if os.name != "nt" else "cls")
        print(frame)
        print(f"\n{DIM}  refreshing every {args.interval:g}s — Ctrl-C to exit{R}")
        try:
            time.sleep(args.interval)
        except KeyboardInterrupt:
            print()
            return


if __name__ == "__main__":
    main()

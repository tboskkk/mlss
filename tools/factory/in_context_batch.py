#!/usr/bin/env python3
"""Run in_context_search over every ghost (find_ghost_zeros.py's list),
one process per function, bounded parallelism. Writes a JSON line per
function to --out as it finishes, so a partial run is still readable.

    python3 tools/factory/in_context_batch.py --seconds 300 --workers 3 --out /tmp/ic_batch.jsonl
"""
from __future__ import annotations

import argparse
import json
import subprocess
import sys
import time
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import find_ghost_zeros as fgz  # noqa: E402

REPO = fgz.REPO


def run_one(name: str, seconds: float) -> dict:
    t0 = time.time()
    r = subprocess.run(
        ["python3", "tools/factory/in_context_search.py", name, "--seconds", str(seconds)],
        cwd=REPO, capture_output=True, text=True, timeout=seconds + 60,
    )
    out = {"name": name, "wall": time.time() - t0, "returncode": r.returncode}
    # in_context_search.py prints a dict-like line and, on a real zero, a
    # WROTE line -- parsed loosely rather than machine-formatted, this is
    # a POC's own driver, not a stable interchange format.
    out["found_zero"] = "WROTE" in r.stdout
    for line in r.stdout.splitlines():
        if line.strip().startswith("{"):
            out["result_line"] = line.strip()
    if r.returncode != 0:
        out["stderr_tail"] = r.stderr[-500:]
    return out


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--seconds", type=float, default=300)
    ap.add_argument("--workers", type=int, default=3)
    ap.add_argument("--out", default="/tmp/ic_batch.jsonl")
    ap.add_argument("--names", nargs="*", help="restrict to these names (default: all ghosts)")
    args = ap.parse_args()

    if args.names:
        names = args.names
    else:
        candidates = sorted(p.name for p in (REPO / "nonmatchings").iterdir() if p.is_dir())
        import sqlite3
        conn = sqlite3.connect(f"file:{REPO}/.claude/factory/state.db?mode=ro", uri=True)
        conn.row_factory = sqlite3.Row
        names = []
        for name in candidates:
            src = fgz.ghost_source(name)
            if src is None:
                continue
            row = conn.execute("SELECT state FROM functions WHERE name=?", (name,)).fetchone()
            if row is not None and row["state"] == "matched":
                continue
            names.append(name)
        conn.close()

    print(f"running {len(names)} function(s), {args.workers} worker(s), "
          f"{args.seconds}s each -- est wall clock "
          f"{len(names) * args.seconds / args.workers / 60:.0f} min")

    with open(args.out, "w") as f:
        with ProcessPoolExecutor(max_workers=args.workers) as pool:
            futures = {pool.submit(run_one, n, args.seconds): n for n in names}
            for i, fut in enumerate(as_completed(futures), 1):
                name = futures[fut]
                try:
                    result = fut.result()
                except Exception as e:
                    result = {"name": name, "error": str(e)}
                f.write(json.dumps(result) + "\n")
                f.flush()
                tag = "ZERO FOUND" if result.get("found_zero") else "no improvement"
                print(f"[{i}/{len(names)}] {name}: {tag}  ({result.get('wall', 0):.0f}s)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

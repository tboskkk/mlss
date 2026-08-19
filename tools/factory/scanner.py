#!/usr/bin/env python3
"""Factory pipeline, process 1 of 5: the Scanner.

Re-derives the world (every function, its call graph, its current status)
from the repo on disk and upserts it into state.db. This is the only
process that reads asm/*.s and src/*.c wholesale -- everything downstream
(tier workers, the validator, a status dashboard) works purely from the
database, never by re-scanning the repo itself. That split is what makes
"what's going on" a fast SQL query instead of a multi-second re-parse.

Deliberately reuses triage.py's collect()/score() rather than
re-implementing function discovery -- that logic (idiom exclusion, call
graph, tractability scoring) is already correct and tested; duplicating it
here would just be a second place for it to drift out of sync.

Usage:
    ./container.sh tools/factory/scanner.py           # one pass
    ./container.sh tools/factory/scanner.py --loop 300 # rescan every 5 min
"""
from __future__ import annotations

import argparse
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
import triage  # noqa: E402

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402


def existing_state(conn, name: str):
    row = conn.execute("SELECT state, worker_id FROM functions WHERE name = ?", (name,)).fetchone()
    return (row["state"], row["worker_id"]) if row else (None, None)


def scan_once() -> dict:
    funcs = triage.collect()
    conn = db.connect()
    now = time.time()

    stats = {"new": 0, "excluded": 0, "queued": 0, "matched": 0, "unchanged": 0, "skipped_active": 0}

    # triage.collect() only sees functions that still have a raw asm blob or
    # an asm/nonmatching/*.s fragment -- a fully matched function has
    # neither (both get deleted, per the project's own finishing workflow),
    # so it's structurally invisible to collect(). Ingest the matched set
    # directly from source classification instead, so the DB is a complete
    # inventory (needed for real progress tracking, not just "what's left").
    src_status = triage._classify_sources()
    with db.tx(conn):
        for name, status in src_status.items():
            if status == "matched" and name not in funcs:
                cur_state, worker_id = existing_state(conn, name)
                if cur_state is None:
                    conn.execute(
                        "INSERT INTO functions (name, rom_addr, file, state, lines, notes, created_at, updated_at) "
                        "VALUES (?, NULL, 'matched (no raw remnant)', 'matched', 0, '', ?, ?)",
                        (name, now, now),
                    )
                    stats["new"] += 1
                    db.log_event(conn, name, "discovered", "already matched, no raw remnant to score")
                elif cur_state != "matched":
                    conn.execute("UPDATE functions SET state='matched', updated_at=? WHERE name=?", (now, name))
                    db.log_event(conn, name, "state:matched", "rescan found it matched")

    with db.tx(conn):
        for name, f in funcs.items():
            cur_state, worker_id = existing_state(conn, name)

            if f.status == "matched":
                target_state = "matched"
            elif f.not_c_reason:
                target_state = "excluded"
            elif f.status == "in_progress":
                # Already has a real (non-#error) C attempt sitting in a
                # src/*.c -- tier 1's idiom matching doesn't apply (there's
                # already something to search from, not a blank slate), so
                # this goes straight to tier 2 rather than through queued.
                target_state = "tier2_ready"
            else:
                unknowns = triage.unknown_callees(f, funcs)
                target_state = "queued" if not unknowns else "raw"

            s, reasons = triage.score(f, funcs)

            if cur_state is None:
                conn.execute(
                    "INSERT INTO functions (name, rom_addr, file, state, not_c_reason, lines, "
                    "high_regs, stack_bytes, indirect_calls, tractability, notes, created_at, updated_at) "
                    "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)",
                    (name, f.start, f.file, target_state, f.not_c_reason, f.lines,
                     int(f.high_regs), f.stack_bytes, f.indirect_calls, s,
                     "; ".join(reasons), now, now),
                )
                stats["new"] += 1
                db.log_event(conn, name, "discovered", f"initial state={target_state}")
            else:
                # The scanner only ever OWNS a function while it's still in
                # one of triage's own coarse buckets (raw/queued -- purely
                # derived from not_c_reason + unmatched-callee count, with
                # no memory of prior pipeline progress). The instant a real
                # process has moved it further along (tier2_ready and
                # everything downstream: permuting, stalled, validating,
                # needs_human), triage's cruder in_progress/not_started
                # split can't tell "just extracted" from "stalled waiting
                # on tier3" apart -- so the scanner must never touch
                # `state` for those, only refresh cosmetic metadata (file,
                # tractability, notes). Getting this wrong bounces a
                # stalled function back into tier2_ready on every rescan,
                # an infinite loop that looks like progress but isn't.
                #
                # The one exception: a genuinely matched function (someone
                # committed a real fix by hand) is always allowed through,
                # from any state -- that's real news, not scanner noise.
                scanner_owned = {"raw", "queued"}
                if worker_id is not None or (cur_state not in scanner_owned and target_state != "matched"):
                    conn.execute(
                        "UPDATE functions SET file=?, tractability=?, notes=?, updated_at=? WHERE name=?",
                        (f.file, s, "; ".join(reasons), now, name),
                    )
                    stats["skipped_active"] += 1
                elif cur_state != target_state:
                    conn.execute(
                        "UPDATE functions SET state=?, file=?, tractability=?, notes=?, updated_at=? WHERE name=?",
                        (target_state, f.file, s, "; ".join(reasons), now, name),
                    )
                    db.log_event(conn, name, f"state:{target_state}", f"rescan (was {cur_state})")
                    stats[target_state if target_state in stats else "queued"] = \
                        stats.get(target_state, 0) + 1
                else:
                    conn.execute(
                        "UPDATE functions SET file=?, tractability=?, notes=?, updated_at=? WHERE name=?",
                        (f.file, s, "; ".join(reasons), now, name),
                    )
                    stats["unchanged"] += 1

        conn.execute("DELETE FROM edges")
        for name, f in funcs.items():
            for callee in f.callees:
                conn.execute(
                    "INSERT OR IGNORE INTO edges (caller, callee, indirect) VALUES (?, ?, 0)",
                    (name, callee),
                )

    conn.close()
    return stats


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--loop", type=int, default=None, metavar="SECONDS",
                     help="rescan continuously on this interval instead of once")
    args = ap.parse_args()

    while True:
        t0 = time.time()
        stats = scan_once()
        print(f"[{time.strftime('%H:%M:%S')}] scan: {stats} ({time.time()-t0:.1f}s)")
        if args.loop is None:
            break
        time.sleep(max(1, args.loop - (time.time() - t0)))


if __name__ == "__main__":
    main()

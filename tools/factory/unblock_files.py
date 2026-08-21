#!/usr/bin/env python3
"""Draft EVERY `#error` placeholder in a file at once, breaking the
mutual-blocking deadlock that strands whole translation units.

The deadlock, confirmed live: agbcc compiles a whole translation unit, so
one undrafted `#error` sibling fails every function in that file no matter
how correct their own C is. Both tier_m2c and m2c_sweep therefore SKIP any
function that has a blocking sibling -- correct in isolation, but it means
a file holding TWO `#error` placeholders can never make progress: A is
blocked by B, B is blocked by A, and neither is ever drafted. 25 files
(18 with two placeholders, 7 with three = 57 functions) were in exactly
this state, permanently stuck, with no path out under the existing rules.

Found via stall_patterns.py -- not the rule it was built to look for, but
a real structural defect it surfaced anyway.

The fix is per-FILE rather than per-function: generate an m2c seed for
every placeholder in the file simultaneously and splice them all in, so
the unit compiles as a unit. Seeds do not need to be correct here, only
compilable -- once the file builds, every function in it becomes visible
to asm-differ and the permuter again, and the normal pipeline takes over.
A file that still fails to build after this is reverted whole, leaving it
exactly as found.

Usage:
    python3 tools/factory/unblock_files.py [--limit N] [--dry-run]
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

ERROR_RE = re.compile(r'#error "TODO: write (\w+) to match')


def files_with_placeholders(min_count: int = 1) -> list[tuple[Path, list[str]]]:
    out = []
    for c_path in sorted((gitops.REPO / "src").glob("*.c")):
        names = ERROR_RE.findall(c_path.read_text())
        if len(names) >= min_count:
            out.append((c_path, names))
    return out


def unblock(c_path: Path, names: list[str], dry_run: bool) -> tuple[int, str]:
    """-> (functions_drafted, detail). Reverts the whole file on failure."""
    seeds = {}
    for n in names:
        body = m2c_bridge.generate(n)
        if body:
            seeds[n] = body
    if not seeds:
        return 0, "m2c produced nothing for any placeholder in this file"
    if dry_run:
        return len(seeds), f"would draft {sorted(seeds)}"

    with gitops.repo_lock(what=f"unblock {c_path.name}"):
        for n, body in seeds.items():
            if gitops.splice_into_else(n, body) is None:
                gitops.revert_to_clean()
                return 0, f"couldn't splice {n}"
        # Build ONLY this translation unit's object -- NOT a full `make`.
        # A full `make NONMATCHING=1` always fails at the `compare` step by
        # design (a NONMATCHING build deliberately produces a ROM that
        # doesn't match retail), so checking its exit code rejects files
        # that compiled perfectly well. The question here is only "does
        # this unit compile", and that's exactly one object.
        obj = f"build/src/{c_path.stem}.o"
        gitops.run(["rm", "-f", str(gitops.REPO / obj)])
        r = gitops.run(["./container.sh", "make", "NONMATCHING=1", obj])
        if r.returncode != 0:
            gitops.revert_to_clean()
            tail = (r.stdout + r.stderr).strip()[-200:]
            return 0, f"still doesn't compile: {tail}"
        gitops.commit(c_path.stem,
                      f"Draft m2c seeds for {c_path.name}'s #error placeholders\n\n"
                      f"Unblocks the whole translation unit ({', '.join(sorted(seeds))}). "
                      f"Seeds are compilable, not necessarily matching -- the normal "
                      f"permuter/validator pipeline takes it from here.")
    return len(seeds), "drafted"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=None)
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--min-count", type=int, default=1,
                    help="only files with at least this many placeholders "
                         "(2 = just the genuinely deadlocked ones)")
    args = ap.parse_args()

    targets = files_with_placeholders(args.min_count)
    if args.limit:
        targets = targets[: args.limit]
    total_ph = sum(len(n) for _, n in targets)
    print(f"{len(targets)} file(s), {total_ph} placeholder(s)"
          f"{' (dry run)' if args.dry_run else ''}\n")

    conn = db.connect()
    drafted_total, ok_files = 0, 0
    for i, (c_path, names) in enumerate(targets, 1):
        n_drafted, detail = unblock(c_path, names, args.dry_run)
        if n_drafted:
            ok_files += 1
            drafted_total += n_drafted
            print(f"  [{i}/{len(targets)}] {c_path.name}: {n_drafted} drafted ({detail})")
            if not args.dry_run:
                for n in names:
                    row = conn.execute("SELECT state FROM functions WHERE name = ?", (n,)).fetchone()
                    if row and row["state"] in ("raw", "queued", "needs_attempt", "excluded"):
                        with db.tx(conn):
                            db.set_state(conn, n, "tier2_ready", worker_id=None,
                                         candidate_source="m2c",
                                         notes="seeded by unblock_files.py to break a "
                                               "translation-unit deadlock")
                conn.commit()
        else:
            print(f"  [{i}/{len(targets)}] {c_path.name}: SKIPPED -- {detail}")
    conn.close()

    print(f"\n{ok_files}/{len(targets)} files unblocked, {drafted_total} functions drafted")


if __name__ == "__main__":
    main()

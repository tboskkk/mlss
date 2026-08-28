#!/usr/bin/env python3
"""Flag rows whose candidate build fails specifically because of a
cross-file signature disagreement against an ALREADY-MATCHED callee --
`too few arguments to function 'X'`, `conflicting types for 'X'`, or
`redeclared as different kind of symbol` where X's real definition lives
in a DIFFERENT file with a genuinely different signature (often a
different arity or argument order), not something repair_stale_prototype
/ repair_body_signature_mismatch can safely auto-fix (both are
deliberately scoped to same-file, same-arity cases only -- see their own
docstrings in fix_decl_conflicts.py -- because arity/order differences
risk silently reassigning which physical argument goes to which
register, not just a type-checker complaint).

Measured live 2026-08-28: sub_813D570/sub_813D6A8/sub_813C7D8 all fail
this way against sub_813D514 (matched, real signature differs from every
candidate's own guess). Initially mistaken for resource contention until
checked directly on an otherwise-idle pipeline -- deterministic, not
transient.

WHY THIS EXISTS. These rows are otherwise indistinguishable from a good
leaf candidate (their tracked callees ARE all state='matched'), so an
ad hoc "pick the next N leaf rows" query keeps re-selecting them and
burning a full 300s/3-worker search on a build that can never succeed.
Flagging lets a future query filter with `notes NOT LIKE
'%cross-file-arity-dead-end%'`.

DELIBERATELY NON-DESTRUCTIVE: only appends to `notes`, never touches
`state`. tier2/tier_m2c's OWN live scheduling is untouched by this --
this is a standalone maintenance pass, not a wired-in scheduling change,
specifically so it carries no risk to the live pipeline. Safe to run
against a live factory (read-mostly; the only writes are notes appends
under db.tx()).

    python3 tools/factory/flag_dead_ends.py                # scan the leaf pool
    python3 tools/factory/flag_dead_ends.py --limit 50
"""
from __future__ import annotations

import argparse
import re
import sys
import tempfile
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import in_context_permuter as icp  # noqa: E402

TAG = "cross-file-arity-dead-end"

_ARITY_ERR_RE = re.compile(
    r"(?:too few arguments to function|conflicting types for|redeclared as different kind of symbol) "
    r"`(\w+)'"
)


def leaf_pool(conn, limit: int):
    """Same query as the session's own ad hoc leaf-candidate picks:
    unmatched rows whose every TRACKED callee is already matched."""
    rows = conn.execute(
        "SELECT name, candidate_body, objdiff_score FROM functions "
        "WHERE state IN ('tier2_ready','stalled','needs_attempt') "
        "AND candidate_body IS NOT NULL "
        "AND (notes IS NULL OR notes NOT LIKE ?)",
        (f"%{TAG}%",),
    ).fetchall()
    matched = {r["name"] for r in conn.execute(
        "SELECT name FROM functions WHERE state='matched'").fetchall()}
    all_names = {r["name"] for r in conn.execute("SELECT name FROM functions").fetchall()}
    out = []
    for row in rows:
        callees = [r["callee"] for r in conn.execute(
            "SELECT callee FROM edges WHERE caller=?", (row["name"],)).fetchall()]
        tracked = [c for c in callees if c in all_names]
        if not tracked:
            continue
        if all(c in matched for c in tracked):
            out.append(row)
    out.sort(key=lambda r: -(r["objdiff_score"] or 0))
    return out[:limit] if limit else out


def check_one(name: str, body: str, work: Path):
    """Return the offending callee name if this is the cross-file
    arity-dead-end shape, else None. Never raises."""
    try:
        c_path = icp.splice_in_memory(name, body, work)
    except SystemExit:
        return None
    obj = icp.compile_tu(c_path, work, "x")
    if obj is not None:
        return None
    err = None
    for suffix in (".cc.err",):
        p = work / f"x{suffix}"
        if p.is_file() and p.read_text().strip():
            err = p.read_text()
            break
    if not err:
        return None
    m = _ARITY_ERR_RE.search(err)
    if not m:
        return None
    callee = m.group(1)
    if callee == name:
        return None  # a self-declaration issue, different class entirely
    return callee


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--limit", type=int, default=0, help="0 = scan the whole leaf pool")
    args = ap.parse_args()

    conn = db.connect()
    rows = leaf_pool(conn, args.limit)
    print(f"scanning {len(rows)} leaf-pool row(s) not already flagged...")

    work = gitops.REPO / ".scratch_flag_dead_ends_work"
    work.mkdir(exist_ok=True)

    flagged = []
    for i, row in enumerate(rows, 1):
        callee = check_one(row["name"], row["candidate_body"], work)
        if callee:
            flagged.append((row["name"], callee))
            with db.tx(conn):
                cur_notes = conn.execute(
                    "SELECT notes FROM functions WHERE name=?", (row["name"],)
                ).fetchone()["notes"] or ""
                new_notes = (cur_notes + f" [{TAG}: callee {callee} real signature "
                             f"disagrees, cross-file, not auto-fixable]").strip()
                conn.execute("UPDATE functions SET notes=? WHERE name=?",
                             (new_notes, row["name"]))
        if i % 20 == 0:
            print(f"  ...{i}/{len(rows)}", file=sys.stderr)

    import shutil
    shutil.rmtree(work, ignore_errors=True)

    print(f"\nflagged {len(flagged)} row(s) as {TAG}:")
    for name, callee in flagged:
        print(f"  {name} (blocked by {callee})")
    conn.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())

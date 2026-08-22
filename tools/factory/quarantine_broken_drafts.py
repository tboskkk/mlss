#!/usr/bin/env python3
"""Empty the #else drafts that stop a translation unit from compiling, so
every OTHER function in that file becomes measurable again.

WHY THIS EXISTS, and why unblock_files.py does not cover it. agbcc compiles
a whole translation unit, and split_func.py appends every extraction to an
existing src/*.c, so one file holds dozens of unproven #else drafts. If ONE
of them fails to compile, the object fails -- and with it every compile
verdict, every asm-differ score, and every permuter promotion for every
other function in that file. CLAUDE.md section I established that for
SEEDS (measured in a poisoned tree, 613 of them compiled fine alone). The
same poisoning also defeats the promotion path, which is worse, because
that is where finished work is thrown away rather than merely mislabelled:
tier2 reports "no declaration prefix made it match in its real source
file" for a function decomp-permuter has already SOLVED, and the row goes
back to be searched again from nothing, forever.

unblock_files.py solves the adjacent problem -- it DRAFTS `#error`
placeholders so a unit can compile -- and no longer applies: that
convention was replaced by an empty #else, which is already harmless. What
is left is the opposite case, a draft that exists and is wrong.

The fix is deliberately blunt. A draft that does not compile is worth
nothing where it sits (it cannot be scored, permuted or validated), and it
is costing every sibling. Emptying it is safe by the same argument
CLAUDE.md already makes for an empty #else: the #ifndef branch is
untouched so the shipped ROM still gets verbatim retail bytes,
NONMATCHING=1 never builds a shipped ROM, and the guard survives so
progress.py still counts the function as unmatched. Nothing is lost that
is not recoverable -- the candidate body is still in the DB and m2c can
regenerate the seed on demand.

Two safety properties worth stating explicitly:

  * It can only ever touch an #else body INSIDE a guard block. A matched
    function has no guard (that is what matching means), so a matched
    function's code is structurally unreachable from here.
  * If a file still fails after MAX_ROUNDS, it is reverted whole and left
    exactly as found. A file is never left half-edited.

Usage:
    python3 tools/factory/quarantine_broken_drafts.py --dry-run
    python3 tools/factory/quarantine_broken_drafts.py [--limit N] [--files a.c b.c]
"""
from __future__ import annotations

import argparse
import re
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db      # noqa: E402
import gitops  # noqa: E402

REPO = gitops.REPO
MAX_ROUNDS = 4
LOCK_BREATH_S = 0.5

PLACEHOLDER = """/* Draft quarantined: it did not compile, and under agbcc a single bad
   draft fails the WHOLE translation unit -- taking every sibling's compile
   verdict, asm-differ score and permuter promotion down with it. Emptied by
   tools/factory/quarantine_broken_drafts.py. The guard is intact, so the
   real ROM still gets the verbatim retail bytes and progress.py still counts
   this as unmatched; the candidate body is still in the state DB and m2c can
   regenerate the seed. Write real C here to replace this comment. */"""

DIAG = re.compile(r'^src/([A-Za-z0-9_]+)\.c:(\d+):')


def guard_blocks(lines: list[str]):
    """(fn_name, else_idx, endif_idx) for each #ifndef NONMATCHING block."""
    out, i = [], 0
    while i < len(lines):
        if lines[i].strip() == "#ifndef NONMATCHING":
            e = n = None
            depth = 0
            j = i + 1
            while j < len(lines):
                s = lines[j].strip()
                if s.startswith("#if"):
                    depth += 1
                elif s == "#else" and depth == 0 and e is None:
                    e = j
                elif s == "#endif":
                    if depth == 0:
                        n = j
                        break
                    depth -= 1
                j += 1
            if e is not None and n is not None:
                m = re.search(r'asm/nonmatching/([A-Za-z0-9_]+)\.s',
                              "\n".join(lines[i:e]))
                out.append((m.group(1) if m else "?", e, n))
                i = n
        i += 1
    return out


def compile_stem(stem: str):
    """(returncode, [diagnostic lines]) for one object under NONMATCHING=1.

    Deletes the object on every exit path. A NONMATCHING object left in
    build/ gets LINKED by the next plain make -- Make cannot see that
    -DNONMATCHING is not a file -- which silently corrupts the ROM and
    makes every downstream health check lie (CLAUDE.md).
    """
    objs = (REPO / f"build/src/{stem}.o", REPO / f"build/src/{stem}.s")
    for p in objs:
        p.unlink(missing_ok=True)
    try:
        r = gitops.run(["./container.sh", "make", f"build/src/{stem}.o", "NONMATCHING=1"])
        return r.returncode, (r.stdout + r.stderr).splitlines()
    finally:
        for p in objs:
            p.unlink(missing_ok=True)


def blamed_blocks(stem: str, diags: list[str], lines: list[str]) -> set:
    """Guard blocks containing at least one reported diagnostic line."""
    blocks = guard_blocks(lines)
    hit = set()
    for d in diags:
        m = DIAG.match(d.strip())
        if not m or m.group(1) != stem:
            continue
        ln = int(m.group(2)) - 1          # diagnostics are 1-indexed
        for name, e, n in blocks:
            if e < ln <= n:
                hit.add((name, e, n))
                break
    return hit


def quarantine(path: Path, dry_run: bool) -> str:
    stem = path.stem
    rc, out = compile_stem(stem)
    if rc == 0:
        return "already compiles"

    original = path.read_text()
    emptied: list[str] = []
    for _ in range(MAX_ROUNDS):
        lines = path.read_text().splitlines()
        hits = blamed_blocks(stem, out, lines)
        # Only blocks that still have a real draft in them are worth emptying.
        hits = {h for h in hits
                if "".join(lines[h[1] + 1:h[2]]).strip()
                and "Draft quarantined" not in "\n".join(lines[h[1] + 1:h[2]])}
        if not hits:
            break
        for name, e, n in sorted(hits, key=lambda h: -h[1]):   # back to front
            lines[e + 1:n] = PLACEHOLDER.splitlines()
            emptied.append(name)
        path.write_text("\n".join(lines) + "\n")
        rc, out = compile_stem(stem)
        if rc == 0:
            break

    if rc != 0:
        path.write_text(original)
        return f"STILL BROKEN after emptying {len(emptied)} -- reverted, left as found"
    if not emptied:
        return "compiles now (no draft needed emptying)"
    if dry_run:
        path.write_text(original)
        return f"WOULD FIX by emptying {len(emptied)}: {', '.join(emptied)}"
    return f"FIXED by emptying {len(emptied)}: {', '.join(emptied)}"


def target_files(conn, explicit):
    if explicit:
        return [REPO / "src" / f if not f.startswith("src/") else REPO / f
                for f in explicit]
    # Files that own work the pipeline is actively blocked on: anything
    # queued for the permuter, stalled, or already solved in isolation.
    names = {r["name"] for r in conn.execute(
        "SELECT name FROM functions WHERE state IN ('tier2_ready','stalled','needs_attempt')")}
    owners = {}
    for p in sorted(Path("src").glob("*.c")):
        found = set(re.findall(r'asm/nonmatching/([A-Za-z0-9_]+)\.s', p.read_text()))
        if found & names:
            owners[p] = len(found & names)
    return [p for p, _ in sorted(owners.items(), key=lambda kv: -kv[1])]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--limit", type=int, default=None)
    ap.add_argument("--files", nargs="*", default=None)
    args = ap.parse_args()

    conn = db.connect(readonly=True)
    files = target_files(conn, args.files)
    if args.limit:
        files = files[: args.limit]
    print(f"{len(files)} file(s) to check\n", flush=True)

    tally: dict[str, int] = {}
    for i, p in enumerate(files, 1):
        rel = p.relative_to(REPO) if p.is_absolute() else p
        try:
            with gitops.repo_lock(what=f"quarantine {rel}"):
                verdict = quarantine(REPO / rel, args.dry_run)
        except Exception as e:
            verdict = f"error: {e}"
        key = verdict.split(":")[0].split(" --")[0]
        tally[key] = tally.get(key, 0) + 1
        if not verdict.startswith("already compiles"):
            print(f"  [{i}/{len(files)}] {str(rel):34} {verdict}", flush=True)
        time.sleep(LOCK_BREATH_S)

    print("\n=== summary ===")
    for k, v in sorted(tally.items(), key=lambda kv: -kv[1]):
        print(f"  {v:5}  {k}")


if __name__ == "__main__":
    main()

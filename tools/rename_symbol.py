#!/usr/bin/env python3
"""Rename a symbol everywhere in asm/, src/, and include/ - a whole-word,
whole-project find/replace with a collision check first.

    ./container.sh tools/rename_symbol.py <old_name> <new_name> [--dry-run]

This is a pure text rename: it doesn't know what the symbol *is* (a
function, a struct, a #define), it just replaces every whole-word
occurrence. That's almost always safe for this project's naming (auto-
generated sub_XXXXXXX / dword_XXXXXXX / _0XXXXXXX names, or a fresh real
name nothing else could plausibly collide with) - check the dry run if
you're renaming something more common.
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

SEARCH_DIRS = ["asm", "src", "include"]
SEARCH_EXTS = {".s", ".c", ".h", ".inc"}


def find_files():
    for d in SEARCH_DIRS:
        for path in (splitlib.ROOT / d).rglob("*"):
            if path.is_file() and path.suffix in SEARCH_EXTS:
                yield path


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("old_name")
    ap.add_argument("new_name")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--force", action="store_true", help="rename even if new_name already exists somewhere")
    args = ap.parse_args()

    old_re = re.compile(rf"\b{re.escape(args.old_name)}\b")
    new_re = re.compile(rf"\b{re.escape(args.new_name)}\b")

    if not args.force:
        collisions = [p for p in find_files() if new_re.search(p.read_text(errors="replace"))]
        if collisions:
            rel = ", ".join(str(p.relative_to(splitlib.ROOT)) for p in collisions)
            raise SystemExit(
                f"{args.new_name!r} already appears in: {rel}\n"
                f"Pick a different name, or re-run with --force if that's expected."
            )

    total_files = 0
    total_hits = 0
    for path in find_files():
        text = path.read_text(errors="replace")
        hits = len(old_re.findall(text))
        if not hits:
            continue
        total_files += 1
        total_hits += hits
        print(f"{path.relative_to(splitlib.ROOT)}: {hits}")
        if not args.dry_run:
            path.write_text(old_re.sub(args.new_name, text))

    if total_hits == 0:
        raise SystemExit(f"{args.old_name!r} not found anywhere under {SEARCH_DIRS}")

    verb = "would rename" if args.dry_run else "renamed"
    print(f"\n{verb} {total_hits} occurrence(s) across {total_files} file(s): {args.old_name} -> {args.new_name}")


if __name__ == "__main__":
    main()

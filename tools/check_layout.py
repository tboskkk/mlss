#!/usr/bin/env python3
"""Assert the linked ROM layout hasn't shifted, straight from mlss.map.

    ./container.sh tools/check_layout.py          # exit 0 clean, 1 if shifted
    ./container.sh tools/check_layout.py --quiet  # print only on failure

Why this exists: an extraction can silently push every symbol after it
forward by two bytes (GNU as rounds a section's size up to its alignment,
and `thumb_func_start` expands to `.align 2, 0` - see CLAUDE.md's landmine
on this). `make` does catch it, but only as a bare `mlss.gba: FAILED`
checksum mismatch, which reads like "the toolchain broke" and, in the
factory, presents as a flood of failed matches rather than as one bad
extraction. Every match after that point fails to validate, so the visible
symptom is a `needs_human`/`stalled` spike - the exact wrong place to start
looking.

This turns that into a one-line diagnosis. Luvdis names every unidentified
function after its own ROM address, so the symbol name IS an assertion
about where it must link: parse the map, find the first `sub_XXXXXXX` whose
linked address isn't `0xXXXXXXX`, and the object contribution just before it
is the culprit. One pass over a 1MB text file, no rebuild, no bisect.

Reads mlss.map only - no build, no repo mutation, so it is safe to run
against a live factory without taking gitops.repo_lock().
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--map", type=Path, default=splitlib.MAP_FILE,
                    help="map file to check (default: mlss.map)")
    ap.add_argument("--quiet", action="store_true", help="print nothing unless it's broken")
    args = ap.parse_args()

    problems = splitlib.verify_layout(args.map)

    if not problems:
        if not args.quiet:
            outputs = splitlib.parse_output_sections(args.map)
            addr, size = outputs[".text"]
            print(f"layout OK - .text 0x{addr:08X} size 0x{size:X}, "
                  f"every self-addressed symbol links at its own address")
        return 0

    print("ROM LAYOUT SHIFTED:", file=sys.stderr)
    for p in problems:
        print(f"  {p}", file=sys.stderr)
    print("\nMost likely cause: an extraction whose object got padded to a 4-byte\n"
          "boundary when the next function sits at a 2-mod-4 address. Revert the\n"
          "extraction named above, or re-run split_func.py - it now emits\n"
          "non_word_aligned_thumb_func_start for exactly this case.", file=sys.stderr)
    return 1


if __name__ == "__main__":
    raise SystemExit(main())

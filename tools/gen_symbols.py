#!/usr/bin/env python3
"""Regenerate symbols.txt from tools/symbols/*.txt.

    ./container.sh tools/gen_symbols.py

Why this is split up: symbols.txt is where you manually pin the address of
anything referenced from decompiled code that still lives inside an
un-split asm blob (the linker can't resolve it normally because there's no
real symbol there yet - see CLAUDE.md). One flat file was fine at 48
entries; it will not be fine once every subsystem is adding to it. Splitting
by memory region (which is also, not coincidentally, the thing that
determines an address's *meaning* on the GBA) keeps merge conflicts and
review diffs scoped to whoever's actually touching that region.

No YAML needed here - each region file is already in the exact
`name = 0xADDRESS;` syntax the linker's --just-symbols wants, so this is a
concatenation, not a format conversion.
"""
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SYMBOLS_DIR = ROOT / "tools" / "symbols"
OUT_FILE = ROOT / "symbols.txt"

# Fixed order (not alphabetical) so the generated file reads low-address-
# space to high: EWRAM, then IWRAM, then ROM.
REGIONS = ["ewram", "iwram", "rom"]

HEADER = """\
/* GENERATED FILE. Do not hand-edit.
 * Edit tools/symbols/*.txt and run tools/gen_symbols.py to regenerate. */

"""


def main() -> None:
    parts = [HEADER]
    for region in REGIONS:
        path = SYMBOLS_DIR / f"{region}.txt"
        if not path.exists():
            raise SystemExit(f"missing {path}")
        parts.append(path.read_text().rstrip("\n") + "\n\n")
    OUT_FILE.write_text("".join(parts).rstrip("\n") + "\n")

    n = sum(1 for region in REGIONS for line in (SYMBOLS_DIR / f"{region}.txt").read_text().splitlines() if "=" in line and line.strip().endswith(";"))
    print(f"wrote {OUT_FILE.relative_to(ROOT)}: {n} symbols from {len(REGIONS)} region files")


if __name__ == "__main__":
    main()

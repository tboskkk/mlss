#!/usr/bin/env python3
"""Scan the retail ROM for GBA BIOS-compressed data blocks (LZ77, RLE,
Huffman - see GBATEK "BIOS Decompression Functions").

    ./container.sh tools/find_compressed_blocks.py [--start ADDR] [--end ADDR]

Every GBA BIOS-compressed block starts with a 4-byte header: byte 0's low
nibble is format-specific (0 for LZ77/RLE, a bit-width for Huffman), high
nibble is the type (1=LZ77, 2=Huffman, 3=RLE); bytes 1-3 are the 24-bit
decompressed size, little-endian. That header alone is a weak signal (1 in
~4096 random 4-byte windows would coincidentally look like *something*'s
header) - LZ77 and RLE candidates here are only reported after actually
running them through tools/gba_compress.py's real decompressors and
confirming a clean decode at exactly the claimed size, with no out-of-
bounds or invalid back-references. That's about as strong as validation
gets without a cross-reference (a pointer to the block from code, which
tools/find_pointer_tables.py looks for separately). Huffman candidates are
header-only (no decoder here yet) and noted as lower-confidence.

To actually get the decompressed bytes onto disk (not just a size in this
report), see tools/extract_assets.py - it uses the same gba_compress.py
codecs.

Defaults to scanning both rodata blobs' address range; pass --start/--end
to scan anywhere else (e.g. inside asm/text0801A548.s's sprite data).
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib
from gba_compress import scan as scan_compressed

BASEROM = splitlib.ROOT / "baserom.gba"
ROM_BASE = 0x08000000

# asm/rodata081DD790.s through the end of asm/rodata081E2764.s, i.e. all of
# rodata - see tools/splits.yaml's "rodata" group.
DEFAULT_START = 0x081DD790
DEFAULT_END = 0x08F50000  # asm/mariobros.s picks up from here; see CLAUDE.md


def huffman_candidate(data: bytes, off: int, max_size: int):
    if off + 4 > len(data):
        return None
    b0 = data[off]
    if (b0 & 0xF0) != 0x20 or (b0 & 0x0F) not in (1, 2, 4, 8):
        return None
    size = data[off + 1] | (data[off + 2] << 8) | (data[off + 3] << 16)
    if size == 0 or size > max_size:
        return None
    return size


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--start", type=lambda s: int(s, 0), default=DEFAULT_START)
    ap.add_argument("--end", type=lambda s: int(s, 0), default=DEFAULT_END)
    ap.add_argument("--max-size", type=int, default=1 << 20, help="reject candidates claiming a bigger decompressed size than this (default 1MB)")
    ap.add_argument("--min-size", type=int, default=32,
                     help="hide LZ77/RLE matches decompressing to fewer than this many bytes (default 32) "
                          "- a clean decode of a handful of bytes isn't strong evidence on its own; "
                          "GBA compressed data is essentially never used for anything that tiny anyway")
    ap.add_argument("--show-huffman-candidates", action="store_true",
                     help="also list Huffman header-pattern hits (unvalidated - no tree decoder here yet, "
                          "expect this to be mostly noise; off by default for exactly that reason")
    args = ap.parse_args()

    if not BASEROM.exists():
        raise SystemExit(f"{BASEROM} not found - this needs your own dumped retail ROM present.")
    rom = BASEROM.read_bytes()

    lo, hi = args.start - ROM_BASE, args.end - ROM_BASE
    all_hits = scan_compressed(rom, lo, hi, min_size=1, max_size=args.max_size)
    confirmed = [(ROM_BASE + off, kind, consumed, len(dec)) for off, kind, consumed, dec in all_hits
                 if len(dec) >= args.min_size]
    hidden = len(all_hits) - len(confirmed)

    huffman = []
    if args.show_huffman_candidates:
        # Not worth excluding bytes already covered by a confirmed LZ77/RLE
        # hit here - this output is already caveated as noisy and off by
        # default; a byte coincidentally looking like *both* is rare enough
        # not to bother with the interval bookkeeping.
        for off in range(lo, hi):
            size = huffman_candidate(rom, off, args.max_size)
            if size:
                huffman.append((ROM_BASE + off, "Huffman?", None, size))

    print(f"{'address':<12}{'type':<10}{'compressed':>12}{'decompressed':>14}")
    for addr, kind, consumed, size in confirmed + huffman:
        c = f"{consumed:,}" if consumed else "?"
        print(f"0x{addr:08X}  {kind:<10}{c:>12}{size:>14,}")

    print(f"\n{len(confirmed)} confirmed (fully decompressed and verified, >= {args.min_size}B), "
          f"{hidden} smaller matches hidden (--min-size 0 to show), "
          f"{len(huffman)} Huffman header-only candidates"
          + ("" if args.show_huffman_candidates else " (hidden - pass --show-huffman-candidates)")
          + f", scanned 0x{args.start:08X}-0x{args.end:08X}")


if __name__ == "__main__":
    main()

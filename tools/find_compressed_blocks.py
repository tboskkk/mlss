#!/usr/bin/env python3
"""Scan the retail ROM for GBA BIOS-compressed data blocks (LZ77, RLE,
Huffman — see GBATEK "BIOS Decompression Functions").

    ./container.sh tools/find_compressed_blocks.py [--start ADDR] [--end ADDR]

Every GBA BIOS-compressed block starts with a 4-byte header: byte 0's low
nibble is format-specific (0 for LZ77/RLE, a bit-width for Huffman), high
nibble is the type (1=LZ77, 2=Huffman, 3=RLE); bytes 1-3 are the 24-bit
decompressed size, little-endian. That header alone is a weak signal (1 in
~4096 random 4-byte windows would coincidentally look like *something*'s
header) — LZ77 and RLE candidates here are only reported after actually
running them through a real decompressor and confirming it terminates
cleanly at exactly the claimed size with no out-of-bounds or invalid
back-references. That's about as strong as validation gets without a
cross-reference (a pointer to the block from code, which
tools/find_pointer_tables.py looks for separately). Huffman candidates are
header-only (no decoder here yet) and noted as lower-confidence.

Defaults to scanning both rodata blobs' address range; pass --start/--end
to scan anywhere else (e.g. inside asm/text0801A548.s's sprite data).
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

BASEROM = splitlib.ROOT / "baserom.gba"
ROM_BASE = 0x08000000

# asm/rodata081DD790.s through the end of asm/rodata081E2764.s, i.e. all of
# rodata — see tools/splits.yaml's "rodata" group.
DEFAULT_START = 0x081DD790
DEFAULT_END = 0x08F50000  # asm/mariobros.s picks up from here; see CLAUDE.md


def try_lz77(data: bytes, off: int, max_size: int):
    if off + 4 > len(data) or (data[off] & 0x0F) != 0 or (data[off] & 0xF0) != 0x10:
        return None
    size = data[off + 1] | (data[off + 2] << 8) | (data[off + 3] << 16)
    if size == 0 or size > max_size:
        return None
    pos = off + 4
    out_len = 0
    out = bytearray()
    end = min(len(data), off + 4 + max_size * 2)  # sane upper bound on scan
    while out_len < size:
        if pos >= end:
            return None
        flags = data[pos]
        pos += 1
        for bit in range(7, -1, -1):
            if out_len >= size:
                break
            if flags & (1 << bit):
                if pos + 2 > end:
                    return None
                b1, b2 = data[pos], data[pos + 1]
                pos += 2
                length = (b1 >> 4) + 3
                disp = ((b1 & 0x0F) << 8 | b2) + 1
                if disp > out_len:
                    return None
                for _ in range(length):
                    if out_len >= size:
                        break
                    out.append(out[out_len - disp])
                    out_len += 1
            else:
                if pos >= end:
                    return None
                out.append(data[pos])
                pos += 1
                out_len += 1
    return pos - off, size


def try_rle(data: bytes, off: int, max_size: int):
    if off + 4 > len(data) or (data[off] & 0x0F) != 0 or (data[off] & 0xF0) != 0x30:
        return None
    size = data[off + 1] | (data[off + 2] << 8) | (data[off + 3] << 16)
    if size == 0 or size > max_size:
        return None
    pos = off + 4
    out_len = 0
    end = min(len(data), off + 4 + max_size * 2)
    while out_len < size:
        if pos >= end:
            return None
        flag = data[pos]
        pos += 1
        length = (flag & 0x7F)
        if flag & 0x80:
            length += 3
            if pos >= end:
                return None
            pos += 1
        else:
            length += 1
            if pos + length > end:
                return None
            pos += length
        out_len += length
    if out_len != size:
        return None
    return pos - off, size


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
                          "— a clean decode of a handful of bytes isn't strong evidence on its own; "
                          "GBA compressed data is essentially never used for anything that tiny anyway")
    ap.add_argument("--show-huffman-candidates", action="store_true",
                     help="also list Huffman header-pattern hits (unvalidated — no tree decoder here yet, "
                          "expect this to be mostly noise; off by default for exactly that reason")
    args = ap.parse_args()

    if not BASEROM.exists():
        raise SystemExit(f"{BASEROM} not found — this needs your own dumped retail ROM present.")
    rom = BASEROM.read_bytes()

    lo, hi = args.start - ROM_BASE, args.end - ROM_BASE
    found = []
    off = lo
    while off < hi:
        r = try_lz77(rom, off, args.max_size)
        if r:
            consumed, size = r
            found.append((ROM_BASE + off, "LZ77", consumed, size))
            off += consumed
            continue
        r = try_rle(rom, off, args.max_size)
        if r:
            consumed, size = r
            found.append((ROM_BASE + off, "RLE", consumed, size))
            off += consumed
            continue
        if args.show_huffman_candidates:
            size = huffman_candidate(rom, off, args.max_size)
            if size:
                found.append((ROM_BASE + off, "Huffman?", None, size))
        off += 1

    confirmed = [f for f in found if f[1] != "Huffman?" and f[3] >= args.min_size]
    huffman = [f for f in found if f[1] == "Huffman?"]
    hidden = len(found) - len(confirmed) - len(huffman)

    print(f"{'address':<12}{'type':<10}{'compressed':>12}{'decompressed':>14}")
    for addr, kind, consumed, size in confirmed + huffman:
        c = f"{consumed:,}" if consumed else "?"
        print(f"0x{addr:08X}  {kind:<10}{c:>12}{size:>14,}")

    print(f"\n{len(confirmed)} confirmed (fully decompressed and verified, >= {args.min_size}B), "
          f"{hidden} smaller matches hidden (--min-size 0 to show), "
          f"{len(huffman)} Huffman header-only candidates"
          + ("" if args.show_huffman_candidates else " (hidden — pass --show-huffman-candidates)")
          + f", scanned 0x{args.start:08X}-0x{args.end:08X}")


if __name__ == "__main__":
    main()

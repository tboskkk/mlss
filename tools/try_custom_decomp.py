#!/usr/bin/env python3
"""EXPERIMENTAL: try the custom LZ-style decompressor found via web research
into the community Yoshi Magic editor's `Sprite Viewer.vb` (`decomp()` sub) -
NOT a GBA BIOS format (LZ77/RLE/Huffman), a game-specific scheme
`gba_compress.py` doesn't implement. Ported here to test the hypothesis
(docs/formats/README.md's "Full ROM asset map" section) that this project's
biggest genuinely-unclassified rodata gaps are compressed with THIS scheme
rather than being some other kind of unknown data.

Algorithm (as read from the VB source, not guessed): a control byte's top 3
bits select one of 5 behaviors --
  bits 7-5 < 4 (i.e. byte < 0x80): LZ77-style back-reference copy. Length =
    (byte>>2)+2, from a sliding window up to 1024 bytes back (byte's low 2
    bits + a second byte give a 10-bit distance value, offset by -1024).
    Terminates on the literal sequence (arg1=0x7F, next byte=0xFF).
  0x80-0x9F: literal byte copy, count = (byte&0x1F)+1.
  0xA0-0xBF: (zero, literal) byte pairs, count = (byte&0x1F)+1 pairs.
  0xC0-0xDF: repeat one byte, count = (byte&0x1F)+2.
  0xE0-0xFF: zero-fill, count = (byte&0x1F)+1, extended by a further byte's
    worth of zeros when the control byte is exactly 0xFF.

NOT validated yet the way gba_compress.py's LZ77/RLE are (round-tripped
against a known-correct reference) -- this is a first empirical test: does
decoding real ROM bytes from this project's own unclassified gaps ever
cleanly hit the real terminator, the same "did it terminate honestly"
signal gba_compress.py already trusts for the BIOS formats.

    ./container.sh tools/try_custom_decomp.py [--start ADDR] [--end ADDR]
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

BASEROM = splitlib.ROOT / "baserom.gba"
ROM_BASE = 0x08000000

WINDOW = 1024


def decomp_custom(data: bytes, off: int, max_iters: int = 0x1000, max_output: int = 1 << 20):
    """Returns (decompressed_bytes, consumed_byte_count) on a clean terminator hit,
    else None. `off` is a byte offset into `data` (not a ROM address)."""
    n = len(data)
    if off >= n:
        return None
    pos = off + 1
    skip = (data[off] >> 6) + 1
    pos += skip
    if pos > n:
        return None

    out = bytearray()
    for _ in range(max_iters):
        if pos >= n:
            return None
        arg1 = data[pos]
        pos += 1
        case = arg1 >> 5

        if case < 4:
            if pos >= n:
                return None
            data1 = data[pos]
            pos += 1
            if arg1 == 0x7F and data1 == 0xFF:
                return bytes(out), pos - off
            count = (arg1 >> 2) + 2
            dist = ((arg1 & 0x3) << 8) | data1
            for _ in range(count):
                src = len(out) - WINDOW + dist
                if src < 0 or src >= len(out):
                    return None
                out.append(out[src])
        elif case == 4:
            count = (arg1 & 0x1F) + 1
            if pos + count > n:
                return None
            out += data[pos : pos + count]
            pos += count
        elif case == 5:
            count = (arg1 & 0x1F) + 1
            for _ in range(count):
                out.append(0)
                if pos >= n:
                    return None
                out.append(data[pos])
                pos += 1
        elif case == 6:
            if pos >= n:
                return None
            data1 = data[pos]
            pos += 1
            count = (arg1 & 0x1F) + 2
            out += bytes([data1]) * count
        else:  # case == 7
            count = (arg1 & 0x1F) + 1
            out += bytes(count)
            if arg1 == 0xFF:
                if pos >= n:
                    return None
                data1 = data[pos]
                pos += 1
                out += bytes(data1)

        if len(out) > max_output:
            return None
    return None


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--start", type=lambda s: int(s, 0), default=0x081DD790)
    ap.add_argument("--end", type=lambda s: int(s, 0), default=0x08F50000)
    ap.add_argument("--min-size", type=int, default=64, help="hide decodes smaller than this many bytes")
    ap.add_argument("--stride", type=int, default=1, help="try every Nth byte offset as a candidate start (1=exhaustive)")
    args = ap.parse_args()

    if not BASEROM.exists():
        raise SystemExit(f"{BASEROM} not found - this needs your own dumped retail ROM present.")
    rom = BASEROM.read_bytes()
    lo, hi = args.start - ROM_BASE, args.end - ROM_BASE

    hits = []
    off = lo
    while off < hi:
        r = decomp_custom(rom, off)
        if r is not None:
            dec, consumed = r
            if len(dec) >= args.min_size:
                hits.append((ROM_BASE + off, consumed, len(dec)))
            off += max(consumed, 1)
        else:
            off += args.stride

    print(f"{len(hits)} clean decode(s) in 0x{args.start:08X}-0x{args.end:08X} (>= {args.min_size}B decompressed)")
    for addr, consumed, size in hits[:200]:
        print(f"0x{addr:08X}  compressed={consumed:>8,}  decompressed={size:>9,}")


if __name__ == "__main__":
    main()

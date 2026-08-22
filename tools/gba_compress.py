#!/usr/bin/env python3
"""Real GBA BIOS-compression codecs (LZ77, RLE) - shared by
tools/find_compressed_blocks.py (which only needs "does this decode
cleanly") and tools/extract_assets.py (which needs the actual bytes).

Not a CLI. See GBATEK "BIOS Decompression Functions" for the format specs
these implement.
"""
from __future__ import annotations


def decompress_lz77(data: bytes, off: int, max_size: int = 1 << 24):
    """Decode a GBA LZ77 block at data[off:]. Returns (compressed_bytes_
    consumed, decompressed_bytes) on a clean decode, or None - out of
    bounds, an invalid (forward/self-past-start) back-reference, or a
    final size that doesn't match the header's claim all count as
    "not really LZ77 here", not an error."""
    if off + 4 > len(data) or (data[off] & 0x0F) != 0 or (data[off] & 0xF0) != 0x10:
        return None
    size = data[off + 1] | (data[off + 2] << 8) | (data[off + 3] << 16)
    if size == 0 or size > max_size:
        return None

    pos = off + 4
    out = bytearray()
    end = min(len(data), off + 4 + max_size * 2)  # sane upper bound on scan

    while len(out) < size:
        if pos >= end:
            return None
        flags = data[pos]
        pos += 1
        for bit in range(7, -1, -1):
            if len(out) >= size:
                break
            if flags & (1 << bit):
                if pos + 2 > end:
                    return None
                b1, b2 = data[pos], data[pos + 1]
                pos += 2
                length = (b1 >> 4) + 3
                disp = ((b1 & 0x0F) << 8 | b2) + 1
                if disp > len(out):
                    return None
                for _ in range(length):
                    if len(out) >= size:
                        break
                    out.append(out[len(out) - disp])
            else:
                if pos >= end:
                    return None
                out.append(data[pos])
                pos += 1

    if len(out) != size:
        return None
    return pos - off, bytes(out)


def decompress_rle(data: bytes, off: int, max_size: int = 1 << 24):
    """Decode a GBA RLE block at data[off:]. Same return convention as
    decompress_lz77."""
    if off + 4 > len(data) or (data[off] & 0x0F) != 0 or (data[off] & 0xF0) != 0x30:
        return None
    size = data[off + 1] | (data[off + 2] << 8) | (data[off + 3] << 16)
    if size == 0 or size > max_size:
        return None

    pos = off + 4
    out = bytearray()
    end = min(len(data), off + 4 + max_size * 2)

    while len(out) < size:
        if pos >= end:
            return None
        flag = data[pos]
        pos += 1
        length = flag & 0x7F
        if flag & 0x80:
            length += 3
            if pos >= end:
                return None
            out.extend([data[pos]] * length)
            pos += 1
        else:
            length += 1
            if pos + length > end:
                return None
            out.extend(data[pos : pos + length])
            pos += length

    if len(out) != size:
        return None
    return pos - off, bytes(out)


def decompress_any(data: bytes, off: int, max_size: int = 1 << 24):
    """(kind, compressed_size, decompressed_bytes) trying LZ77 then RLE,
    or None if neither decodes cleanly here."""
    r = decompress_lz77(data, off, max_size)
    if r:
        return "LZ77", r[0], r[1]
    r = decompress_rle(data, off, max_size)
    if r:
        return "RLE", r[0], r[1]
    return None


def scan(data: bytes, start: int, end: int, min_size: int = 32, max_size: int = 1 << 20):
    """Every confirmed LZ77/RLE block in data[start:end] (byte offsets, not
    ROM addresses - callers add their own base). One shared scan loop for
    find_compressed_blocks.py and extract_assets.py so they can't drift."""
    found = []
    off = start
    while off < end:
        r = decompress_any(data, off, max_size)
        if r:
            kind, consumed, decompressed = r
            if len(decompressed) >= min_size:
                found.append((off, kind, consumed, decompressed))
            off += consumed
        else:
            off += 1
    return found

#!/usr/bin/env python3
"""Real GBA BIOS-compression codecs (LZ77, RLE) plus this game's own
custom LZ-style codec - shared by tools/find_compressed_blocks.py (which
only needs "does this decode cleanly") and tools/extract_assets.py (which
needs the actual bytes).

Not a CLI. See GBATEK "BIOS Decompression Functions" for the two BIOS
format specs. The custom codec is NOT a BIOS format and GBATEK doesn't
have it - see decompress_custom_lz's docstring.
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


def decompress_custom_lz(data: bytes, off: int, max_size: int = 1 << 24):
    """Decode this game's own (non-BIOS) custom LZ-style block at data[off:].
    Same return convention as decompress_lz77/decompress_rle: (compressed_
    bytes_consumed, decompressed_bytes) on a clean decode - reached the
    literal terminator sequence with output length matching the header's
    declared size exactly - else None.

    NOT a GBA BIOS format. Transcribed directly from the game's own ARM
    decompressor at ROM 0x08000534 (264 bytes, copied to heap at boot,
    called through the installed IWRAM function pointer dword_3000C84 /
    header-reader sub_80198B0 - that call site is the authoritative way to
    identify a stream; this brute-force byte scan is the fallback for
    everything not yet reached from a call site). Used extensively for
    boot/title/menu graphics and elsewhere in rodata. Full derivation:
    docs/formats/README.md's "Custom sprite compression" section.

    Header: byte 0's top 2 bits are an extra-byte count (0-3), read
    little-endian-ish and shifted in after the low 6 bits of byte 0;
    decompressed size is that value + 1. Then a stream of control bytes:
    high bit set selects one of four fixed-length/fill behaviors (via the
    next 2 bits); high bit clear is a sliding-window back-reference copy
    (10-bit distance, up to 1024 bytes back, overlapping copies allowed for
    run-length expansion) EXCEPT the specific byte pair 0x7F 0xFF, which is
    the terminator sentinel.

    An earlier port (tools/try_custom_decomp.py, since corrected to defer
    to this function) had three bugs that made it report a real negative
    result for a format that, once actually decoded, explains a meaningful
    share of this project's previously-"genuinely unclassified" rodata:
    an off-by-one header skip, a 4,096-op iteration cap that silently
    rejected large real streams, and no declared-size validation (so a
    lucky terminator-byte coincidence read as a false "clean decode").
    This function fixes all three - unbounded iteration (bounded instead by
    the same max_size/scan-window convention as the two BIOS decoders
    above) and a strict len(out) == declared_size check at the terminator.
    """
    if off >= len(data):
        return None
    b0 = data[off]
    n_extra = b0 >> 6
    size = b0 & 0x3F
    pos = off + 1
    shift = 6
    for _ in range(n_extra):
        if pos >= len(data):
            return None
        size |= data[pos] << shift
        pos += 1
        shift += 8
    size += 1
    if size > max_size:
        return None

    out = bytearray()
    end = min(len(data), off + 4 + max_size * 2)  # sane upper bound on scan, mirrors the two decoders above

    while pos < end:
        ctl = data[pos]
        pos += 1
        if ctl & 0x80:
            ln = (ctl & 0x1F) + 1
            op = ctl & 0x60
            if op == 0x00:                           # literal run
                if pos + ln > end:
                    return None
                out += data[pos : pos + ln]
                pos += ln
            elif op == 0x20:                          # (zero, literal) pairs
                for _ in range(ln):
                    if pos >= end:
                        return None
                    out.append(0)
                    out.append(data[pos])
                    pos += 1
            elif op == 0x40:                          # byte-repeat run
                if pos >= end:
                    return None
                out += bytes([data[pos]]) * (ln + 1)
                pos += 1
            else:                                     # 0x60: zero fill, extended by one more byte when ctl==0xFF
                if ctl == 0xFF:
                    if pos >= end:
                        return None
                    ln = data[pos] + 32
                    pos += 1
                out += bytes(ln)
        else:
            if pos >= end:
                return None
            b2 = data[pos]
            pos += 1
            if ctl == 0x7F and b2 == 0xFF:
                if len(out) != size:
                    return None
                return pos - off, bytes(out)
            dist = ((ctl & 0x3) << 8) | b2
            back = 1024 - dist
            if back <= 0 or back > len(out):
                return None
            for _ in range(2 + (ctl >> 2)):
                out.append(out[len(out) - back])
        if len(out) > size:
            return None

    return None


def decompress_any(data: bytes, off: int, max_size: int = 1 << 24):
    """(kind, compressed_size, decompressed_bytes) trying LZ77, then this
    game's own custom-LZ, then RLE at this exact offset - or None if none
    decodes cleanly here.

    Custom-LZ is tried before RLE at a given offset on general principle
    (prefer the more specific/game-native format when both would claim the
    same start byte), but this alone does NOT fix the false-positive class
    documented on decompress_custom_lz and in docs/formats/README.md: a
    coincidental RLE hit's OWN start offset is not itself a valid
    custom-LZ header - the real custom-LZ streams are packed INSIDE its
    claimed span, at other offsets `scan()`'s greedy skip-ahead never
    visits once RLE claims the whole thing. See `scan()`'s coverage check
    for the actual fix."""
    r = decompress_lz77(data, off, max_size)
    if r:
        return "LZ77", r[0], r[1]
    r = decompress_custom_lz(data, off, max_size)
    if r:
        return "CUSTOM_LZ", r[0], r[1]
    r = decompress_rle(data, off, max_size)
    if r:
        return "RLE", r[0], r[1]
    return None


def _custom_lz_coverage(data: bytes, start: int, end: int, min_size: int, max_size: int) -> int:
    """Total bytes independently covered by valid custom-LZ streams (each
    individually >= min_size decompressed) found anywhere in data[start:end)
    by exhaustive byte-by-byte search. Used only to judge whether an
    LZ77/RLE hit's claimed span is mostly real custom-LZ data wearing a
    coincidental RLE costume - see scan()."""
    covered = 0
    off = start
    while off < end:
        r = decompress_custom_lz(data, off, max_size)
        if r:
            if len(r[1]) >= min_size:
                covered += r[0]
            off += r[0]
        else:
            off += 1
    return covered


# Measured directly against this project's own corpus (docs/formats/README.md,
# "Custom sprite compression"): every one of 11 confirmed RLE-vs-custom-LZ
# false positives had >=32.0% of its claimed span independently covered by
# real custom-LZ streams (up to 102%, i.e. the streams ran slightly past the
# claimed size too); every genuine RLE hit had <=3.0%. A 12th false positive
# (0x0838E18F) sat at only 7.8% coverage and needed a decisive code-reference
# tiebreaker instead - coverage alone is not trustworthy that low, so this
# threshold deliberately does NOT try to catch that shape; it only catches
# the shape where coverage itself is the strong signal.
CUSTOM_LZ_DISQUALIFY_FRACTION = 0.30

# ROM addresses (not byte offsets - scan()'s caller convention assumes
# ROM_BASE 0x08000000) proven RLE false positives by a DECISIVE means other
# than coverage - specifically, real disassembled code loads addresses from
# inside the claimed span and passes them straight to the custom-LZ
# decompressor's own call site (dword_3000C84/sub_80198B0). Coverage alone
# doesn't catch these (see CUSTOM_LZ_DISQUALIFY_FRACTION's comment), so they
# are named explicitly instead of guessed at. docs/formats/README.md has the
# full evidence for each.
ROM_BASE_FOR_OVERRIDES = 0x08000000
KNOWN_FALSE_POSITIVE_ADDRS = {
    0x0838E18F,  # 7.8% custom-LZ coverage alone - code reaches into the
                 # middle of this span via the real decompressor, decisive.
}


def scan(data: bytes, start: int, end: int, min_size: int = 32, max_size: int = 1 << 20):
    """Every confirmed LZ77/custom-LZ/RLE block in data[start:end] (byte
    offsets, not ROM addresses - callers add their own base). One shared
    scan loop for find_compressed_blocks.py and extract_assets.py so they
    can't drift.

    An LZ77/RLE hit whose claimed span is mostly (>=30%) independently
    covered by real custom-LZ streams is disqualified and NOT skipped past
    wholesale - the loop instead advances one byte so the genuine custom-LZ
    streams inside get found individually on their own. See
    CUSTOM_LZ_DISQUALIFY_FRACTION's comment for where that number comes
    from. KNOWN_FALSE_POSITIVE_ADDRS catches the one case coverage alone
    can't (0x0838E18F, coverage too low to trust - see that constant's
    comment and docs/formats/README.md)."""
    found = []
    off = start
    while off < end:
        r = decompress_any(data, off, max_size)
        if r:
            kind, consumed, decompressed = r
            if kind in ("LZ77", "RLE"):
                if (ROM_BASE_FOR_OVERRIDES + off) in KNOWN_FALSE_POSITIVE_ADDRS:
                    off += 1
                    continue
                covered = _custom_lz_coverage(data, off, off + consumed, min_size, max_size)
                if covered / consumed >= CUSTOM_LZ_DISQUALIFY_FRACTION:
                    off += 1
                    continue
            if len(decompressed) >= min_size:
                found.append((off, kind, consumed, decompressed))
            off += consumed
        else:
            off += 1
    return found

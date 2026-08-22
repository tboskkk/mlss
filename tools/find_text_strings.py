#!/usr/bin/env python3
"""Find readable text/dialogue string runs in raw rodata - a new asset class,
found by accident while cross-checking pointer table entries (see
docs/formats/README.md): `0x08467D88` sits in Latin-1-ish Spanish dialogue
text (`"...Recordad, nuestro reino \xff\x00est\xe1 en..."`, i.e. "Remember,
our kingdom is in...") with `0xFF` used as a control-code prefix byte
(followed by 1-2 opaque parameter bytes - line-break/wait/color/name-insert
codes are the usual GBA-era guess, NOT decoded here, this tool only finds
where the text lives).

A byte is "text-like" if it's printable ASCII or one of the specific
accented/punctuation code points Spanish text actually uses (a narrow
whitelist, not the whole Latin-1 upper range -- see the ACCENTED comment
below for why). A run qualifies as a candidate string region if it has a
real letter/space profile, not just coincidental high-byte noise
(compressed/graphics/animation data drifts into "looks textish" by chance
the same way it drifts into looking like pointers -- see the pointer-table
false positive this tool's docstring above was found alongside).

    ./container.sh tools/find_text_strings.py [--start ADDR] [--end ADDR]
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

BASEROM = splitlib.ROOT / "baserom.gba"
ROM_BASE = 0x08000000

DEFAULT_START = 0x081DD790
DEFAULT_END = 0x08F50000


# Latin-1 code points for the accented letters/punctuation Spanish text actually uses --
# deliberately NOT the whole 0xA0-0xFE Latin-1 range: that's what made the first pass of this
# tool nearly all noise (structured binary data -- OAM/animation tables etc. -- drifts into that
# broad range constantly, the same way it drifts into looking like plausible pointers; see
# docs/formats/README.md's compressed-block false-positive note for the same phenomenon).
ACCENTED = set(b"\xe1\xe9\xed\xf3\xfa\xf1\xbf\xa1\xc1\xc9\xcd\xd3\xda\xd1\xfc\xdc")


def is_text_like(b: int) -> bool:
    return (0x20 <= b < 0x7F) or b in ACCENTED


def is_control_start(b: int) -> bool:
    return b == 0xFF


def letter_count(chunk: bytes) -> int:
    return sum(1 for b in chunk if (0x41 <= b <= 0x5A) or (0x61 <= b <= 0x7A) or b in ACCENTED)


# Control-code length rule, confirmed via web research into the community Yoshi Magic
# editor's Text Editor.vb (not guessed): after the 0xFF prefix, a sub-opcode byte of 0x01 or
# in 0x0B-0x11 consumes ONE further parameter byte (3-byte code total); every other sub-opcode
# is a bare 2-byte code (0xFF + sub-opcode, no parameter). Matches all four codes found by hand
# in this tool's original discovery sample (FF 11 00, FF 01 00, FF 0B 01 all 3-byte; FF 35
# alone 2-byte) -- see docs/formats/README.md's Yoshi Magic cross-reference section.
def control_code_len(sub_opcode: int) -> int:
    return 3 if (sub_opcode == 0x01 or 0x0B <= sub_opcode <= 0x11) else 2


def visualize(chunk: bytes) -> str:
    out = []
    i = 0
    while i < len(chunk):
        b = chunk[i]
        if b == 0xFF:
            code_len = control_code_len(chunk[i + 1]) if i + 1 < len(chunk) else 2
            params = chunk[i + 1 : i + code_len]
            out.append(f"[{' '.join(f'{p:02x}' for p in params)}]")
            i += 1 + len(params)
        elif 0x20 <= b < 0x7F:
            out.append(chr(b))
            i += 1
        else:
            out.append(bytes([b]).decode("latin-1"))
            i += 1
    return "".join(out)


def find_text_regions(rom: bytes, lo: int, hi: int, min_len: int = 16, min_letters: int = 8):
    """Returns [(start_offset, end_offset), ...] (file offsets, not ROM addresses -- add
    ROM_BASE for addresses) for candidate text runs in rom[lo:hi]. Shared by this tool's CLI
    and by tools/map_assets.py, which overlays these regions on the full ROM asset map."""
    # Walk the range, extending a run through text-like bytes and through short 0xFF-prefixed
    # control codes (<=3 bytes: the FF plus up to 2 param bytes, per the observed sample -- see
    # module docstring) PROVIDED text-like bytes resume right after. A control code that doesn't
    # lead back into text is a run boundary, not a bridge.
    raw_runs = []
    i = lo
    run_start = None
    while i < hi:
        if is_text_like(rom[i]):
            if run_start is None:
                run_start = i
            i += 1
            continue
        if run_start is not None and is_control_start(rom[i]) and i + 1 < hi:
            # Exact length now, not a guess -- see control_code_len(). This fixes a real bug
            # found in this tool's first pass: the old longest-match-first guess swallowed a
            # real leading text byte whenever a control code's own sub-opcode happened to be
            # followed by a byte that also looked text-like (e.g. FF 00 44 -- the correct read
            # is a 2-byte code FF 00, then literal 'D' -- the old guesser absorbed 'D' into the
            # bracket instead, see docs/formats/README.md).
            j = i + control_code_len(rom[i + 1])
            if j < hi and is_text_like(rom[j]):
                i = j
            else:
                raw_runs.append((run_start, i))
                run_start = None
                i += 1
            continue
        if run_start is not None:
            raw_runs.append((run_start, i))
            run_start = None
        i += 1
    if run_start is not None:
        raw_runs.append((run_start, hi))

    candidates = []
    for s, e in raw_runs:
        chunk = rom[s:e]
        if len(chunk) < min_len:
            continue
        letters = letter_count(chunk)
        if letters < min_letters:
            continue
        if b" " not in chunk:
            continue
        if letters / len(chunk) < 0.5:
            continue
        candidates.append((s, e))
    return candidates


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--start", type=lambda s: int(s, 0), default=DEFAULT_START)
    ap.add_argument("--end", type=lambda s: int(s, 0), default=DEFAULT_END)
    ap.add_argument("--min-len", type=int, default=16, help="minimum run length in bytes")
    ap.add_argument("--min-letters", type=int, default=8, help="minimum real letters (incl. accented) in a run")
    args = ap.parse_args()

    if not BASEROM.exists():
        raise SystemExit(f"{BASEROM} not found - this needs your own dumped retail ROM present.")
    rom = BASEROM.read_bytes()
    lo, hi = args.start - ROM_BASE, args.end - ROM_BASE

    candidates = find_text_regions(rom, lo, hi, args.min_len, args.min_letters)

    print(f"{len(candidates)} candidate text region(s) in 0x{args.start:08X}-0x{args.end:08X} "
          f"(min-len={args.min_len}, min-letters={args.min_letters})")
    total_bytes = sum(e - s for s, e in candidates)
    print(f"total: {total_bytes} bytes across {len(candidates)} regions\n")

    for s, e in candidates:
        addr = ROM_BASE + s
        chunk = rom[s:e]
        preview = visualize(chunk[:160])
        print(f"0x{addr:08X}  {e-s:>6} B  {preview!r}")


if __name__ == "__main__":
    main()

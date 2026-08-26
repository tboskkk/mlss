#!/usr/bin/env python3
"""Measure which offsets look like packed bit-flags, not plain values --
read-only, safe against a live factory.

WHY THIS EXISTS. CLAUDE.md records "0 of 3,124 bodies declare a bitfield" as
a fact about m2c's OUTPUT: m2c never reconstructs bitfield syntax, it just
emits the equivalent mask/shift arithmetic on a plain-width load. That is not
evidence the retail code lacked bitfields -- jellees' own hand-matched commits
(still in this repo's git log, e.g. "Match sub_8052A8C" / "Add options
define") show he recovered several packed flag bytes by hand, each holding
3-6 independently-used bits. This scanner asks, mechanically, which offsets
in src/*.c show that same signature: repeated `& MASK`, `(x >> N) & MASK`,
`|=`/`&=`/`^=` against a small immediate, or the "clear bit then OR in a new
value" idiom (`(-0x41 & X) | (bit << N)`), at the SAME offset, across
DIFFERENT call sites -- the shape a packed flags byte leaves even after m2c
flattens it to arithmetic.

    python3 tools/scan_bitfields.py

A single mask used 50 times at one offset is one boolean checked often, not
a packed field -- not interesting on its own. Multiple DISTINCT masks/shifts
at the same offset is the actual signature: several independent bits being
read/written there, which is exactly what became `: 1` bitfields in the
upstream commit above.

WHY arg0 IS SPLIT OUT SEPARATELY. This regex matches any variable name at
any offset -- an offset number alone says nothing about which struct it
belongs to. `arg0` is the one variable this codebase consistently treats as
`struct Entity*` (see readable_entity.py); every other name (arg1, arg2,
temp_rN, ...) could be a completely unrelated struct that happens to share
an offset number by coincidence. Reporting them together would silently
merge unrelated structs. Only the arg0 section below is an actual struct
Entity claim; the "other" section is a corpus-wide signal that the technique
generalizes, not a claim about any specific struct.

This is a MEASUREMENT, per THE LAW ("measure the corpus before writing a
mutation for it") -- it does not touch any file.
"""
from __future__ import annotations

import collections
import re
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
SRC = REPO / "src"

# `(*(TYPE *)((s8 *)(NAME) + (OFFSET)))` -- single-star VALUE types only
# (u8/s8/u16/s16/u32/s32), never pointer types: a pointer field is not a
# bitfield candidate.
ACCESS = re.compile(
    r"\(\*\((u8|s8|u16|s16|u32|s32) \*\)\(\(s8 \*\)\((\w+)\) \+ \((0x[0-9A-Fa-f]+|\d+)\)\)\)"
)
SHIFT_MASK = re.compile(r"^\)\s*>>\s*(\d+)\)\s*&\s*(0x[0-9A-Fa-f]+|\d+)")
DIRECT_MASK = re.compile(r"^\s*&\s*(0x[0-9A-Fa-f]+|\d+)")
COMPOUND = re.compile(r"^\s*(\|=|&=|\^=)\s*(~?)\s*(0x[0-9A-Fa-f]+|\d+)")
# `(-0x41 & (ACCESS))` -- the "clear bit, then OR in a new value" idiom. The
# mask precedes the access here instead of following it; this is the single
# most common real bit-clear pattern and the three regexes above miss it
# entirely (they only look after the match).
PRECEDING_MASK = re.compile(r"(-?0x[0-9A-Fa-f]+|-?\d+)\s*&\s*\(?$")


def offset_of(text: str) -> int:
    return int(text, 0)


def classify(text: str, start: int, end: int):
    """-> (pattern key, ...) or None. Pattern key is (op, shift, mask)."""
    before = text[max(0, start - 2):start]
    after = text[end:end + 60]

    sm = SHIFT_MASK.match(after)
    if before.endswith("(") and sm:
        return ("shift+mask", int(sm.group(1)), int(sm.group(2), 0))

    dm = DIRECT_MASK.match(after)
    if dm:
        return ("mask", None, int(dm.group(1), 0))

    ca = COMPOUND.match(after)
    if ca:
        op, negated, lit = ca.group(1), bool(ca.group(2)), int(ca.group(3), 0)
        return (f"{op}{'~' if negated else ''}", None, lit)

    pm = PRECEDING_MASK.search(text[max(0, start - 20):start])
    if pm:
        mask = int(pm.group(1), 0)
        # A negative literal here is almost always a NOT-mask (e.g. -0x41 ==
        # ~0x40) used to clear one bit before OR-ing a new value in;
        # normalize to the positive cleared-bit mask for the bit-shape check.
        return ("clear-then-set", None, mask if mask >= 0 else ~mask & 0xFF)

    return None


def is_bit_shaped(v: int) -> bool:
    """Single bit, or a small contiguous run (2-8 bits) -- the shapes an
    actual bitfield member takes. Excludes large/odd constants that are
    just numbers, not flags (e.g. 0x40D0)."""
    if v <= 0 or v > 0xFF:
        return False
    return (v & (v + 1)) == 0 or (v & (v - 1)) == 0  # power of two, or 2^n-1


def fmt(key) -> str:
    op, shift, mask = key
    if op == "shift+mask":
        return f">>{shift} & 0x{mask:x}"
    if op == "mask":
        return f"& 0x{mask:x}"
    if op == "clear-then-set":
        return f"bit 0x{mask:x} (clear+set)"
    return f"{op} 0x{mask:x}"


def main() -> int:
    # keyed by (offset, is_arg0) so arg0 (== struct Entity by convention;
    # see readable_entity.py) never mixes with an unrelated struct that
    # happens to reuse the same offset number under a different variable.
    per_key: dict[tuple[int, bool], collections.Counter] = collections.defaultdict(collections.Counter)
    per_key_fns: dict[tuple[int, bool], set] = collections.defaultdict(set)

    files = sorted(SRC.glob("*.c"))
    for p in files:
        text = p.read_text(errors="ignore")
        for m in ACCESS.finditer(text):
            _typ, var, offstr = m.groups()
            off = offset_of(offstr)
            key = classify(text, *m.span())
            if key is None:
                continue
            k = (off, var == "arg0")
            per_key[k][key] += 1
            per_key_fns[k].add(p.stem)

    def build_rows(want_arg0: bool):
        rows = []
        for (off, is_arg0), patterns in per_key.items():
            if is_arg0 != want_arg0:
                continue
            bit_patterns = {k: v for k, v in patterns.items() if is_bit_shaped(k[2])}
            if len(bit_patterns) < 2:
                continue  # one mask alone is a common check, not a packed field
            distinct = len(bit_patterns)
            total = sum(bit_patterns.values())
            fns = len(per_key_fns[(off, is_arg0)])
            rows.append((off, distinct, total, fns, bit_patterns))
        rows.sort(key=lambda r: (-r[1], -r[2]))
        return rows

    def print_rows(rows, limit=20):
        print(f"{'off':>6} {'distinct':>8} {'sites':>6} {'fns':>5}  patterns")
        for off, distinct, total, fns, patterns in rows[:limit]:
            top = sorted(patterns.items(), key=lambda kv: -kv[1])[:5]
            pat_str = ", ".join(f"{fmt(k)} (x{n})" for k, n in top)
            print(f"0x{off:04X} {distinct:8d} {total:6d} {fns:5d}  {pat_str}")

    print(f"src/*.c scanned: {len(files)}\n")

    entity_rows = build_rows(True)
    print(f"=== struct Entity (arg0) -- {len(entity_rows)} candidate offset(s) ===")
    print_rows(entity_rows)

    other_rows = build_rows(False)
    print(f"\n=== other variables -- {len(other_rows)} candidate offset(s), "
          f"NOT necessarily struct Entity (see docstring) ===")
    print_rows(other_rows)

    return 0 if (entity_rows or other_rows) else 1


if __name__ == "__main__":
    raise SystemExit(main())

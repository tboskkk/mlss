#!/usr/bin/env python3
"""Find pointer tables living inside the still-raw rodata blobs - runs of
consecutive 4-byte-aligned words that all decode to plausible ROM
addresses. That's the strongest cheap signal for "real structure starts
here" available before anything in rodata has been split: a genuine array
of pointers (per-level data, per-character data, a jump table, ...) reads
as a tight run of valid-looking addresses; random byte noise essentially
never does, for runs of more than 2-3 words.

    ./container.sh tools/find_pointer_tables.py [--start ADDR] [--end ADDR]

Also cross-references against code: a `.4byte` literal pool entry anywhere
in the already-disassembled asm/*.s that matches a table's start address is
strong secondary confirmation ("code actually loads a pointer to exactly
this address") - reported inline where it lines up. Absence of a code
reference doesn't mean a table isn't real; most of the ROM's code hasn't
been disassembled yet either.
"""
from __future__ import annotations

import argparse
import re
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

BASEROM = splitlib.ROOT / "baserom.gba"
ROM_BASE = 0x08000000
ROM_END = 0x09000000  # 16MiB cartridge space; this ROM itself is 0x08000000-0x08FFFFFF

DEFAULT_START = 0x081DD790
DEFAULT_END = 0x08F50000

LABELED_WORD_RE = re.compile(r"^_(0[0-9A-Fa-f]{7}):\s*\.4byte\s+(0x[0-9A-Fa-f]+)")


def code_literal_pool_refs() -> dict:
    """{target_address: [(path, referencing_label_address), ...]}"""
    refs = {}
    for path in sorted((splitlib.ROOT / "asm").rglob("*.s")):
        for line in path.read_text(errors="replace").splitlines():
            m = LABELED_WORD_RE.match(line.split("@", 1)[0].rstrip())
            if m:
                refs.setdefault(int(m.group(2), 16), []).append(
                    (path.relative_to(splitlib.ROOT), int(m.group(1), 16))
                )
    return refs


def looks_like_pointer(word: int) -> bool:
    return ROM_BASE <= word < ROM_END


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--start", type=lambda s: int(s, 0), default=DEFAULT_START)
    ap.add_argument("--end", type=lambda s: int(s, 0), default=DEFAULT_END)
    ap.add_argument("--min-entries", type=int, default=4, help="minimum consecutive valid-looking words to report as a table")
    args = ap.parse_args()

    if not BASEROM.exists():
        raise SystemExit(f"{BASEROM} not found - this needs your own dumped retail ROM present.")
    rom = BASEROM.read_bytes()

    lo, hi = args.start - ROM_BASE, args.end - ROM_BASE
    words = []  # (address, value) for every 4-byte-aligned, plausible-looking word
    off = lo
    while off + 4 <= hi:
        (word,) = struct.unpack_from("<I", rom, off)
        if looks_like_pointer(word):
            words.append((ROM_BASE + off, word))
        off += 4

    # Group into runs of consecutive 4-byte slots.
    tables = []
    run = [words[0]] if words else []
    for addr, val in words[1:]:
        if addr - run[-1][0] == 4:
            run.append((addr, val))
        else:
            if len(run) >= args.min_entries:
                tables.append(run)
            run = [(addr, val)]
    if len(run) >= args.min_entries:
        tables.append(run)

    refs = code_literal_pool_refs()

    def report(run):
        start_addr = run[0][0]
        end_addr = run[-1][0] + 4
        hit = refs.get(start_addr)
        tag = ""
        if hit:
            src, label_addr = hit[0]
            more = f" (+{len(hit)-1} more)" if len(hit) > 1 else ""
            tag = f"  <- referenced by {src}:_{label_addr:08X}{more}"
        print(f"0x{start_addr:08X}-0x{end_addr:08X}  {len(run):>4} entries{tag}")
        targets = [v for _, v in run]
        preview = ", ".join(f"0x{v:08X}" for v in targets[:4])
        if len(targets) > 4:
            preview += ", ..."
        print(f"    -> {preview}")

    confirmed = [t for t in tables if t[0][0] in refs]
    unconfirmed = [t for t in tables if t[0][0] not in refs]

    print(f"{len(tables)} candidate pointer table(s), >= {args.min_entries} consecutive plausible words, "
          f"in 0x{args.start:08X}-0x{args.end:08X}")
    print(
        f"\n--- {len(confirmed)} confirmed: a real function's literal pool actually loads this exact "
        f"address as a pointer, independent of the run-of-plausible-words heuristic below ---"
    )
    for run in confirmed:
        report(run)

    print(
        f"\n--- {len(unconfirmed)} unconfirmed: run-of-plausible-words heuristic only, no code reference (yet - "
        f"most of the ROM isn't disassembled). Treat as leads, not conclusions: GBA graphics/compressed "
        f"data can coincidentally read as pointer-like over a handful of words. Regular/incrementing "
        f"values in the preview (below) are a tell that a hit here is compressed or tile data, not a "
        f"real table ---"
    )
    for run in unconfirmed:
        report(run)


if __name__ == "__main__":
    main()

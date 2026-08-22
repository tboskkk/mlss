#!/usr/bin/env python3
"""Find byte-exact matches for our pinned agbcc's compiled libgcc/libc
runtime routines inside the retail ROM's still-undissected regions.

    ./container.sh tools/find_library_code.py

The original developers' C code almost certainly called things like integer
division, memcpy, or long-long arithmetic, which their compiler would have
pulled straight out of libgcc/libc - the exact same routines our pinned
agbcc build produces (see Containerfile for the pin), since GBA-era
homebrew/retail toolchains in this family rarely touched compiler-rt code
between versions. Where that holds, the bytes should match exactly with no
reversing needed at all: label it and move on.

Caveat: this only finds self-contained (leaf) routines. A library function
that calls another (has relocations) won't byte-match in isolation - the
callee's address gets patched in at link time, so identical source can
still produce different final bytes depending on link order. Division,
shifts, and long-long arithmetic primitives are almost always leaf
functions; string/stdio functions often aren't. Absence of a match here is
not evidence a routine isn't present, only that this quick technique
couldn't confirm it.

Requires ./tools/extract_lib_signatures.sh to have been run first (produces
.libsig-tmp/{gcc,libc}/*.textbin - gitignored, regenerate anytime).
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

SIG_DIR = splitlib.ROOT / ".libsig-tmp"
BASEROM = splitlib.ROOT / "baserom.gba"
ROM_BASE = 0x08000000


def load_signatures(min_size: int):
    sigs = []
    for sub in ("gcc", "libc"):
        d = SIG_DIR / sub
        if not d.is_dir():
            continue
        for f in sorted(d.glob("*.textbin")):
            data = f.read_bytes()
            if len(data) >= min_size:
                sigs.append((f.stem, data))
    return sigs


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--min-size", type=int, default=16, help="ignore signatures shorter than this (avoid noise)")
    args = ap.parse_args()

    if not BASEROM.exists():
        raise SystemExit(f"{BASEROM} not found - this needs your own dumped retail ROM present.")
    if not SIG_DIR.exists():
        raise SystemExit(f"{SIG_DIR} not found. Run tools/extract_lib_signatures.sh first.")

    rom = BASEROM.read_bytes()
    sigs = load_signatures(args.min_size)
    if not sigs:
        raise SystemExit("no library signatures loaded - did extract_lib_signatures.sh actually produce .textbin files?")

    hits = []
    for name, data in sigs:
        start = 0
        while True:
            pos = rom.find(data, start)
            if pos == -1:
                break
            hits.append((pos, name, len(data)))
            start = pos + 1

    hits.sort()
    total = 0
    for pos, name, size in hits:
        print(f"0x{ROM_BASE + pos:08X}  {name:<24}{size:>6} bytes")
        total += size
    print(f"\n{len(hits)} matches, {total:,} bytes, from {len(sigs)} candidate signatures (>= {args.min_size}B)")


if __name__ == "__main__":
    main()

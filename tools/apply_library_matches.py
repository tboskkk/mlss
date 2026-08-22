#!/usr/bin/env python3
"""Apply tools/find_library_code.py's confirmed matches: replace the raw
`.byte` bytes at each matched address with a real disassembly (via
tools/disasm_object.py), in place, in whichever asm/*.s file currently
holds them.

    ./container.sh tools/apply_library_matches.py [--min-size N] [--dry-run]

Splices at individual-byte granularity, not line granularity - a match's
start or end can (and does, in practice) fall in the middle of one of
Luvdis's 16-bytes-per-line .byte dumps. Whatever bytes on the boundary
lines aren't part of the match are kept as their own new .byte line(s), so
nothing outside the matched range is touched.

Always rebuild and confirm `mlss.gba: OK` after running this - it's the
only real proof a splice was done correctly, not just "didn't crash".
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib
from find_library_code import BASEROM, ROM_BASE, load_signatures, SIG_DIR
from map_raw_regions import scan_file

BYTE_LINE_RE = re.compile(r"^(\t?)\.byte\s+(.*)$")


def format_byte_line(values: list, indent: str) -> str:
    return f"{indent}.byte " + ", ".join(values) + "\n"


def find_containing_file(manifest, addr: int):
    for group in manifest.groups:
        for entry in group.entries:
            if not entry.is_asm or entry.section != "text":
                continue
            base = splitlib.file_base_address(entry)
            if base is None:
                continue
            runs = scan_file(entry.source_path, base, entry.obj)
            for r in runs:
                if r.start <= addr < r.end:
                    return entry, r
    return None, None


def splice(path: Path, base_addr: int, target_start: int, target_end: int, replacement: str) -> None:
    lines = path.read_text().splitlines(keepends=True)
    addr = base_addr
    out = []
    consumed = False

    for line in lines:
        m = BYTE_LINE_RE.match(line.rstrip("\n"))
        if not m:
            out.append(line)
            continue

        indent, body = m.groups()
        values = [v.strip() for v in body.split(",")]
        line_start = addr
        line_end = addr + len(values)
        addr = line_end

        if line_end <= target_start or line_start >= target_end:
            out.append(line)  # entirely outside the match
            continue

        prefix = values[: max(0, target_start - line_start)]
        suffix = values[max(0, target_end - line_start):]

        if prefix:
            out.append(format_byte_line(prefix, indent))
        if not consumed:
            out.append(replacement)
            consumed = True
        if suffix:
            out.append(format_byte_line(suffix, indent))

    if not consumed:
        raise SystemExit(f"never found byte range 0x{target_start:08X}-0x{target_end:08X} in {path}")

    path.write_text("".join(out))


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--min-size", type=int, default=16)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    rom = BASEROM.read_bytes()
    sigs = load_signatures(args.min_size)
    manifest = splitlib.load_manifest()

    # (start, name, size, sig_path) - re-derive matches rather than importing
    # find_library_code's CLI output; also lets us know which .textbin/.o
    # produced each hit, since disasm_object.py needs the .o.
    hits = []
    for name, data in sigs:
        start = 0
        while True:
            pos = rom.find(data, start)
            if pos == -1:
                break
            hits.append((ROM_BASE + pos, name, len(data)))
            start = pos + 1
    hits.sort()

    applied = 0
    for addr, name, size in hits:
        entry, run = find_containing_file(manifest, addr)
        if entry is None:
            print(f"skip 0x{addr:08X} {name}: not inside any known raw region (already applied?)")
            continue
        if addr + size > run.end:
            print(f"skip 0x{addr:08X} {name}: match crosses a raw-run boundary, needs a look by hand")
            continue

        obj_path = SIG_DIR / ("gcc" if (SIG_DIR / "gcc" / f"{name}.o").exists() else "libc") / f"{name}.o"
        asm = subprocess.run(
            [sys.executable, str(Path(__file__).parent / "disasm_object.py"), str(obj_path), f"0x{addr:08X}"],
            capture_output=True, text=True,
        )
        if asm.returncode != 0:
            print(f"skip 0x{addr:08X} {name}: disasm_object.py failed:\n{asm.stderr}")
            continue

        print(f"0x{addr:08X}  {name:<16}{size:>4}B  -> {entry.source_path.relative_to(splitlib.ROOT)}")
        if not args.dry_run:
            splice(entry.source_path, splitlib.file_base_address(entry), addr, addr + size, asm.stdout)
        applied += 1

    print(f"\n{applied} region(s) {'would be ' if args.dry_run else ''}applied.")
    if not args.dry_run and applied:
        print("Now: ./container.sh make   (must still say mlss.gba: OK)")


if __name__ == "__main__":
    main()

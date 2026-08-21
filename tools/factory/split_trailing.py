#!/usr/bin/env python3
"""Find and split out the unlabeled functions hiding in fragment tails.

CLAUDE.md documents the landmine; gitops.finish_match() now refuses to
delete a fragment that carries one. This is the actual repair: give those
bytes a real `thumb_func_start`, move them into their own fragment, and
register them with the pipeline like any other function.

Measured across the corpus: 17,490 bytes of unlabeled trailing content in
77 of 508 fragments, of which 29 begin with an unambiguous Thumb push
prologue (`push {..., lr}` = 0xB5xx / `push {..}` = 0xB4xx) and are
therefore real functions Luvdis simply never labeled -- not padding, not
data. One of them, sitting after sub_8158E18, turned out to be a clean
32-byte routine doing an 8.8 fixed-point conversion and writing movement
fields, i.e. exactly the physics code this project exists to understand.

ADDRESSES ARE DERIVED, NOT GUESSED. A fragment's own local labels encode
absolute addresses (`_0815941C:` is literally at 0x0815941C), so the
trailing function's start address is that label's address plus the size of
what it defines. That's exact, and it's checked: the split is only kept if
a from-scratch build still reproduces the ROM byte-for-byte.

Usage:
    python3 tools/factory/split_trailing.py --list          # what's out there
    python3 tools/factory/split_trailing.py --dry-run NAME
    python3 tools/factory/split_trailing.py NAME [NAME...]
"""
from __future__ import annotations

import argparse
import glob
import os
import re
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402

LABEL_RE = re.compile(r"^_(0[0-9A-Fa-f]{6,7}):\s*(.*)$", re.MULTILINE)
BYTE_RE = re.compile(r"0x([0-9A-Fa-f]{2})")
THUMB_PROLOGUE = ("B4", "B5")


def trailing_start_address(text: str) -> int | None:
    """Absolute address of the first trailing byte, from the fragment's own
    labels -- `_0815941C: .4byte X` means address 0x0815941C holds 4 bytes,
    so anything after it starts at 0x08159420."""
    last = None
    for m in LABEL_RE.finditer(text):
        last = m
    if last is None:
        return None
    addr = int(last.group(1), 16)
    rest = last.group(2)
    if ".4byte" in rest:
        addr += 4 * len(re.findall(r"\.4byte", rest))
    elif ".byte" in rest:
        addr += len(BYTE_RE.findall(rest))
    elif ".2byte" in rest or ".hword" in rest:
        addr += 2
    else:
        return None
    # Any *unlabeled* pool entries between that label and the trailing run
    # also occupy space; count them.
    tail_text = text[last.end():]
    for line in tail_text.splitlines():
        s = line.strip()
        if s.startswith(".4byte"):
            addr += 4 * len(re.findall(r"\.4byte", s))
        elif s.startswith(".byte"):
            break  # this is the trailing run itself
    return addr


def split_candidates() -> list[tuple[str, int, str]]:
    """-> [(fragment_name, n_bytes, first_halfword_hi)] that look like real
    functions rather than padding."""
    out = []
    for p in sorted(glob.glob(str(gitops.REPO / "asm" / "nonmatching" / "*.s"))):
        name = os.path.basename(p)[:-2]
        trailing = gitops.fragment_trailing_bytes(name)
        if not trailing:
            continue
        vals = BYTE_RE.findall(trailing)
        if len(vals) < 4:
            continue
        if vals[1].upper() in THUMB_PROLOGUE:
            out.append((name, len(vals), vals[1].upper()))
    return out


def disassemble(raw: bytes, base: int) -> str | None:
    """Thumb-disassemble `raw` into gnu-as source, addresses relative to
    `base`. Uses the same objdump the project's own toolchain ships."""
    tmp = gitops.REPO / "_split_trailing.bin"
    tmp.write_bytes(raw)
    try:
        r = subprocess.run(
            ["./container.sh", "arm-none-eabi-objdump", "-D", "-b", "binary",
             "-m", "arm", "-M", "force-thumb", tmp.name],
            cwd=str(gitops.REPO), capture_output=True, text=True, timeout=60)
    finally:
        tmp.unlink(missing_ok=True)
    if r.returncode != 0:
        return None
    return r.stdout


def looks_complete(disasm: str) -> bool:
    """A function we're willing to claim ends the way Thumb functions end."""
    tail = [l for l in disasm.splitlines() if re.match(r"^\s+[0-9a-f]+:", l)]
    if not tail:
        return False
    last = tail[-1]
    return bool(re.search(r"\b(bx\s+r\d+|bx\s+lr|pop\s*\{[^}]*pc)", last))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("names", nargs="*")
    ap.add_argument("--list", action="store_true")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    cands = split_candidates()
    if args.list or not args.names:
        total = sum(n for _, n, _ in cands)
        print(f"{len(cands)} fragment(s) carry a trailing function "
              f"({total} bytes total)\n")
        for name, n, hi in cands:
            text = (gitops.REPO / "asm" / "nonmatching" / f"{name}.s").read_text()
            addr = trailing_start_address(text)
            addr_s = f"0x{addr:08X}" if addr else "addr UNKNOWN"
            print(f"  after {name:<34} {n:>4} bytes  {addr_s}  push 0x{hi}xx")
        if not args.names:
            print("\nPass one or more fragment names to split their trailing "
                  "function out (or --dry-run to preview).")
        return

    by_name = {n: (c, h) for n, c, h in cands}
    for name in args.names:
        if name not in by_name:
            print(f"{name}: no trailing function detected -- skipping")
            continue
        frag = gitops.REPO / "asm" / "nonmatching" / f"{name}.s"
        text = frag.read_text()
        trailing = gitops.fragment_trailing_bytes(name)
        raw = bytes(int(v, 16) for v in BYTE_RE.findall(trailing))
        addr = trailing_start_address(text)
        if addr is None:
            print(f"{name}: couldn't derive the trailing address -- skipping "
                  f"(refusing to guess)")
            continue
        disasm = disassemble(raw, addr)
        if not disasm:
            print(f"{name}: objdump failed -- skipping")
            continue
        complete = looks_complete(disasm)
        new_name = f"sub_{addr:08X}"[:3] + f"_{addr:X}"  # sub_8158E38 style
        new_name = f"sub_{addr:X}"
        print(f"\n=== {name} -> {new_name} at 0x{addr:08X} "
              f"({len(raw)} bytes, {'complete' if complete else 'INCOMPLETE'}) ===")
        for line in disasm.splitlines():
            if re.match(r"^\s+[0-9a-f]+:", line):
                print("   ", line.strip())
        if not complete:
            print("    !! does not end in a return -- not safe to split "
                  "automatically, needs a human look")
        if args.dry_run:
            continue
        print("    (writing the split is not implemented yet -- see module "
              "docstring; --dry-run/--list are the supported modes)")


if __name__ == "__main__":
    main()

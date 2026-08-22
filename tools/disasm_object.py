#!/usr/bin/env python3
"""Disassemble a self-contained (leaf, no relocations) object file's .text
into this project's asm style - real hex immediates, real address labels
for branch targets, literal pools as `_0XXXXXXX: .4byte ...` - instead of
objdump's own conventions (decimal immediates, function-relative offsets).

    ./container.sh tools/disasm_object.py <obj-file> <load-address>

Emits one thumb_func_start block per ELF symbol objdump finds in the
object - some archive members (_call_via_rX.o, libcfunc.o, ...) define
several small functions, not one. Prints to stdout; doesn't touch any
project file itself - see tools/apply_library_matches.py for that.

Only handles what tools/find_library_code.py's matches actually need:
Thumb code, branches within the object, and PC-relative loads of a plain
numeric constant (not a symbol/address - those need real relocations,
which by construction a byte-exact match doesn't have; see
find_library_code.py's docstring).
"""
from __future__ import annotations

import argparse
import re
import subprocess
import tempfile
from pathlib import Path

SYMBOL_RE = re.compile(r"^([0-9a-f]+)\s+<([^>]+)>:$")
INSN_RE = re.compile(r"^\s*([0-9a-f]+):\s+([0-9a-f]+)\s+(\S+)(?:\s+(.*))?$")
DATA_RE = re.compile(r"^\s*([0-9a-f]+):\s+[0-9a-f]+\s+\.(word|short)\s+0x([0-9a-f]+)")
IMM_RE = re.compile(r"#(-?)(\d+)")
BRANCH_TARGET_RE = re.compile(r"^([0-9a-f]+)\s+<[^>]+>$")
PC_LOAD_RE = re.compile(r"\[pc,\s*#(\d+)\]\s*@\s*\(([0-9a-f]+)\s*<")

DATA_DIRECTIVE = {"word": ".4byte", "short": ".2byte"}
DATA_SIZE = {"word": 4, "short": 2}

BRANCH_MNEMONICS = {
    "b", "bl", "blx", "bx",
    "beq", "bne", "bcs", "bhs", "bcc", "blo", "bmi", "bpl", "bvs", "bvc",
    "bhi", "bls", "bge", "blt", "bgt", "ble", "bal",
}


def hexify_immediates(operands: str) -> str:
    def repl(m):
        sign, digits = m.groups()
        return f"#{sign}0x{int(digits):02X}"
    return IMM_RE.sub(repl, operands)


def text_bytes(obj: str) -> bytes:
    with tempfile.NamedTemporaryFile(suffix=".bin") as tmp:
        subprocess.run(
            ["arm-none-eabi-objcopy", "-O", "binary", "--only-section=.text", obj, tmp.name],
            check=True,
        )
        return Path(tmp.name).read_bytes()


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("obj")
    ap.add_argument("load_address", help="hex address this object's .text will end up at, e.g. 0x081DCD38")
    args = ap.parse_args()
    base = int(args.load_address, 16)

    raw = text_bytes(args.obj)
    out = subprocess.run(
        ["arm-none-eabi-objdump", "-d", args.obj],
        capture_output=True, text=True, check=True,
    ).stdout

    symbols = {}  # offset -> name
    items = []  # ("insn", off, mnem, operands) | ("data", off, size, directive, value)
    for line in out.splitlines():
        m = SYMBOL_RE.match(line)
        if m:
            symbols[int(m.group(1), 16)] = m.group(2)
            continue
        m = DATA_RE.match(line)
        if m:
            off, kind, value = m.groups()
            items.append(("data", int(off, 16), DATA_SIZE[kind], DATA_DIRECTIVE[kind], value))
            continue
        m = INSN_RE.match(line)
        if m:
            off, _raw, mnem, operands = m.groups()
            items.append(("insn", int(off, 16), mnem, operands or ""))

    if not items:
        raise SystemExit("objdump produced nothing recognizable - is this really a .text-only object?")
    if not symbols:
        raise SystemExit("objdump found no symbols in this object - can't name anything")

    # Anything referenced *as an address* - a branch target, or a PC-
    # relative load's literal-pool slot - needs a real label at that
    # offset, or the referencing instruction has nothing to point at.
    label_targets = set()
    for item in items:
        if item[0] != "insn":
            continue
        _, off, mnem, operands = item
        if mnem.split(".")[0] in BRANCH_MNEMONICS:
            m = BRANCH_TARGET_RE.match(operands.strip())
            if m:
                label_targets.add(int(m.group(1), 16))
        pm = PC_LOAD_RE.search(operands)
        if pm:
            label_targets.add(int(pm.group(2), 16))

    for item in items:
        off = item[1]
        addr = base + off
        if off in symbols:
            macro = "thumb_func_start" if addr % 4 == 0 else "non_word_aligned_thumb_func_start"
            print(f"\t{macro} {symbols[off]}")
            print(f"{symbols[off]}: @ 0x{addr:08X}")
        elif off in label_targets:
            print(f"_{addr:08X}:")

        if item[0] == "data":
            _, _, _size, directive, value = item
            print(f"\t{directive} 0x{value.upper()}")
            continue

        _, _, mnem, operands = item
        mnem = mnem.split(".")[0]  # drop .n/.w width suffixes - Luvdis-style doesn't use them
        operands = operands.strip()

        pm = PC_LOAD_RE.search(operands)
        if pm:
            target_off = int(pm.group(2), 16)
            operands = re.sub(r"\[pc,.*$", f"_{base + target_off:08X}", operands).strip()
        else:
            m = BRANCH_TARGET_RE.match(operands)
            if m:
                operands = f"_{base + int(m.group(1), 16):08X}"
            else:
                operands = hexify_immediates(operands)

        print(f"\t{mnem} {operands}" if operands else f"\t{mnem}")

    # objdump elides repeated/padding bytes after the last real item as
    # "..." - those bytes are still part of this object's .text (and, if
    # this match came from find_library_code.py, still part of the retail
    # ROM at this address) even though they're not a real instruction.
    last = items[-1]
    last_size = last[2] if last[0] == "data" else 2
    tail_start = last[1] + last_size
    if tail_start < len(raw):
        tail = raw[tail_start:]
        print(f"\t.byte " + ", ".join(f"0x{b:02X}" for b in tail) + '  @ trailing bytes objdump elided as "..."')


if __name__ == "__main__":
    main()

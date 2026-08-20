#!/usr/bin/env python3
"""Derive hard facts about a Thumb function from its assembly, so the LLM
is TOLD them instead of having to infer them.

Motivation, measured rather than assumed: across 204 stalled/queued
functions in the 16-60 line band, 54% do struct-style offset access and
27% reference a data address, while 0% call another function. So callee
signatures (the obvious thing to add) would have helped nothing, and the
real blocker is that the model must reconstruct pointer arithmetic and
indirection depth from raw offsets -- exactly where drafts kept going
wrong (`param_1 + 2` for offset 8, collapsing two dereferences into one).

The technique already proved itself tonight: stating the void-return and
literal-pool-symbol rules as GUIDANCE barely helped, but computing them
and stating them as ESTABLISHED FACTS fixed them completely (27/27 and
15/15 correct across a live run). This extends the same idea to memory
access.

Deliberately conservative: a register whose value we cannot track exactly
becomes UNKNOWN and is simply not reported. Reporting nothing is fine;
reporting something wrong would be worse than the guessing it replaces.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

# rD, [rB, #imm]  -- the only addressing form these functions use for
# struct-ish access. Register-offset forms are deliberately not tracked.
MEM_RE = re.compile(
    r"^\s*(ldr|ldrb|ldrh|ldrsb|ldrsh|str|strb|strh)\s+r(\d+),\s*\[r(\d+)(?:,\s*#0x([0-9A-Fa-f]+))?\]")
MOV_RE = re.compile(r"^\s*(?:movs?|adds)\s+r(\d+),\s*r(\d+)(?:,\s*#0x0+)?\s*$")
ADD_IMM_RE = re.compile(r"^\s*adds\s+r(\d+),\s*r(\d+),\s*#0x([0-9A-Fa-f]+)\s*$")
# GBA/agbcc builds any offset too large for a 5-bit immediate as
# `movs rX,#N` + `lsls rX,rX,#S`, then adds it as a REGISTER. Tracking
# that exactly (not guessing) is what makes those accesses visible --
# without it a very common idiom silently produces no access map at all.
MOVS_IMM_RE = re.compile(r"^\s*movs\s+r(\d+),\s*#0x([0-9A-Fa-f]+)\s*$")
LSLS_RE = re.compile(r"^\s*lsls\s+r(\d+),\s*r(\d+),\s*#0x([0-9A-Fa-f]+)\s*$")
ADD_REG_RE = re.compile(r"^\s*adds\s+r(\d+),\s*r(\d+),\s*r(\d+)\s*$")
CLOBBER_RE = re.compile(r"^\s*(movs|ldr|adds|subs|lsls|lsrs|asrs|ands|orrs|eors|muls)\s+r(\d+)")

WIDTH = {"ldr": "32-bit", "str": "32-bit",
         "ldrb": "8-bit", "strb": "8-bit",
         "ldrh": "16-bit", "strh": "16-bit",
         "ldrsb": "8-bit signed", "ldrsh": "16-bit signed"}


def _code_lines(asm: str):
    for raw in asm.splitlines():
        line = raw.split("@")[0]
        if not line.strip() or line.strip().startswith(".") or ":" in line.split()[0:1]:
            continue
        if "func_start" in line or line.rstrip().endswith(":"):
            continue
        yield line


def access_map(asm: str) -> list[str]:
    """-> human-readable lines describing every tracked memory access.

    Registers hold symbolic expressions: 'p0' for the first parameter,
    '*(p0+0x8)' for a pointer loaded out of it, and so on. Anything we
    cannot follow exactly is dropped rather than guessed.
    """
    # r0-r3 are the incoming parameters on entry (AAPCS).
    reg: dict[int, str | None] = {i: (f"p{i}" if i < 4 else None) for i in range(16)}
    const: dict[int, int] = {}
    seen: list[tuple[str, str, str]] = []

    for line in _code_lines(asm):
        m = MEM_RE.match(line)
        if m:
            op, rd, rb, off = m.group(1), int(m.group(2)), int(m.group(3)), m.group(4)
            base = reg.get(rb)
            if base is not None:
                offset = f"+0x{off.upper()}" if off and int(off, 16) else ""
                target = f"{base}{offset}"
                kind = "read" if op.startswith("ldr") else "write"
                entry = (target, WIDTH[op], kind)
                if entry not in seen:
                    seen.append(entry)
                # A load makes rd the VALUE at that address -- tracking this
                # is what makes multi-level indirection visible.
                if op.startswith("ldr"):
                    reg[rd] = f"*({target})" if op == "ldr" else None
                continue
            if op.startswith("ldr"):
                reg[rd] = None
            continue

        m = ADD_IMM_RE.match(line)
        if m:
            rd, rs, imm = int(m.group(1)), int(m.group(2)), int(m.group(3), 16)
            src = reg.get(rs)
            reg[rd] = f"{src}+0x{imm:X}" if src is not None and imm else src
            continue

        m = MOVS_IMM_RE.match(line)
        if m:
            rd, val = int(m.group(1)), int(m.group(2), 16)
            reg[rd] = None
            const[rd] = val
            continue

        m = LSLS_RE.match(line)
        if m:
            rd, rs, sh = int(m.group(1)), int(m.group(2)), int(m.group(3), 16)
            reg[rd] = None
            const[rd] = const[rs] << sh if rs in const else None
            if const[rd] is None:
                const.pop(rd, None)
            continue

        m = ADD_REG_RE.match(line)
        if m:
            rd, rs, rt = int(m.group(1)), int(m.group(2)), int(m.group(3))
            # base register + tracked constant == a plain offset
            for b, c in ((rs, rt), (rt, rs)):
                if reg.get(b) is not None and c in const:
                    reg[rd] = f"{reg[b]}+0x{const[c]:X}" if const[c] else reg[b]
                    const.pop(rd, None)
                    break
            else:
                reg[rd] = None
                const.pop(rd, None)
            continue

        m = MOV_RE.match(line)
        if m:
            rd, rs = int(m.group(1)), int(m.group(2))
            reg[rd] = reg.get(rs)
            continue

        m = CLOBBER_RE.match(line)
        if m:
            reg[int(m.group(2))] = None
            const.pop(int(m.group(2)), None)

    out = []
    for target, width, kind in seen:
        depth = target.count("*")
        note = ""
        if depth:
            note = ("  <- NOTE: this is a SECOND dereference; the pointer itself "
                    "was loaded out of memory first")
        out.append(f"{target}: {width} {kind}{note}")
    return out


def describe(asm: str) -> list[str]:
    """All derivable facts about memory access, as prompt-ready lines."""
    accesses = access_map(asm)
    if not accesses:
        return []
    facts = ["MEMORY ACCESS MAP (derived from the assembly; `pN` = the Nth "
             "parameter, `*(x)` = a pointer that was loaded FROM x):"]
    facts += [f"    {a}" for a in accesses]
    facts.append("Model these with explicit casts at exactly these byte offsets. "
                 "Do NOT invent a struct type name; and remember pointer "
                 "arithmetic scales by pointee size, so use byte-accurate casts "
                 "such as *(u16*)((u8*)p0 + 0x4C).")
    return facts


if __name__ == "__main__":
    for name in sys.argv[1:]:
        p = Path("asm/nonmatching") / f"{name}.s"
        print(f"=== {name} ===")
        print(p.read_text())
        for line in describe(p.read_text()):
            print(line)
        print()

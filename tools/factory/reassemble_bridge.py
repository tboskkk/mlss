#!/usr/bin/env python3
"""Bridge split_trailing.py's raw-`.byte` fragments into disassembled
mnemonic source m2c can actually parse.

THE PROBLEM (see CLAUDE.md, "MAJOR FINDING 2026-08-29"): m2c's own parser
(`tools/m2c/m2c/asm_file.py`, `data_directives`) treats `.byte` as a DATA
directive, same as `.word`/`.4byte`. `split_trailing.write_split()`/
`write_multi_split()` deliberately emit trailing function bytes as raw
`.byte` under a real `thumb_func_start` -- byte-identical BY CONSTRUCTION,
the right call for ROM safety -- but that means m2c never sees a single
mnemonic for these functions and reports "contains no instructions, maybe
it is rodata" before decompilation is ever attempted. Confirmed: 402 of
402 functions with this shape, 0 ever matched.

THE FIX, deliberately scoped to not touch that safety guarantee: this
module NEVER writes to the tracked `asm/nonmatching/<name>.s` fragment.
It reads it, disassembles the raw bytes with the project's own
`arm-none-eabi-objdump` (via `split_trailing.disassemble()`, unchanged),
and re-renders that into legal GNU-`as` Thumb mnemonic text -- the same
shape every OTHER (Luvdis-derived) fragment in this corpus already has
(compare `asm/nonmatching/sub_8052C50.s`). That text is purely an
in-memory / scratch-file input to m2c; the tracked fragment is untouched,
and the reassembled candidate C still gets diffed against retail bytes
before being trusted, exactly like every other seed in this pipeline.

WHY A LABEL FOR EVERY LITERAL-POOL LOAD, NOT LEFT AS `[pc, #N]`. Byte-wise
either form re-encodes identically (the immediate is unambiguous either
way), so this isn't about ROM safety. It's about m2c: `ldr rX, [pc, #N]`
parses as "load from address (pc+N)", a location m2c has no data for --
it has no way to know what VALUE lives there unless that address is
independently declared as data in the same text it's parsing. Every
already-matched fragment in this corpus already writes these as
`ldr rX, LABEL @ =0xVALUE` with `LABEL: .4byte 0xVALUE` sitting right
after the function's own return, which is exactly what real Luvdis output
looks like -- this bridge reproduces that shape by computing the target
address (`((instr_off + 4) & ~3) + imm`, the real Thumb PC-relative
formula) and cross-referencing it against the trailing bytes, the same
cross-reference discipline `split_trailing.looks_complete_with_pool()`
already established for a different purpose (deciding a boundary is
safe) -- here it's deciding a POOL WORD is safe to label.

WHY THIS DECLINES RATHER THAN GUESSES, in every one of these cases:
  - more than one return-matching instruction in the fragment (ambiguous
    control flow this module doesn't attempt to reconstruct -- multi-exit
    functions need a human or a smarter CFG-aware tool, not a guess)
  - any undecodable span (objdump prints `.word`/`(bad)`/`UNDEFINED`) --
    could be an ARM-mode function or genuine data misclassified as code
  - a literal-pool word not referenced by any `ldr rX, [pc, #N]` in the
    function's own code -- means the boundary between code/pool/padding
    isn't what this module assumes, and guessing would risk a wrong value
  - a branch target this module can't resolve to a real symbol AND isn't
    inside the fragment itself (see `_addr_to_name` -- falls back to the
    universal `sub_<ADDR>` naming convention this project already applies
    to every address, so this really only declines for the pad/pool
    edge cases above, not for "unknown callee")

Usage:
    python3 tools/factory/reassemble_bridge.py sub_818B084   # print result
"""
from __future__ import annotations

import re
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import gitops  # noqa: E402
import split_trailing as st  # noqa: E402

_LINE_RE = re.compile(r"^\s*([0-9a-f]+):\s+((?:[0-9a-f]{2,4}\s?)+?)\s+(\S.*)$")
_RETURN_RE = st._RETURN_RE
_LDR_PC_RE = re.compile(r"\bldr\s+(r\d+),\s*\[pc,\s*#(\d+)\]")
_BRANCH_RE = re.compile(
    r"^(bl|beq|bne|bgt|blt|bge|ble|bcc|blo|bcs|bhs|bhi|bls|bpl|bmi|bvs|bvc|bal|b)"
    r"(\.[nw])?\s+(?:0x)?([0-9a-f]+)\s*(?:<.*>)?$"
)
_BAD_RE = re.compile(r"\(bad\)|UNDEFINED|^\.word\b")
_MAP_LINE_RE = re.compile(r"^\s+(0x[0-9a-fA-F]{8})\s+(\S+)$", re.MULTILINE)

_addr_map_cache: dict[int, str] | None = None


def _addr_to_name_map() -> dict[int, str]:
    """Ground truth, not a guess -- mlss.map is real linker output and
    lists every symbol currently linked into the tree, matched or not
    (a split fragment's thumb_func_start is a real linker symbol the
    moment it's spliced in, regardless of match state)."""
    global _addr_map_cache
    if _addr_map_cache is None:
        text = (gitops.REPO / "mlss.map").read_text()
        _addr_map_cache = {int(a, 16): n for a, n in _MAP_LINE_RE.findall(text)}
    return _addr_map_cache


def _addr_to_name(addr: int) -> str:
    known = _addr_to_name_map().get(addr)
    if known is not None:
        return known
    # Universal fallback: every address in this ROM either already has a
    # sub_<ADDR> fragment/symbol or would be named that way the moment it
    # gets extracted -- this project's own naming convention, applied
    # uniformly, not guessed per-call.
    return f"sub_{addr:08X}"


def is_pure_byte_fragment(text: str) -> bool:
    """True for split_trailing.py's own emission shape: every non-header
    line under the label is a `.byte` directive, no real mnemonics at all.
    False for an ordinary Luvdis-derived fragment (nothing to bridge)."""
    lines = [l.strip() for l in text.splitlines() if l.strip()]
    code_lines = [
        l for l in lines
        if not l.startswith((".syntax", ".text"))
        and not re.match(r"^(thumb_func_start|non_word_aligned_thumb_func_start)\b", l)
        and not re.match(r"^\w+:$", l)
    ]
    return bool(code_lines) and all(l.startswith(".byte") for l in code_lines)


def _parse_disasm(disasm: str) -> list[tuple[int, int, str]]:
    """-> [(file_offset, size_in_bytes, mnemonic_text), ...]"""
    out = []
    for line in disasm.splitlines():
        m = _LINE_RE.match(line)
        if not m:
            continue
        off = int(m.group(1), 16)
        # objdump groups Thumb bytes as one 4-hex-digit halfword per token
        # (2 bytes) for 16-bit instructions, two tokens (4 bytes) for
        # 32-bit ones -- token COUNT is not byte count, token LENGTH is.
        nbytes = sum(len(tok) // 2 for tok in m.group(2).split())
        # Strip objdump's own `@ (0x...)` annotation for return-matching
        # purposes, but keep the raw text around for ldr/branch rewriting.
        out.append((off, nbytes, m.group(3).strip()))
    return out


def reassemble_for_m2c(name: str) -> str | None:
    """-> GNU-as mnemonic source for `name`'s real bytes, or None if this
    fragment isn't a pure-.byte split_trailing.py fragment, or if any of
    the safety checks above can't be satisfied. Never touches the tracked
    fragment on disk."""
    frag = gitops.REPO / "asm" / "nonmatching" / f"{name}.s"
    if not frag.exists():
        return None
    text = frag.read_text()
    if not is_pure_byte_fragment(text):
        return None

    raw = bytes(int(v, 16) for v in st.BYTE_RE.findall(text))
    if not raw:
        return None

    addr0 = st.trailing_start_address(name, text)
    if addr0 is None:
        m = re.search(rf"\s(0x[0-9a-fA-F]+)\s+{re.escape(name)}$",
                      (gitops.REPO / "mlss.map").read_text(), re.M)
        addr0 = int(m.group(1), 16) if m else None
    if addr0 is None:
        return None

    disasm = st.disassemble(raw, 0)
    if disasm is None:
        return None
    instrs = _parse_disasm(disasm)
    if not instrs:
        return None

    return_idxs = [i for i, (_, _, txt) in enumerate(instrs) if _RETURN_RE.search(txt)]
    if len(return_idxs) != 1:
        return None  # ambiguous / multi-exit -- decline, don't guess

    ret_i = return_idxs[0]
    code_instrs = instrs[: ret_i + 1]
    code_start_off = code_instrs[0][0]
    code_end_off = code_instrs[-1][0] + code_instrs[-1][1]

    # Only the REAL code (up to and including the return) needs to be
    # decodable mnemonics -- bytes after the return are the function's own
    # data (pool/padding) and objdump routinely garbage-decodes them as
    # nonsense instructions (even `(bad)`/`UNDEFINED`) purely because a
    # disassembler has no way to know a byte run is data vs code. That's
    # fine: this module never reassembles those bytes as instructions, it
    # emits them as `.4byte`/`.byte` further down. Checking the WHOLE
    # disassembly here (as an earlier version of this function did) meant
    # a single coincidentally-`UNDEFINED`-decoding pool WORD declined an
    # otherwise perfectly bridgeable function -- confirmed live on
    # `sub_8159E48`, whose only real problem was a pool word at file
    # offset 0x3dc (well after its own single return) that happens to
    # decode as `UNDEFINED` when misread as an instruction.
    for _, _, txt in code_instrs:
        if _BAD_RE.search(txt):
            return None  # undecodable span in the REAL code -- likely ARM-mode

    tail = raw[code_end_off:]
    pad = b""
    pool_start = code_end_off
    if len(tail) >= 2 and tail[:2] == b"\x00\x00" and pool_start % 4 != 0:
        pad = tail[:2]
        pool_start += 2
        tail = tail[2:]

    if len(tail) % 4 != 0:
        return None  # can't cleanly word-align what's left -- decline

    # Every `ldr rX, [pc, #N]` in the real code -> its real pool target
    # (file-relative), via the actual Thumb PC-relative load formula.
    ldr_by_instr_off: dict[int, int] = {}
    for off, _, txt in code_instrs:
        m = _LDR_PC_RE.search(txt)
        if m:
            imm = int(m.group(2))
            ldr_by_instr_off[off] = ((off + 4) & ~3) + imm

    referenced_targets = set(ldr_by_instr_off.values())
    n_words = len(tail) // 4
    pool_labels: dict[int, tuple[str, int]] = {}
    for w in range(n_words):
        word_off = pool_start + w * 4
        if word_off not in referenced_targets:
            return None  # unreferenced pool word -- boundary assumption wrong, decline
        value = struct.unpack_from("<I", tail, w * 4)[0]
        real_addr = (addr0 + word_off) & 0xFFFFFFFF
        pool_labels[word_off] = (f"_{real_addr:08X}", value)

    # Any ldr target that ISN'T inside our own pool is a real anomaly for
    # a fragment that's supposed to be one self-contained function --
    # decline rather than emit a dangling `[pc, #N]` m2c can't resolve.
    for target in referenced_targets:
        if target not in pool_labels:
            return None

    # Internal branch targets need a local label; external ones need a
    # real symbol name. Two passes: first collect internal targets so
    # label lines land in the right place, then render.
    internal_targets: set[int] = set()
    branch_target_by_off: dict[int, int] = {}
    for off, _, txt in code_instrs:
        m = _BRANCH_RE.match(txt)
        if m:
            target_file_off = int(m.group(3), 16)
            branch_target_by_off[off] = target_file_off
            if code_start_off <= target_file_off < code_end_off:
                internal_targets.add(target_file_off)

    out = ["\t.syntax unified", "\t.text", "", f"\tthumb_func_start {name}", f"{name}:"]
    for off, _, txt in code_instrs:
        if off in internal_targets:
            real_addr = (addr0 + off) & 0xFFFFFFFF
            out.append(f"_{real_addr:08X}:")

        if off in ldr_by_instr_off:
            reg = _LDR_PC_RE.search(txt).group(1)
            label, value = pool_labels[ldr_by_instr_off[off]]
            out.append(f"\tldr {reg}, {label} @ =0x{value:08X}")
            continue

        if off in branch_target_by_off:
            m = _BRANCH_RE.match(txt)
            mnem = m.group(1) + (m.group(2) or "")
            target_file_off = branch_target_by_off[off]
            real_target = (addr0 + target_file_off) & 0xFFFFFFFF
            if target_file_off in internal_targets:
                out.append(f"\t{mnem} _{real_target:08X}")
            else:
                out.append(f"\t{mnem} {_addr_to_name(real_target)}")
            continue

        out.append(f"\t{txt}")

    if pad:
        out.append("\t.byte " + ", ".join(f"0x{b:02X}" for b in pad))

    for word_off in sorted(pool_labels):
        label, value = pool_labels[word_off]
        out.append(f"{label}: .4byte 0x{value:08X}")

    return "\n".join(out) + "\n"


def main() -> int:
    if len(sys.argv) < 2:
        print(__doc__)
        return 1
    for name in sys.argv[1:]:
        result = reassemble_for_m2c(name)
        print(f"=== {name} ===")
        print(result if result is not None else "(declined -- see module docstring for why)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

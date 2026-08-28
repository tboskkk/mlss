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



# Empty #else, not an #error -- see split_func.py STUB_TEMPLATE for why.
NEW_ELSE_BRANCH = """/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */\n"""

_MAP_SYM_RE = re.compile(r"^\s+(0x[0-9a-fA-F]{8})\s+(\S+)$", re.MULTILINE)


def _next_map_symbol_addr(name: str) -> int | None:
    """Ground truth, not a guess: `mlss.map` is real linker output, so the
    symbol placed immediately after `name` (by address, not by line order)
    tells us exactly where `name`'s own fragment ends -- function body plus
    trailing bytes together, whatever they are. Used as a fallback when
    `trailing_start_address`'s label-walk can't find a directive to key off
    (the case where the last label is a CODE label, e.g. a branch target
    right before the trailing run, not a data label)."""
    map_path = gitops.REPO / "mlss.map"
    if not map_path.is_file():
        return None
    syms = []
    for m in _MAP_SYM_RE.finditer(map_path.read_text(errors="replace")):
        syms.append((int(m.group(1), 16), m.group(2)))
    syms.sort()
    for i, (addr, sym) in enumerate(syms):
        if sym == name and i + 1 < len(syms):
            return syms[i + 1][0]
    return None


def trailing_start_address(name: str, text: str) -> int | None:
    """Absolute address of the first trailing byte.

    Two independent derivations, both from real ground truth, never a
    guess about instruction widths:

    1. From the fragment's own labels -- `_0815941C: .4byte X` means
       address 0x0815941C holds 4 bytes, so anything after it starts at
       0x08159420. Handles the literal-pool-tail case.
    2. Fallback: from `mlss.map` (the real linker output) -- the symbol
       placed immediately after `name` marks exactly where `name`'s own
       fragment ends, so `that address - len(trailing bytes)` is exactly
       where the trailing run starts. Handles the case where the last
       label in the fragment is a CODE label (a branch target) rather
       than a data label, so there's no directive on its line to key off
       -- label-walking alone can't see past real Thumb instructions
       between that label and the trailing run without guessing their
       individual widths (a `bl` is 4 bytes, everything else here is 2),
       which is exactly the kind of guess this tool's own docstring says
       not to make. The linker already did that arithmetic for real.
    """
    last = None
    for m in LABEL_RE.finditer(text):
        last = m
    if last is not None:
        addr = int(last.group(1), 16)
        rest = last.group(2)
        if ".4byte" in rest:
            addr += 4 * len(re.findall(r"\.4byte", rest))
        elif ".byte" in rest:
            addr += len(BYTE_RE.findall(rest))
        elif ".2byte" in rest or ".hword" in rest:
            addr += 2
        else:
            addr = None
        if addr is not None:
            # Any *unlabeled* pool entries between that label and the
            # trailing run also occupy space; count them.
            tail_text = text[last.end():]
            for line in tail_text.splitlines():
                s = line.strip()
                if s.startswith(".4byte"):
                    addr += 4 * len(re.findall(r"\.4byte", s))
                elif s.startswith(".byte"):
                    break  # this is the trailing run itself
            return addr

    trailing = gitops.fragment_trailing_bytes(name)
    if not trailing:
        return None
    n_trailing = len(BYTE_RE.findall(trailing))
    next_addr = _next_map_symbol_addr(name)
    if next_addr is None:
        return None
    return next_addr - n_trailing


# Confirmed live 2026-08-28, byte-for-byte identical in all 4 occurrences
# (sub_808C070, sub_808C098, sub_808C0C0, sub_8098C78): `ldr r1,[pc,#4];
# str r1,[r0,#0x4C]; movs r0,#1; bx lr` -- a leaf "set this->handler(0x4C)
# = <ptr>; return 1" setter, needing no `lr` save so it never begins with a
# push prologue at all. Matched against this EXACT byte signature rather
# than a general "does this decode to something plausible" rule -- the
# push-prologue check above is deliberately narrow for the same reason
# (see its own module docstring), and a same-strength signature here is
# the way to extend coverage without trading that precision away.
_HANDLER_SETTER_SIG = bytes([0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47])


def _fragment_has_code_before(name: str, trailing_text: str) -> bool:
    """False when the fragment's ENTIRE body IS the trailing run -- e.g. a
    fragment write_split() itself already produced (bare `.byte` under a
    label, no code at all). Without this, a just-split fragment that
    happens to start with a known signature re-matches its own bytes as
    if a NEW trailing function were hiding after itself. Found live
    2026-08-28: splitting sub_808C070 etc. made sub_808C08A etc. show up
    in the next --list run, pointing at themselves."""
    frag = gitops.REPO / "asm" / "nonmatching" / f"{name}.s"
    text = frag.read_text()
    idx = text.find(trailing_text)
    if idx == -1:
        return True  # can't locate it, don't block on an unrelated bug
    for line in text[:idx].splitlines():
        s = line.strip()
        if not s or s.startswith((
                "//", "@", ".syntax", ".text", "thumb_func_start",
                "non_word_aligned_thumb_func_start")):
            continue
        if s.endswith(":") or s.startswith(".byte"):
            continue  # a label, or an earlier/different data run
        return True  # a real instruction line
    return False


def split_candidates() -> list[tuple[str, int, str]]:
    """-> [(fragment_name, n_bytes, label)] that look like real functions
    rather than padding."""
    out = []
    for p in sorted(glob.glob(str(gitops.REPO / "asm" / "nonmatching" / "*.s"))):
        name = os.path.basename(p)[:-2]
        trailing = gitops.fragment_trailing_bytes(name)
        if not trailing:
            continue
        if not _fragment_has_code_before(name, trailing):
            continue
        vals = BYTE_RE.findall(trailing)
        if len(vals) < 4:
            continue
        if vals[1].upper() in THUMB_PROLOGUE:
            out.append((name, len(vals), f"push 0x{vals[1].upper()}xx"))
            continue
        raw = bytes(int(v, 16) for v in vals)
        for pad in (0, 2):
            if len(raw) - pad == 12 and raw[pad:pad + 8] == _HANDLER_SETTER_SIG:
                out.append((name, len(vals), f"handler-setter (pad={pad})"))
                break
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
            addr = trailing_start_address(name, text)
            addr_s = f"0x{addr:08X}" if addr else "addr UNKNOWN"
            print(f"  after {name:<34} {n:>4} bytes  {addr_s}  {hi}")
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
        addr = trailing_start_address(name, text)
        if addr is None:
            print(f"{name}: couldn't derive the trailing address -- skipping "
                  f"(refusing to guess)")
            continue
        disasm = disassemble(raw, addr)
        if not disasm:
            print(f"{name}: objdump failed -- skipping")
            continue
        complete = looks_complete(disasm)
        if not complete and by_name[name][1].startswith("handler-setter"):
            # looks_complete() checks the LAST disassembled line, but this
            # shape's real last instruction (`bx lr`) is followed by a
            # 4-byte PC-relative literal-pool word, which objdump happily
            # (mis)disassembles as more "instructions". Not a guess here:
            # _HANDLER_SETTER_SIG already pins bytes pad+6:pad+8 to the
            # exact bytes `70 47` (bx lr) by construction of the match
            # itself, so completeness is proven by the signature, not by
            # this heuristic.
            complete = True
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
        if not complete:
            print("    refusing to split automatically")
            continue
        ok, detail = write_split(name, new_name, addr, raw, text)
        print(f"    {'SPLIT' if ok else 'FAILED'}: {detail}")


def format_bytes(raw: bytes) -> str:
    lines = []
    for i in range(0, len(raw), 16):
        chunk = raw[i:i + 16]
        lines.append("\t.byte " + ", ".join(f"0x{b:02X}" for b in chunk))
    return "\n".join(lines)


def write_split(src_name: str, new_name: str, addr: int, raw: bytes,
                src_text: str) -> tuple[bool, str]:
    """Give the trailing bytes their own labeled fragment + guard block.

    Emits `.byte` data under the label rather than reconstructed assembly.
    That is deliberate and not laziness: reproducing assembly source would
    mean re-deriving branch targets, local labels and literal-pool
    references, any one of which could assemble to different bytes. Raw
    `.byte` under a real `thumb_func_start` is byte-identical BY
    CONSTRUCTION, and leaves the function in exactly the state every other
    not-yet-decompiled function is in -- the pipeline can pick it up
    normally from there.

    Everything is verified by a from-scratch build before it is kept; any
    failure reverts the whole change.
    """
    frag_dir = gitops.REPO / "asm" / "nonmatching"
    new_frag = frag_dir / f"{new_name}.s"
    src_frag = frag_dir / f"{src_name}.s"
    if new_frag.exists():
        return False, f"{new_frag.name} already exists"

    c_path, block = gitops.find_guard_block(src_name)
    if c_path is None:
        # Old-format-only, by design (see find_new_format_guard()'s own
        # docstring: callers fall back to it explicitly). This one hadn't --
        # found live 2026-08-28 on 4 of 14 batch-processed splits, same gap
        # already fixed for _owning_source_stem() this same session. The
        # new function being split out doesn't need to match src_name's own
        # guard convention; it just needs `block`'s span to insert after.
        c_path, block, _kind = gitops.find_new_format_guard(src_name)
    if c_path is None:
        return False, f"no guard block found for {src_name}"

    # `.align 2, 0` inside thumb_func_start pads to a 4-byte boundary. For a
    # function that genuinely isn't word-aligned that would INSERT padding
    # and shift every following byte, so pick the macro that matches
    # reality rather than assuming.
    macro = "thumb_func_start" if addr % 4 == 0 else "non_word_aligned_thumb_func_start"

    new_text = (
        "\t.syntax unified\n\t.text\n\n"
        f"\t{macro} {new_name}\n{new_name}:\n"
        f"{format_bytes(raw)}\n"
    )

    # Strip the trailing run off the source fragment.
    trailing_block = gitops.fragment_trailing_bytes(src_name)
    first_line = trailing_block.splitlines()[0]
    idx = src_text.find(first_line)
    if idx == -1:
        return False, "couldn't locate the trailing run in the source fragment"
    truncated = src_text[:idx].rstrip() + "\n"

    new_block = (
        "#ifndef NONMATCHING\n"
        f'asm_unified(".include \\"asm/nonmatching/{new_name}.s\\"");\n'
        "#else\n"
        + NEW_ELSE_BRANCH +
        "#endif\n"
    )

    with gitops.repo_lock(what=f"split trailing {new_name}"):
        original_c = c_path.read_text()
        try:
            new_frag.write_text(new_text)
            src_frag.write_text(truncated)
            # Order matters: byte order in the .c IS link order, so the new
            # function must land immediately AFTER the one it followed in
            # the ROM. Anywhere else silently relocates code.
            pos = original_c.find(block)
            c_path.write_text(
                original_c[:pos + len(block)] + "\n" + new_block + original_c[pos + len(block):])

            r = gitops.run(["rm", "-rf", str(gitops.REPO / "build")])
            r = gitops.run(["./container.sh", "make"])
            if "mlss.gba: OK" not in r.stdout:
                raise RuntimeError("ROM no longer byte-identical")
        except Exception as e:
            new_frag.unlink(missing_ok=True)
            src_frag.write_text(src_text)
            c_path.write_text(original_c)
            return False, f"reverted: {e}"

        gitops.commit(new_name,
                      f"Split out {new_name}, an unlabeled function found after {src_name}\n\n"
                      f"{len(raw)} bytes of trailing data in "
                      f"asm/nonmatching/{src_name}.s that Luvdis never labeled. Address "
                      f"0x{addr:08X} derived from the fragment's own local labels, not "
                      f"guessed. Emitted as .byte under a real {macro} so it is "
                      f"byte-identical by construction; verified with a from-scratch "
                      f"build before committing.")

    conn = db.connect()
    try:
        with db.tx(conn):
            db.set_state(conn, new_name, "needs_attempt", worker_id=None,
                         notes=f"split out of {src_name}'s trailing data by split_trailing.py")
        conn.commit()
    except Exception:
        pass  # a brand-new symbol may not have a row yet; the scanner will add it
    finally:
        conn.close()
    return True, f"{new_name} at 0x{addr:08X}, ROM still byte-identical"


if __name__ == "__main__":
    main()

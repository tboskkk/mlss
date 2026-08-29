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


def _fragment_is_already_resolved(name: str, trailing_text: str) -> bool:
    """True when the fragment's ENTIRE body already IS exactly one
    validated function+pool with nothing left over -- e.g. a fragment
    write_split() itself already produced (bare `.byte` under a label,
    no surrounding code). split_candidates() should skip these.

    Does NOT just check "is there real code before the trailing run" --
    that was this function's original, cruder form, and it is WRONG for
    a real case: a fragment that is ENTIRELY `.byte` (nothing precedes
    the trailing run at all, by construction, for anything write_split()
    itself ever emits) can still have MORE than one hidden function
    packed into it, if the split that created it was accepted on a
    WEAKER version of looks_complete_with_pool() before this check
    existed. Blanket-excluding every code-free fragment would make such
    a case permanently invisible to this tool -- exactly what happened
    live 2026-08-28 on sub_80479DC (produced by an earlier run, actually
    TWO complete mini-functions merged under one label): the original
    "no code precedes it" rule skipped it forever, since by definition
    nothing ever precedes a write_split() fragment's own trailing run.

    Reuses looks_complete_with_pool() itself -- the same address-verified
    check that decides whether a NEW split is safe now also decides
    whether an EXISTING one still has leftover content, so both checks
    stay correct together instead of drifting apart. A fragment that
    genuinely is one complete function+pool (the common, correct case
    for split_trailing.py's own output) validates and is excluded, same
    as the original guard; one that isn't (a merge bug, old or new)
    fails to validate and is correctly kept as a fresh candidate.
    """
    vals = BYTE_RE.findall(trailing_text)
    if len(vals) < 4:
        return True  # too short to be a real function -- nothing to re-split
    raw = bytes(int(v, 16) for v in vals)
    disasm = disassemble(raw, 0)
    if not disasm:
        return True  # can't tell -- don't block on an unrelated failure
    if looks_complete(disasm) or looks_complete_with_pool(disasm, raw):
        return True  # already exactly one function+pool, nothing left over
    # Fall back to the original, narrower signal for anything that isn't
    # pure .byte (a real, not-yet-split fragment whose trailing run is
    # preceded by genuine code) -- unrelated to the bug above, still a
    # valid signal on its own.
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
        return False  # a real instruction line precedes it -- keep as a candidate
    # Pure .byte, and it didn't validate as one clean function+pool above
    # either -- keep it as a candidate rather than excluding it. This is
    # the sub_80479DC case: nothing "precedes" a write_split()-produced
    # fragment by construction, but that says nothing about whether ITS
    # OWN content is fully resolved. main()'s own completeness checks
    # re-validate independently before writing anything, so including a
    # fragment here that turns out not to be safely splittable just means
    # it gets declined again, harmlessly -- excluding it here instead
    # would make a real, still-broken case permanently invisible.
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
        if _fragment_is_already_resolved(name, trailing):
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


_LINE_RE = re.compile(r"^\s*([0-9a-f]+):\s+\S+\s+(.*)$")
_RETURN_RE = re.compile(r"\b(bx\s+r\d+|bx\s+lr|pop\s*\{[^}]*pc)")
_PC_REF_RE = re.compile(r"@\s*\(0x([0-9a-fA-F]+)\)")


def looks_complete_with_pool(disasm: str, raw: bytes) -> bool:
    """A second, more general check than looks_complete(): true when the
    trailing blob's LAST genuine return is followed ONLY by that same
    function's OWN literal pool -- verified by cross-referencing every
    trailing word's real address against the `@ (0xADDR)` target objdump
    itself already prints for every `ldr rX, [pc, #N]` line, not by
    guessing that trailing bytes are "probably" data.

    Exists because looks_complete() checks the LAST DISASSEMBLED line of
    the WHOLE blob, and a real return followed by its own pool -- an
    entirely ordinary Thumb function shape, not a special case -- makes
    objdump keep decoding past the return into the pool bytes, which are
    not code and disassemble as plausible-looking garbage. Measured live
    2026-08-28: sampling 5 of the 135 candidates looks_complete() had
    declined, ALL FIVE already end in an exit looks_complete() already
    recognizes (`bx r0`/`bx r1`/`pop {...}; bx r0`) -- there is no
    unrecognized exit idiom here at all, only this measurement gap. Kept
    SEPARATE from looks_complete() (an additional check tried after it
    fails) rather than merged in, so the simple, already-proven case
    keeps its simple, already-proven logic -- this one has a real
    correctness argument of its own (address cross-referencing) that is
    worth being able to reason about on its own.

    FIRES ONLY WHEN THE WHOLE DISASSEMBLY HAS EXACTLY ONE return-matching
    LINE. Deliberately conservative -- multiple candidates mean picking
    the right one requires distinguishing "an early/internal return with
    real code still following" from "the true end, with a second hidden
    function stacked after it", and three different attempts at that
    distinction each shipped a real, different bug before this one, all
    found by auditing already-completed splits rather than caught before
    commit:

    1. Take the LAST candidate, walked backward, accept whichever
       validates: a pool WORD can itself decode as something matching
       the return regex (`pop {r3,r6,r7,pc}` is indistinguishable from
       real code by pattern alone -- common, not rare, since a
       fragment's own pool sits right after its real return by
       construction), so the backward search would find a LATER hidden
       function's own genuine return-then-pool, validate THAT, and
       report the WHOLE multi-function blob complete. Confirmed on
       sub_803FDBC (three stacked functions) and sub_80479BC (two) --
       write_split() would label all of them as one function. Byte-
       identical to the ROM (write_split() only ever emits verbatim
       bytes) but permanently unmatchable as C and wrong about what's
       actually there. This version reached 2 of the 128 already-
       completed splits before being caught by an audit of the finished
       batch, not before commit.
    2. Take ONLY the first candidate, unconditionally: right question
       for a short function, wrong for a long one with a genuine early
       exit. sub_8135934 (808 bytes, a real, correct, single function)
       has its first return-matching line at 0xa2, an early branch
       inside ordinary control flow, nowhere near its actual end at
       0x31e -- anchoring there found real code after it (not pool),
       declined, and would have made a perfectly fine function invisible
       to this tool forever.
    3. Walk forward through every candidate, and at each one, treat "a
       byte pattern matching a fresh push{...,lr} prologue sits exactly
       where the referenced-pool run stops" as proof of a second stacked
       function, otherwise keep advancing. Reasonable-sounding, but the
       byte pattern for a push instruction is common enough that it
       shows up by pure coincidence inside a long function's own real,
       CONTINUING code (confirmed live on sub_8135934 again: its own
       first, early return's "boundary" byte happened to look exactly
       like a fresh prologue, so this version declined it too, for a
       different reason than attempt 2 but the same wrong outcome).

    No byte-pattern heuristic reliably tells "early return, code
    continues" apart from "true end, a second function starts here" --
    both look like ordinary Thumb code at the boundary, because in the
    first case that is EXACTLY what it is. The only case that can be
    decided WITHOUT that ambiguity is the one where there's nothing to
    decide between: a single return-matching line, whose own referenced
    pool either accounts for everything remaining (complete) or doesn't
    (decline). Multi-return fragments are consequently left to
    looks_complete()/manual review rather than guessed at -- narrower
    coverage than the three attempts above tried for, but each of those
    shipped a real bug this one structurally cannot.
    """
    lines = [m for m in (_LINE_RE.match(l) for l in disasm.splitlines()) if m]
    candidates = [int(m.group(1), 16) for m in lines if _RETURN_RE.search(m.group(2))]
    if len(candidates) != 1:
        return False
    ret_off = candidates[0]
    refs = {int(h, 16) for h in _PC_REF_RE.findall(disasm)}
    tail_start = ret_off + 2  # every Thumb return here is one 2-byte halfword
    tail = raw[tail_start:]
    if not tail:
        return True  # nothing trails this return at all
    # Referenced pool addresses are relative to the start of `raw`
    # (objdump's own printed target minus this slice's own base --
    # disassemble() numbers from 0 regardless of the real ROM address,
    # so `@ (0xADDR)` is already relative here, not absolute).
    #
    # Up to 2 bytes of zero alignment padding may sit before the first
    # real pool word (same shape as the handler-setter case above).
    pad = 2 if (len(tail) % 4 != 0 and tail[:2] == b"\x00\x00") else 0
    body = tail[pad:]
    if len(body) % 4 != 0 or len(body) == 0:
        return False
    return all(tail_start + pad + i in refs for i in range(0, len(body), 4))


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
        pool_verified = False
        if not complete and looks_complete_with_pool(disasm, raw):
            complete = True
            pool_verified = True
        new_name = f"sub_{addr:08X}"[:3] + f"_{addr:X}"  # sub_8158E38 style
        new_name = f"sub_{addr:X}"
        complete_note = "complete"
        if complete and pool_verified:
            complete_note = "complete (verified: return + own referenced literal pool)"
        elif not complete:
            complete_note = "INCOMPLETE"
        print(f"\n=== {name} -> {new_name} at 0x{addr:08X} "
              f"({len(raw)} bytes, {complete_note}) ===")
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

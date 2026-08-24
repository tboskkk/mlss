#!/usr/bin/env python3
"""Mint names for ROM data addresses that code loads as raw hex constants.

    ./container.sh tools/mint_data_symbols.py                 # census only
    ./container.sh tools/mint_data_symbols.py --apply         # write symbols + rewrite asm
    ./container.sh tools/mint_data_symbols.py --apply --symbols-only
    ./container.sh tools/mint_data_symbols.py --apply --max 50 --min-refs 2

WHY THIS IS SAFE BY CONSTRUCTION (the argument CLAUDE.md section T.11 makes,
restated because it is the whole basis of the tool): we do NOT need to know
where the underlying data object starts, how big it is, or what it holds.
The only claim a minted symbol makes is "this name resolves to exactly this
address" - and that is true by definition, because the address was taken
FROM the literal the code already loads. Rewriting `.4byte 0x083A78D4` to
`.4byte room_props_table` assembles to the identical word once the linker's
--just-symbols=symbols.txt resolves it. That mechanism is already proven in
this repo by the room_props_table / col_set_ptr_table renames.

WHAT IT DELIBERATELY WILL NOT DO
  * addresses inside asm/mariobros.s (out of scope per CLAUDE.md)
  * addresses that already have a name (symbols/*.txt, or any asm label,
    including the sub_/loc_/_0XXXXXXX forms that encode their own address)
  * addresses that land inside an already-disassembled function body - those
    want a real code label from a proper split, not a data symbol
  * name collisions - checked against every symbol file and every asm label

NAMING follows the IDA-style convention already in tools/symbols/rom.txt
(`dword_83A0E94`, `word_83A74C0`, `byte_83A74E9`, `off_839EC80`): the prefix
records the ACCESS WIDTH observed at the use site, inferred by finding the
`ldr rN, _0XXXXXXX` that loads the literal and reading the first memory
access made through rN in the following instructions:

    ldrb/strb/ldsb  -> byte_     ldrh/strh/ldsh -> word_
    ldr/str         -> dword_    no local deref (passed to a call) -> dword_

The width is a HINT recorded in the name, never a claim the tool relies on:
being wrong about it cannot change a byte, because the symbol is still just
an address.

ALWAYS verify with a from-scratch build - a plain `make` can report OK
against a broken tree (CLAUDE.md's most dangerous landmine):

    rm -rf build/ && ./container.sh make && ./container.sh tools/check_layout.py
"""
from __future__ import annotations

import argparse
import collections
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

ROOT = splitlib.ROOT
MARIOBROS_BASE = 0x08F502B8
ROM_LO, ROM_HI = 0x08000000, 0x09000000

LIT_RE = re.compile(
    r"^(?P<pre>\s*(?P<label>\w+)\s*:\s*\.(?:4byte|word|long)\s+)"
    r"(?P<val>0x0[89A-Fa-f][0-9A-Fa-f]{6})(?P<post>\s*(?:@.*)?)$"
)
LDR_LIT_RE = re.compile(r"^\s*ldr\s+(?P<reg>r\d+)\s*,\s*(?P<label>_\w+)\b")
FUNC_START_RE = re.compile(r"^\s*(?:non_word_aligned_)?(?:thumb|arm)_func_start\s+(\S+)")
LABEL_RE = re.compile(r"^(\w+)\s*:")
SYM_LINE_RE = re.compile(r"^\s*(\w+)\s*=\s*(0x[0-9A-Fa-f]+)\s*;")
ADDR_NAME_RE = re.compile(r"^(?:sub|loc|off|dword|word|byte|stru|unk|str)_0?([0-9A-Fa-f]{6,8})$")
LOCAL_LBL_RE = re.compile(r"^_0([0-9A-Fa-f]{7})$")

WIDTH_PREFIX = {1: "byte", 2: "word", 4: "dword"}
DEREF_RE = re.compile(
    r"^\s*(?P<op>ldrb|strb|ldsb|ldrh|strh|ldsh|ldr|str)\s+r\d+\s*,\s*\[\s*(?P<base>r\d+)"
)
OP_WIDTH = {"ldrb": 1, "strb": 1, "ldsb": 1, "ldrh": 2, "strh": 2, "ldsh": 2, "ldr": 4, "str": 4}
CLOBBER_RE = re.compile(r"^\s*(?:ldr|ldrb|ldrh|ldsb|ldsh|mov|movs|adds|subs|lsls|lsrs|asrs)\s+(r\d+)\s*,")


def asm_files():
    yield from sorted((ROOT / "asm").glob("*.s"))
    yield from sorted((ROOT / "asm" / "nonmatching").glob("*.s"))


def load_known_names():
    """Every name already taken, and every address already spoken for."""
    names, addrs = set(), set()
    for path in sorted((ROOT / "tools" / "symbols").glob("*.txt")):
        for line in path.read_text().splitlines():
            m = SYM_LINE_RE.match(line)
            if m:
                names.add(m.group(1))
                addrs.add(int(m.group(2), 16))
    for path in asm_files():
        for line in path.read_text(errors="replace").splitlines():
            m = FUNC_START_RE.match(line) or LABEL_RE.match(line)
            if not m:
                continue
            name = m.group(1)
            names.add(name)
            m2 = ADDR_NAME_RE.match(name) or LOCAL_LBL_RE.match(name)
            if m2:
                try:
                    addrs.add(int(m2.group(1), 16))
                except ValueError:
                    pass
    return names, addrs


def function_extents():
    """[start, end) of every labeled function, walked from the asm itself.

    An address inside one of these wants a real code label from a proper
    split, not a data symbol - so we skip it. Built from the asm rather
    than mlss.map because map symbols include rodata-blob contributions,
    which would swallow the entire rodata realm.
    """
    spans = []
    for path in asm_files():
        if path.name == "mariobros.s":
            continue
        base = splitlib.base_address_for(path) if hasattr(splitlib, "base_address_for") else None
        starts = []
        for line in path.read_text(errors="replace").splitlines():
            m = FUNC_START_RE.match(line)
            if m:
                a = ADDR_NAME_RE.match(m.group(1))
                if a:
                    starts.append(int(a.group(1), 16))
        starts.sort()
        for i, a in enumerate(starts):
            end = starts[i + 1] if i + 1 < len(starts) else a + 2
            spans.append((a, end))
    spans.sort()
    return spans


def infer_width(lines, lit_label):
    """Width of the first deref through the register that loads `lit_label`."""
    for i, line in enumerate(lines):
        m = LDR_LIT_RE.match(line)
        if not m or m.group("label") != lit_label:
            continue
        reg = m.group("reg")
        for follow in lines[i + 1 : i + 25]:
            d = DEREF_RE.match(follow)
            if d and d.group("base") == reg:
                return OP_WIDTH[d.group("op")]
            c = CLOBBER_RE.match(follow)
            if c and c.group(1) == reg:
                break
    return None


def collect():
    """addr -> {'refs': n, 'sites': [(path, lineno)], 'widths': Counter}"""
    found = collections.defaultdict(lambda: {"refs": 0, "sites": [], "widths": collections.Counter()})
    for path in asm_files():
        if path.name == "mariobros.s":
            continue
        lines = path.read_text(errors="replace").splitlines()
        for n, line in enumerate(lines):
            m = LIT_RE.match(line)
            if not m:
                continue
            addr = int(m.group("val"), 16)
            if not (ROM_LO <= addr < MARIOBROS_BASE):
                continue
            rec = found[addr]
            rec["refs"] += 1
            rec["sites"].append((path, n))
            w = infer_width(lines, m.group("label"))
            if w:
                rec["widths"][w] += 1
    return found


def name_for(addr, widths):
    width = widths.most_common(1)[0][0] if widths else 4
    return f"{WIDTH_PREFIX[width]}_{addr:X}"


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--apply", action="store_true", help="actually write; default is a census")
    ap.add_argument("--symbols-only", action="store_true", help="add symbols.txt entries, do not rewrite asm")
    ap.add_argument("--min-refs", type=int, default=1)
    ap.add_argument("--max", type=int, default=0, help="mint at most N addresses (0 = no limit)")
    ap.add_argument("--min-addr", type=lambda s: int(s, 0), default=ROM_LO)
    args = ap.parse_args()

    known_names, known_addrs = load_known_names()
    extents = function_extents()

    import bisect
    starts = [s for s, _ in extents]

    def inside_function(addr):
        if addr >= 0x081DD790:
            return False          # rodata realm: data by definition
        i = bisect.bisect_right(starts, addr) - 1
        return i >= 0 and extents[i][0] <= addr < extents[i][1]

    found = collect()
    cand = {a: r for a, r in found.items()
            if a not in known_addrs and r["refs"] >= args.min_refs and a >= args.min_addr}
    skipped_fn = {a for a in cand if inside_function(a)}
    cand = {a: r for a, r in cand.items() if a not in skipped_fn}

    print(f"distinct ROM addresses in literal pools (game proper): {len(found):,}")
    print(f"  already named                                      : {len(found) - len([a for a in found if a not in known_addrs]):,}")
    print(f"  inside an already-disassembled function (skipped)  : {len(skipped_fn):,}")
    print(f"  MINTABLE                                           : {len(cand):,}")

    by_realm = collections.Counter()
    for a in cand:
        by_realm["rodata081E2764" if a >= 0x081E2764 else
                 "rodata081DD790" if a >= 0x081DD790 else "code"] += 1
    for k, v in by_realm.most_common():
        print(f"      {k:16s} {v:5,}")

    ordered = sorted(cand.items(), key=lambda kv: (-kv[1]["refs"], kv[0]))
    if args.max:
        ordered = ordered[: args.max]

    plan, taken = [], set(known_names)
    for addr, rec in ordered:
        nm = name_for(addr, rec["widths"])
        if nm in taken:
            continue
        taken.add(nm)
        plan.append((addr, nm, rec))

    print(f"\nplanned mints: {len(plan)}")
    for addr, nm, rec in plan[:20]:
        w = dict(rec["widths"]) or "no deref seen"
        print(f"  0x{addr:08X} -> {nm:20s} refs={rec['refs']:<3} widths={w}")
    if len(plan) > 20:
        print(f"  ... and {len(plan) - 20} more")

    if not args.apply:
        print("\n(census only - re-run with --apply to write)")
        return

    rom_txt = ROOT / "tools" / "symbols" / "rom.txt"
    block = ["", "/* Minted by tools/mint_data_symbols.py - addresses code loads as raw",
             " * literals. The name asserts only the address; the prefix records the",
             " * access width seen at the use site and is a hint, not a claim. */"]
    for addr, nm, rec in sorted(plan, key=lambda t: t[0]):
        block.append(f"{nm} = 0x{addr:08X};  /* {rec['refs']} ref(s) */")
    rom_txt.write_text(rom_txt.read_text().rstrip("\n") + "\n" + "\n".join(block) + "\n")
    print(f"\nappended {len(plan)} entries to {rom_txt.relative_to(ROOT)}")

    if not args.symbols_only:
        edits = collections.defaultdict(list)
        for addr, nm, rec in plan:
            for path, lineno in rec["sites"]:
                edits[path].append((lineno, addr, nm))
        total = 0
        for path, items in edits.items():
            lines = path.read_text(errors="replace").splitlines(keepends=True)
            for lineno, addr, nm in items:
                m = LIT_RE.match(lines[lineno].rstrip("\n"))
                assert m and int(m.group("val"), 16) == addr, f"{path}:{lineno} moved"
                lines[lineno] = f"{m.group('pre')}{nm}{m.group('post')} @ =0x{addr:08X}\n"
                total += 1
            path.write_text("".join(lines))
        print(f"rewrote {total} literal-pool entries across {len(edits)} file(s)")

    import subprocess
    subprocess.run([sys.executable, str(ROOT / "tools" / "gen_symbols.py")], check=True)
    print("\nNOW VERIFY (a plain make can lie - see CLAUDE.md):")
    print("    rm -rf build/ && ./container.sh make && ./container.sh tools/check_layout.py")


if __name__ == "__main__":
    main()

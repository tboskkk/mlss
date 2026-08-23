#!/usr/bin/env python3
"""Decode a Thumb jump table left as raw .byte by Luvdis.

Luvdis stops disassembling at `mov pc, rX`, so everything after the dispatch -
the jump table AND every case body - is dumped as raw `.byte`. That is
data-as-code: m2c cannot see the switch, and the case bodies are invisible.

m2c DOES support ARM jump tables (flow_graph.arm_jtbl_for_ldr), but it needs
the literal pool entry to name a SYMBOL whose target is `.4byte <symbol>` data
sitting in .text. This rewrites the fragment into exactly that shape:

    ldr r1, _080EAFC8 @ =jtbl_080EAFCC
    ...
    mov pc, r0
    _080EAFC8: .4byte jtbl_080EAFCC
    jtbl_080EAFCC:
        .4byte _080EAFE0
        ...
    _080EAFE0:
        <disassembled case body>

Reads only asm/nonmatching/*.s and mlss.map. Writes nothing unless -o is given.
"""
from __future__ import annotations

import argparse
import os
import re
import threading
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

LABEL_RE = re.compile(r"^_([0-9A-Fa-f]{7,8}):")
POOL_RE = re.compile(r"^_([0-9A-Fa-f]{7,8}):\s*\.4byte\s+0x([0-9A-Fa-f]+)")
BYTE_RE = re.compile(r"^\s*\.byte\s+(.*)$")
CMP_RE = re.compile(r"^\s*cmp\s+r\d+,\s*#0x([0-9A-Fa-f]+)")


def load_symbols() -> dict[int, str]:
    """address -> symbol name, from mlss.map."""
    syms: dict[int, str] = {}
    map_path = ROOT / "mlss.map"
    if not map_path.exists():
        return syms
    pat = re.compile(r"^\s+0x([0-9a-fA-F]{8,16})\s+([A-Za-z_][A-Za-z0-9_]*)\s*$")
    for line in map_path.read_text(errors="replace").splitlines():
        m = pat.match(line)
        if m:
            syms.setdefault(int(m.group(1), 16), m.group(2))
    return syms


def line_size(line: str) -> int:
    """Size in bytes of one assembled line. agbcc emits Thumb-1 only."""
    t = line.strip()
    if not t or t.startswith("@"):
        return 0
    t = t.split("@")[0].strip()
    # A label may share its line with a directive ("_080EAFC8: .4byte 0x...").
    m = re.match(r"^[A-Za-z_.$][A-Za-z0-9_.$]*:\s*", t)
    if m:
        t = t[m.end():].strip()
    if not t:
        return 0
    if t.startswith("."):
        for d, mul in ((".byte", 1), (".2byte", 2), (".short", 2),
                       (".4byte", 4), (".word", 4)):
            if t.startswith(d):
                rest = t[len(d):]
                return mul * len([x for x in rest.split(",") if x.strip()])
        return 0          # .syntax/.text/.align etc contribute nothing here
    if t.startswith("thumb_func_start") or t.startswith("non_word_aligned"):
        return 0
    return 4 if re.match(r"^bl\b", t) else 2


def address_map(lines, vma):
    """Assign an address to every line, cross-checked against real labels.

    Any `_0XXXXXXX:` label states its own address, so a disagreement means the
    size model is wrong for this file - in which case we refuse rather than
    silently decode at the wrong offset.
    """
    addr = vma
    out = []
    for i, line in enumerate(lines):
        m = LABEL_RE.match(line.strip())
        if m:
            want = int(m.group(1), 16)
            if want != addr:
                raise SystemExit(
                    f"address model disagrees at line {i + 1}: label says "
                    f"0x{want:08X}, walk says 0x{addr:08X}")
        out.append((i, addr))
        addr += line_size(line)
    return out, addr


def parse(path, vma):
    """Locate the dispatch, its literal pool, the table, and the byte data."""
    lines = path.read_text().splitlines()
    amap, _end = address_map(lines, vma)
    addr_of = dict(amap)

    mov_idx = None
    for i, line in enumerate(lines):
        if re.match(r"^\s*mov\s+pc,\s*r\d+\s*(@.*)?$", line):
            mov_idx = i
            break
    if mov_idx is None:
        raise SystemExit("no `mov pc, rX` dispatch found")

    # The table base is the LAST `ldr rX, _LABEL` before the dispatch.
    pool_label = None
    for line in reversed(lines[:mov_idx]):
        m = re.match(r"^\s*ldr\s+r\d+,\s*(_[0-9A-Fa-f]{7,8})\b", line)
        if m:
            pool_label = m.group(1)
            break
    if pool_label is None:
        raise SystemExit("no `ldr rX, _LABEL` feeding the dispatch")

    table_addr = None
    for line in lines:
        m = re.match(r"^%s:\s*\.4byte\s+0x([0-9A-Fa-f]+)" % pool_label, line.strip())
        if m:
            table_addr = int(m.group(1), 16)
            break
    if table_addr is None:
        raise SystemExit(f"{pool_label} is not a `.4byte 0xADDR` literal pool entry")

    # The bound guarding the dispatch: `cmp rX, #N` closest before it.
    n = None
    for line in reversed(lines[:mov_idx]):
        m = CMP_RE.match(line)
        if m:
            n = int(m.group(1), 16) + 1
            break
    if n is None:
        raise SystemExit("no `cmp rX, #N` bound before the dispatch")

    # Every raw byte in the file, by address.
    data = {}
    byte_lines = []
    for i, line in enumerate(lines):
        m = BYTE_RE.match(line)
        if not m:
            continue
        byte_lines.append(i)
        a = addr_of[i]
        for tok in m.group(1).split(","):
            tok = tok.strip()
            if tok:
                data[a] = int(tok, 16)
                a += 1
    if not data:
        raise SystemExit("no raw .byte data in this fragment")

    # Use only the contiguous run that actually holds the table; other raw
    # runs (trailing alignment padding, unrelated literals) are left alone.
    if table_addr not in data:
        raise SystemExit(f"table 0x{table_addr:08X} is not inside any raw .byte run")
    lo = hi = table_addr
    while lo - 1 in data:
        lo -= 1
    while hi in data:
        hi += 1
    byte_lines = [i for i in byte_lines if lo <= addr_of[i] < hi]
    if not (lo <= table_addr and table_addr + n * 4 <= hi):
        raise SystemExit(
            f"table 0x{table_addr:08X}+{n * 4} lies outside the raw run "
            f"0x{lo:08X}-0x{hi:08X}")

    blob = bytes(data[a] for a in range(lo, hi))
    return lines, amap, pool_label, table_addr, n, lo, hi, blob, byte_lines


def disassemble(data: bytes, vma: int):
    """objdump a byte run as Thumb. Returns [(addr, text)]."""
    tmp = ROOT / f".jt_decode.{os.getpid()}.{threading.get_ident()}.bin"
    tmp.write_bytes(data)
    cmd = ["arm-none-eabi-objdump", "-D", "-b", "binary", "-m", "armv4t",
           "-M", "force-thumb", f"--adjust-vma=0x{vma:X}", tmp.name]
    if not shutil.which("arm-none-eabi-objdump"):
        cmd = ["./container.sh"] + cmd
    try:
        out = subprocess.run(cmd, cwd=ROOT, capture_output=True,
                             text=True, check=True).stdout
    finally:
        tmp.unlink(missing_ok=True)

    res = []
    pat = re.compile(r"^\s*([0-9a-f]+):\s+([0-9a-f ]+?)\s{2,}(.*)$")
    for line in out.splitlines():
        m = pat.match(line)
        if m:
            res.append((int(m.group(1), 16), m.group(3).strip()))
    return res


# objdump renders a PC-relative literal load as `ldr r2, [pc, #128] @ (0x8115590)`.
# Re-assembling that literally is wrong: the offset is only valid at the exact
# address objdump used. Emit the symbolic form and let the assembler compute it.
PCREL_RE = re.compile(
    r"^(ldr\s+r\d+,)\s*\[pc,\s*#-?\d+\]\s*(?:@|;)?\s*\(?0x([0-9a-fA-F]+)\)?")


def symbolize(text, syms, labels):
    """Rewrite objdump's numeric branch/call targets into real names."""
    # objdump's own `[pc, #N]` form is kept verbatim: this rewrite preserves
    # every address exactly, so the offset it computed is still the right one.
    text = re.sub(r"<[^>]*>", "", text).strip()
    text = re.sub(r"\s+", " ", text)

    def repl(m):
        addr = int(m.group(1), 16)
        if addr in syms:
            return syms[addr]
        if addr in labels:
            return f"_{addr:08X}"
        return m.group(0)

    return re.sub(r"\b0x([0-9a-fA-F]{6,8})\b", repl, text)


def branch_targets(text):
    """Every numeric target referenced by a line of objdump output.

    Includes PC-relative literal-pool targets, which must get a label too.
    """
    t = re.sub(r"<[^>]*>", "", re.sub(r"\s+", " ", text.strip()))
    if PCREL_RE.match(re.sub(r"\s+", " ", text.strip())):
        return set()          # literal-pool target, not a branch target

    return {int(x.group(1), 16) for x in re.finditer(r"\b0x([0-9a-fA-F]{6,8})\b", t)}


# Thumb-1 is all an ARM7TDMI can execute. Anything else objdump produces means
# it is decoding DATA, not code - so that is where the code region ends.
THUMB1 = {
    "adc", "add", "adds", "and", "ands", "asr", "asrs", "b", "bic", "bics",
    "bkpt", "bl", "blx", "bx", "cmn", "cmp", "eor", "eors", "ldm", "ldmia",
    "ldr", "ldrb", "ldrh", "ldrsb", "ldrsh", "ldsb", "ldsh", "lsl", "lsls",
    "lsr", "lsrs", "mov", "movs", "mul", "muls", "mvn", "mvns", "neg", "negs",
    "nop", "orr", "orrs", "pop", "push", "ror", "rors", "rsb", "rsbs", "sbc",
    "sbcs", "stm", "stmia", "str", "strb", "strh", "sub", "subs", "swi", "tst",
}
COND = {"eq", "ne", "cs", "cc", "mi", "pl", "vs", "vc",
        "hi", "ls", "ge", "lt", "gt", "le", "al", "hs", "lo"}


def is_thumb1(text: str) -> bool:
    op = text.split()[0].lower() if text.split() else ""
    if op.endswith(".w"):
        return False
    op = op[:-2] if op.endswith(".n") else op
    if op in THUMB1:
        return True
    # conditional branches: beq, bne, blt, ...
    return len(op) > 1 and op[0] == "b" and op[1:] in COND


def code_prefix(insns, region_start, region_len):
    """Split a region into (decodable instructions, leftover raw bytes).

    Conservative on purpose: the moment a decode stops looking like Thumb-1 we
    assume the rest of the region is data and leave it as `.byte`. Losing code
    that way costs a seed; mis-decoding data as code corrupts the fragment.
    """
    good = []
    for addr, text in insns:
        if not is_thumb1(text):
            return good, addr
        good.append((addr, text))
    return good, region_start + region_len


def build(name, vma):
    path = ROOT / "asm" / "nonmatching" / f"{name}.s"
    if not path.exists():
        raise SystemExit(f"no such fragment: {path}")

    lines, amap, pool_label, table_addr, n, lo, hi, blob, byte_lines = parse(path, vma)
    addr_of = dict(amap)

    tbl = blob[table_addr - lo: table_addr - lo + n * 4]
    entries = [int.from_bytes(tbl[i * 4:i * 4 + 4], "little") for i in range(n)]

    # Every case target must land inside this fragment, because each becomes a
    # local `.4byte _0XXXXXXX` label. An entry pointing at another fragment
    # would assemble and even pass a naive byte check, then fail to LINK.
    frag_end = amap[-1][1] + line_size(lines[-1])
    outside = [e for e in entries if not (vma <= e < frag_end)]
    if outside:
        raise SystemExit(
            f"{len(outside)} case target(s) outside this fragment "
            f"(e.g. 0x{outside[0]:08X}, fragment is 0x{vma:08X}-0x{frag_end:08X})")

    # Code lives in the raw run on either side of the table.
    regions = []
    if table_addr > lo:
        regions.append((lo, blob[: table_addr - lo]))
    tail_start = table_addr + n * 4
    if tail_start < hi:
        regions.append((tail_start, blob[tail_start - lo:]))

    syms = load_symbols()
    insns = []
    leftovers = []          # (addr, bytes) that stay raw .byte
    for addr, chunk in regions:
        got = disassemble(chunk, addr)
        good, stop = code_prefix(got, addr, len(chunk))
        insns += good
        if stop < addr + len(chunk):
            leftovers.append((stop, chunk[stop - addr:]))

    existing = {int(m.group(1), 16)
                for line in lines
                if (m := LABEL_RE.match(line.strip()))}

    wanted = set(entries)
    for _, text in insns:
        wanted |= branch_targets(text)

    known = set(entries) | {a for a, _ in insns} | set(addr_of.values()) | existing
    labels = (known & wanted) | set(entries)

    # A case target frequently lands INSIDE a leftover raw-.byte run rather
    # than on a decoded instruction: code_prefix() stops at the first
    # non-Thumb-1 instruction and leaves everything after it as raw bytes, but
    # the switch still branches in there. Those addresses were in `labels`
    # (every entry is) while nothing ever DEFINED them, so the rewrite emitted
    # `.4byte _0805396E` against a label that did not exist and the assembler
    # reported "unresolved symbol '_0805396E' (not defined in this fragment)".
    #
    # That message is what made this look like a cross-fragment problem, and
    # section O.1's guardrail refuses those on sight -- but the target is not
    # outside the fragment at all. Measured: 74 of the 84 "rewritten does not
    # assemble" refusals are this, and for bclr_update_8053778 the "missing"
    # _0805396E sits 502 bytes into its own fragment, which spans 1,338.
    #
    # Labels emit no bytes, so defining them is neutral by construction.
    for _a, _raw in leftovers:
        labels |= {w for w in wanted if _a < w < _a + len(_raw)}

    jt = f"lbl_{table_addr:08X}"
    run_lines = set(byte_lines)
    first_byte_line = byte_lines[0]
    out = []
    emitted_addrs = set()

    for i, line in enumerate(lines):
        if i in run_lines:
            if i != first_byte_line:
                continue
            # Replace the whole raw run with table + decoded code, in order.
            for addr, chunk in regions:
                if addr < table_addr:
                    for a, text in insns:
                        if addr <= a < table_addr:
                            if a in labels:
                                out.append(f"_{a:08X}:")
                            out.append("\t" + symbolize(text, syms, labels))
                            emitted_addrs.add(a)
            out.append(f"{jt}:")
            out += [f"\t.4byte _{e:08X}" for e in entries]
            for a, text in insns:
                if a >= tail_start and a not in emitted_addrs:
                    if a in labels:
                        out.append(f"_{a:08X}:")
                    out.append("\t" + symbolize(text, syms, labels))
                    emitted_addrs.add(a)
            for a, raw in leftovers:
                # Split the run at every referenced address inside it, so each
                # gets a real definition instead of only the run's start.
                cuts = sorted({a} | {w for w in labels if a < w < a + len(raw)})
                for ci, cut in enumerate(cuts):
                    end = cuts[ci + 1] if ci + 1 < len(cuts) else a + len(raw)
                    out.append(f"_{cut:08X}:")
                    seg = raw[cut - a: end - a]
                    for k in range(0, len(seg), 16):
                        out.append("\t.byte " + ", ".join(
                            f"0x{x:02X}" for x in seg[k:k + 16]))
            continue

        # Point the literal pool at the new symbol.
        if line.strip().startswith(f"{pool_label}:"):
            out.append(f"{pool_label}: .4byte {jt}")
            continue
        m = re.match(r"^(\s*ldr\s+r\d+,\s*%s\b)" % pool_label, line)
        if m:
            out.append(f"{m.group(1)} @ ={jt}")
            continue

        # A branch may now target the middle of untouched code; label it.
        a = addr_of.get(i)
        if a is not None and a in wanted and a not in existing and line_size(line):
            out.append(f"_{a:08X}:")
        out.append(line)

    return path, out, n, hi - lo, len(insns)


def _run(cmd):
    if not shutil.which(cmd[0]):
        cmd = ["./container.sh"] + cmd
    return subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True)


def text_bytes(asm_text, vma, syms):
    """Assemble a fragment and resolve its relocations by hand at `vma`.

    Linking with `ld --defsym` does not work here: those symbols look like ARM
    to the linker, so it injects ARM/Thumb interworking veneers that the real
    build never produces. Resolving R_ARM_ABS32 and R_ARM_THM_CALL directly is
    deterministic and needs no linker.

    This matters because the rewritten fragment uses real relocations
    (`.4byte _080EAFE0`, `bl sub_8019308`) where the original baked the same
    addresses in as `.byte` constants. Comparing before resolution is
    meaningless.
    """
    src, obj, binf = (ROOT / f".jt_verify.{os.getpid()}.{threading.get_ident()}{e}" for e in (".s", ".o", ".bin"))
    body = asm_text
    if ".include" not in body:
        body = '\t.include "asm/macros.inc"\n' + body
    src.write_text(body)
    try:
        r = _run(["arm-none-eabi-as", "-mcpu=arm7tdmi", "-mthumb-interwork",
                  "-I", "asm", "-o", obj.name, src.name])
        if r.returncode != 0:
            return None, r.stderr.strip()
        r = _run(["arm-none-eabi-objcopy", "-O", "binary", "-j", ".text",
                  obj.name, binf.name])
        if r.returncode != 0:
            return None, r.stderr.strip()
        data = bytearray(binf.read_bytes())

        by_name = {v: k for k, v in syms.items()}
        r = _run(["arm-none-eabi-objdump", "-r", obj.name])
        for line in r.stdout.splitlines():
            parts = line.split()
            if len(parts) < 3 or not re.fullmatch(r"[0-9a-f]{8}", parts[0]):
                continue
            off, kind, sym = int(parts[0], 16), parts[1], parts[2]

            if sym in (".text", ".text.unlikely"):
                target = vma
            elif sym in by_name:
                target = by_name[sym]
            else:
                # Deliberately NOT resolved from the label's own name. A
                # `_0XXXXXXX` label this fragment does not define is precisely
                # what the real link fails on, and inferring its address here
                # would make verification weaker than the gate it stands in for.
                return None, f"unresolved symbol {sym!r} (not defined in this fragment)"

            if kind == "R_ARM_ABS32":
                # REL format: the addend already sits in the data word.
                cur = int.from_bytes(data[off:off + 4], "little")
                data[off:off + 4] = ((target + cur) & 0xFFFFFFFF).to_bytes(4, "little")
            elif kind in ("R_ARM_THM_CALL", "R_ARM_THM_PC22"):
                delta = target - (vma + off + 4)
                hi = 0xF000 | ((delta >> 12) & 0x7FF)
                lo = 0xF800 | ((delta >> 1) & 0x7FF)
                data[off:off + 2] = hi.to_bytes(2, "little")
                data[off + 2:off + 4] = lo.to_bytes(2, "little")
            else:
                return None, f"unhandled relocation type {kind}"
        return bytes(data), None
    finally:
        for f in (src, obj, binf):
            f.unlink(missing_ok=True)


def candidates():
    """Every fragment whose dispatch was left as raw `.byte`."""
    out = []
    for f in sorted((ROOT / "asm" / "nonmatching").glob("*.s")):
        t = f.read_text()
        if re.search(r"mov\s+pc,", t) and re.search(r"^\s*\.byte", t, re.M):
            out.append(f.stem)
    return out


def vma_of(name, syms):
    by_name = {v: k for k, v in syms.items()}
    if name in by_name:
        return by_name[name]
    m = re.match(r"^sub_([0-9A-Fa-f]{7,8})$", name)
    return int(m.group(1), 16) if m else None


def run_all(apply: bool) -> int:
    syms = load_symbols()
    ok, refused = [], {}
    for n in candidates():
        vma = vma_of(n, syms)
        if vma is None:
            refused.setdefault("address unknown", []).append(n)
            continue
        try:
            path, out, ncase, nbytes, ninsn = build(n, vma)
            text = "\n".join(out) + "\n"
            before, e1 = text_bytes(path.read_text(), vma, syms)
            after, e2 = text_bytes(text, vma, syms)
            if before is None:
                refused.setdefault("original does not assemble", []).append(n)
            elif after is None:
                refused.setdefault("rewritten does not assemble", []).append(n)
            elif before != after:
                refused.setdefault("bytes differ", []).append(n)
            else:
                ok.append((n, ncase, ninsn))
                if apply:
                    path.write_text(text)
        except SystemExit as e:
            refused.setdefault(str(e)[:60], []).append(n)
        except Exception as e:
            refused.setdefault(f"{type(e).__name__}: {e}"[:60], []).append(n)

    verb = "REWROTE" if apply else "would rewrite"
    print(f"{verb} {len(ok)} of {len(candidates())} candidates: "
          f"{sum(i for _, _, i in ok):,} instructions, "
          f"{sum(c for _, c, _ in ok):,} switch cases recovered")
    if refused:
        print("\nrefused (left untouched):")
        for k, v in sorted(refused.items(), key=lambda x: -len(x[1])):
            print(f"  {len(v):4d}  {k}")
    if apply:
        print("\nNow run:  rm -rf build/ && ./container.sh make")
        print("A from-scratch build is the only real gate - the per-function")
        print("byte check cannot see cross-fragment link failures.")
    return 0


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("name", nargs="?", help="function name, e.g. sub_80EAFB4")
    ap.add_argument("--all", action="store_true",
                    help="report every candidate (add --in-place to rewrite them)")
    ap.add_argument("-o", "--output", help="write result here")
    ap.add_argument("--verify", action="store_true",
                    help="assemble both versions and require identical .text bytes")
    ap.add_argument("--in-place", action="store_true",
                    help="rewrite the fragment (implies --verify; refuses on mismatch)")
    args = ap.parse_args()

    if args.all:
        return run_all(apply=args.in_place)
    if not args.name:
        raise SystemExit("give a function name, or --all")

    syms = load_symbols()
    vma = vma_of(args.name, syms)
    if vma is None:
        raise SystemExit(f"{args.name}: not in mlss.map, cannot find its address")

    path, out, n, nbytes, ninsn = build(args.name, vma)
    text = "\n".join(out) + "\n"

    if args.verify or args.in_place:
        before, e1 = text_bytes(path.read_text(), vma, syms)
        after, e2 = text_bytes(text, vma, syms)
        if before is None:
            raise SystemExit(f"{args.name}: ORIGINAL does not assemble: {e1}")
        if after is None:
            raise SystemExit(f"{args.name}: rewritten does not assemble: {e2}")
        if before != after:
            raise SystemExit(
                f"{args.name}: BYTES DIFFER ({len(before)} -> {len(after)}) - refusing")
        print(f"{args.name}: byte-identical ({len(before)} bytes), "
              f"{n} cases, {ninsn} instructions recovered from {nbytes} raw bytes")

    if args.in_place:
        path.write_text(text)
        print(f"rewrote {path}")
    elif args.output:
        Path(args.output).write_text(text)
        print(f"wrote {args.output}")
    elif not args.verify:
        sys.stdout.write(text)
    return 0


if __name__ == "__main__":
    sys.exit(main())

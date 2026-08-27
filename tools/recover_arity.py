#!/usr/bin/env python3
"""Recover a function's true parameter count from its RETAIL call sites.

WHY THIS EXISTS. m2c infers signatures from the callee's body alone, so a
parameter the callee never reads is simply omitted -- and every parameter
after it then shifts down one register. The resulting mismatch looks exactly
like a register-allocation miss, which sends it to decomp-permuter, whose
mutations are all behaviour-preserving and therefore structurally incapable
of fixing it.

Worked example (sub_815F064): our C declared (void *, u16); retail reads the
halfword from r2, not r1. The retail caller sets up r0, r1 AND r2, so the
real signature has three parameters with an unused middle one. One
instruction differed; nine permuter searches could never have closed it.

THE ABI. AAPCS on ARMv4T/Thumb: the first four integer/pointer arguments go
in r0-r3, left to right; anything beyond spills to the stack. So the highest
argument register a caller populates before `bl` is a lower bound on arity.

WHAT THIS TOOL CLAIMS, AND WHAT IT DOES NOT. It reports a lower bound with
an explicit confidence, never a guaranteed answer:

  * A register DEFINED in the call's own basic block before the `bl` is
    positive evidence -- the caller computed it for this call.
  * A register only READ, never defined, is ambiguous: it may be a
    pass-through of the caller's own incoming argument (real evidence) or
    incidental use. It is reported separately, never silently counted.
  * Varargs, struct-by-value and stack-spilled arguments are out of scope.

Reading the disassembly we already have (asm/*.s) rather than lifting with
Capstone is deliberate: those files ARE the retail bytes, byte-for-byte, and
carry real symbol names for `bl` targets. Nothing needs disassembling again.

    python3 tools/recover_arity.py sub_815F064
    python3 tools/recover_arity.py --all --min-sites 2
"""
from __future__ import annotations

import argparse
import collections
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
ASM_DIRS = [REPO / "asm", REPO / "asm" / "nonmatching"]

ARG_REGS = ("r0", "r1", "r2", "r3")

# A label that begins a basic block, e.g. `_0815F088:` or `sub_815F064:`.
LABEL_RE = re.compile(r"^\s*([A-Za-z_.$][\w.$]*):\s*(?:@.*)?$")
# `<mnemonic> <operands>` -- directives (leading '.') are not instructions.
INSN_RE = re.compile(r"^\s+(?!\.)([a-z][a-z0-9.]*)\s*(.*?)\s*(?:@.*)?$")
FUNC_START_RE = re.compile(r"^\s*thumb_func_start\s+(\S+)")
REG_RE = re.compile(r"\br(?:[0-9]|1[0-5])\b")

# Mnemonics whose FIRST register operand is written. Thumb's load/store
# asymmetry is the thing to get right here: `ldr r0, [r1]` defines r0, but
# `str r0, [r1]` READS r0 -- treating a store as a definition would invent
# arguments that do not exist.
WRITES_FIRST = {
    "movs", "mov", "adds", "add", "subs", "sub", "muls", "mul",
    "lsls", "lsrs", "asrs", "rors", "negs", "ands", "orrs", "eors", "bics",
    "mvns", "adcs", "sbcs",
    "ldr", "ldrb", "ldrh", "ldsb", "ldsh", "ldrsb", "ldrsh",
    "sxtb", "sxth", "uxtb", "uxth", "rev", "rev16", "revsh",
}
# Read-only in their first operand.
READS_ONLY = {"cmp", "cmn", "tst", "str", "strb", "strh", "push", "b", "bl",
              "blx", "bx", "beq", "bne", "bgt", "blt", "bge", "ble", "bhi",
              "bls", "bcc", "bcs", "bmi", "bpl", "bvc", "bvs", "bal"}
# Anything that ends a basic block: control leaves this instruction.
BRANCH_PREFIXES = ("b", "bx", "blx")


def _is_unconditional(mnem: str) -> bool:
    """`b`, `bx`, `blx`, `bal` -- control cannot fall through these."""
    base = mnem.split(".")[0]
    return base in ("b", "bx", "blx", "bal")


def _is_branch(mnem: str) -> bool:
    if mnem == "bl":
        return False  # a call returns; it does not end the block for our purpose
    return mnem == "bx" or mnem == "blx" or (
        mnem.startswith("b") and mnem not in WRITES_FIRST and mnem[:1] == "b"
        and re.fullmatch(r"b(?:\.n|\.w)?|b(?:eq|ne|gt|lt|ge|le|hi|ls|cc|cs|mi|pl|vc|vs|al)(?:\.n|\.w)?", mnem) is not None
    )


class Insn:
    __slots__ = ("mnem", "ops", "raw")

    def __init__(self, mnem: str, ops: str, raw: str):
        self.mnem, self.ops, self.raw = mnem, ops, raw

    def defines(self) -> str | None:
        """The register this instruction writes, if it is r0-r3."""
        if self.mnem in READS_ONLY:
            return None
        if self.mnem == "pop" or self.mnem.startswith("ldm"):
            return None  # handled by the caller as a multi-register write
        if self.mnem in WRITES_FIRST:
            m = REG_RE.search(self.ops)
            if m and m.group(0) in ARG_REGS:
                return m.group(0)
        return None

    def multi_writes(self) -> list[str]:
        """Registers written by pop/ldm (register-list forms)."""
        if self.mnem == "pop" or self.mnem.startswith("ldm"):
            return [r for r in REG_RE.findall(self.ops) if r in ARG_REGS]
        return []

    def reads(self) -> list[str]:
        """Argument registers this instruction reads (approximate but
        deliberately over-inclusive: a false 'read' only ever weakens a
        pass-through claim, it never invents an argument)."""
        regs = [r for r in REG_RE.findall(self.ops) if r in ARG_REGS]
        d = self.defines()
        if d is not None and regs and regs[0] == d:
            # `adds r0, r0, #1` both writes and reads r0; keep later operands
            return regs[1:] if self.mnem not in ("movs", "mov", "ldr", "ldrb",
                                                 "ldrh", "ldsb", "ldsh") else regs[1:]
        return regs


def parse_file(path: Path):
    """-> list of (func_name, [ (index, Insn|label) ]) for one .s file."""
    funcs, cur, name = [], [], None
    for raw in path.read_text(errors="ignore").splitlines():
        fm = FUNC_START_RE.match(raw)
        if fm:
            if name is not None:
                funcs.append((name, cur))
            name, cur = fm.group(1), []
            continue
        lm = LABEL_RE.match(raw)
        if lm:
            if name is not None:
                cur.append(("label", lm.group(1)))
            continue
        im = INSN_RE.match(raw)
        if im and name is not None:
            cur.append(("insn", Insn(im.group(1), im.group(2), raw.strip())))
    if name is not None:
        funcs.append((name, cur))
    return funcs


def branch_targets(items) -> set[str]:
    """Labels something actually branches to.

    Not every label starts a basic block. Luvdis emits a label at many
    addresses that nothing jumps to, and treating those as block boundaries
    truncates the backward walk early -- which under-reports arity. Measured:
    free_heap_8018D9C(void*) reported 0 arguments because r0 was set just
    above an inert label. Only real branch targets end a block."""
    targets = set()
    for kind, val in items:
        if kind != "insn":
            continue
        if val.mnem == "bl" or not _is_branch(val.mnem):
            continue
        for tok in re.findall(r"[A-Za-z_.$][\w.$]*", val.ops):
            targets.add(tok)
    return targets


def analyse_call_site(items, idx, targets: set[str]):
    """Walk backwards from the `bl` at items[idx] to the top of its basic
    block. -> (defined_before_call, read_but_undefined)."""
    defined: set[str] = set()
    read_undef: set[str] = set()
    i = idx - 1
    while i >= 0:
        kind, val = items[i]
        if kind == "label":
            if val in targets:
                break  # a real branch target: control can enter here
            i -= 1
            continue  # inert label, keep walking
        insn = val
        if _is_branch(insn.mnem):
            # ONLY an unconditional branch cuts the walk. A conditional
            # branch has a fall-through edge, so the instructions above it
            # still dominate this call and their definitions are live here:
            #
            #     ldr r0, [r7, #0x18]      @ the argument
            #     cmp r0, #0x00
            #     beq _0801DF68
            #     bl  free_heap_8018D9C    @ reached by falling through
            #
            # Measured: treating `beq` as a boundary made
            # free_heap_8018D9C(void *) report 0 arguments on 30 of 38 call
            # sites. Its sibling free_heap_8018DA8, whose callers happen not
            # to guard the call, reported 1 correctly -- which is what made
            # the discrepancy visible.
            if _is_unconditional(insn.mnem):
                break
            i -= 1
            continue
        if insn.mnem == "bl":
            # An earlier call in the same block clobbers r0-r3 per AAPCS, so
            # anything set BEFORE it is not this call's argument -- stop here.
            #
            # But the call itself DEFINES r0: its return value. Missing that
            # would under-report the extremely common "allocate, then pass the
            # pointer" idiom, where r0 is never written by a visible
            # instruction at all:
            #
            #     bl alloc_Zero        @ r0 = new object
            #     adds r1, r4, #0
            #     movs r2, #0
            #     bl sub_815F064       @ three arguments, only two written here
            #
            # Found by running this tool against a function whose arity was
            # already proven from its disassembly: it reported 0 instead of 3.
            if "r0" not in defined:
                defined.add("r0")
            break
        for r in insn.multi_writes():
            defined.add(r)
        d = insn.defines()
        if d:
            defined.add(d)
        for r in insn.reads():
            if r not in defined:
                read_undef.add(r)
        i -= 1
    return defined, read_undef


def collect_sites(target: str):
    """Every `bl target` in the retail disassembly, analysed."""
    sites = []
    seen_files = set()
    for d in ASM_DIRS:
        if not d.is_dir():
            continue
        for path in sorted(d.glob("*.s")):
            if path in seen_files:
                continue
            seen_files.add(path)
            text = path.read_text(errors="ignore")
            if f"bl {target}" not in text:
                continue
            for caller, items in parse_file(path):
                targets = branch_targets(items)
                for i, (kind, val) in enumerate(items):
                    if kind == "insn" and val.mnem == "bl" and val.ops.strip() == target:
                        defined, read_undef = analyse_call_site(items, i, targets)
                        sites.append({
                            "file": path.name, "caller": caller,
                            "defined": defined, "read_undef": read_undef,
                        })
    return sites


def highest_contiguous(regs: set[str]) -> int:
    """Arity implied by a set of populated registers, requiring CONTIGUITY
    from r0. AAPCS fills r0,r1,r2,... with no gaps, so {r0,r2} means r1 was
    passed through rather than that there are 3 args with a hole -- counting
    the gap as populated would over-report."""
    n = 0
    for r in ARG_REGS:
        if r in regs:
            n += 1
        else:
            break
    return n


def recover(target: str, verbose: bool = True):
    sites = collect_sites(target)
    if not sites:
        return {"name": target, "sites": 0, "arity": None,
                "confidence": "none", "note": "no `bl` call sites found in asm/"}

    votes = collections.Counter()
    for s in sites:
        # Definite evidence: contiguous r0.. defined in this block.
        definite = highest_contiguous(s["defined"])
        # Pass-through: a register read but never defined here is very likely
        # the caller forwarding its own incoming argument.
        combined = highest_contiguous(s["defined"] | s["read_undef"])
        s["definite"], s["combined"] = definite, combined
        votes[combined] += 1

    best, best_n = votes.most_common(1)[0]
    agree = best_n / len(sites)
    # MODE, not max. A single anomalous call site -- a caller that happened to
    # have r3 live for an unrelated reason -- poisons a max. Measured:
    # alloc_heap_8018CEC(bool32, u32, char*) is 3 arguments, and max reported
    # 4 off one such site while the mode reported 3 correctly.
    definite_votes = collections.Counter(s["definite"] for s in sites)
    definite_mode = definite_votes.most_common(1)[0][0]

    if len(sites) == 1:
        conf = "low (single call site)"
    elif agree == 1.0:
        conf = "high (all call sites agree)"
    elif agree >= 0.7:
        conf = f"medium ({best_n}/{len(sites)} agree)"
    else:
        conf = f"low (split vote {dict(votes)})"

    if verbose:
        print(f"\n=== {target} ===")
        print(f"call sites found: {len(sites)}")
        for s in sites:
            d = ",".join(sorted(s["defined"])) or "-"
            p = ",".join(sorted(s["read_undef"])) or "-"
            print(f"  {s['file']:28s} in {s['caller']:22s} defined=[{d:12s}] "
                  f"passthru?=[{p:12s}] -> {s['combined']}")
        print(f"\n  arity (with pass-through): {best}   {conf}")
        print(f"  arity (defined-only lower bound): {definite_mode}")
        if best != definite_mode:
            print("  NOTE: the two disagree -- the higher figure counts registers that are"
                  "\n        read but never defined at the call site, i.e. assumed inherited.")
    return {"name": target, "sites": len(sites), "arity": best,
            "definite": definite_mode, "confidence": conf, "votes": dict(votes)}


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("targets", nargs="*", help="function symbol(s) to analyse")
    ap.add_argument("--all", action="store_true",
                    help="analyse every sub_XXXXXXX that has call sites")
    ap.add_argument("--min-sites", type=int, default=1,
                    help="only report functions with at least this many call sites")
    ap.add_argument("--quiet", action="store_true", help="summary lines only")
    args = ap.parse_args()

    if args.all:
        targets = set()
        for d in ASM_DIRS:
            if not d.is_dir():
                continue
            for p in d.glob("*.s"):
                targets.update(re.findall(r"^\s+bl\s+(\S+)\s*$",
                                          p.read_text(errors="ignore"), re.M))
        targets = sorted(targets)
    else:
        targets = args.targets
    if not targets:
        ap.error("give one or more function names, or --all")

    for t in targets:
        r = recover(t, verbose=not args.quiet)
        if r["sites"] < args.min_sites:
            continue
        if args.quiet:
            print(f"{r['name']:22s} sites={r['sites']:3d} arity={r['arity']} "
                  f"definite={r.get('definite')} {r['confidence']}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

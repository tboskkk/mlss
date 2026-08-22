#!/usr/bin/env python3
"""Infer callee signatures from CALL SITES, not from matched functions.

WHY. Roughly half the non-compiling seed pile fails on one root cause: m2c
guessing a callee's signature wrong (`called object is not a function`,
`void value not ignored as it ought to be`, `too few arguments`). The
obvious fix -- feed m2c the signatures of functions we have already matched
-- was built and MEASURED as no help: the 2,255 failing seeds reference
2,793 distinct `sub_*` callees and only 2.3% of those are matched. Matching
our way to the rest at a few per hour is not a path.

But a signature does not require a match. Every call site in the
disassembly already encodes one: the ARM EABI passes the first four
arguments in r0-r3, so the registers set up before a `bl` give arity, and
whether r0 is read afterwards gives void-vs-value. There are 20,123 call
sites in the fragments, so most callees are described many times over and
the consensus across sites is far more trustworthy than any single one.

HOW EACH SITE IS READ. Walk backwards from the `bl` to the start of its
basic block (a label or a preceding branch), recording writes to r0-r3.
Argument registers are contiguous from r0, so arity is one past the highest
index seen. Two corrections that matter, both visible in real code:

  * r0 may hold a PREVIOUS call's return value used as this call's first
    argument -- so a `bl` earlier in the block makes r0 count as set even
    with no explicit write. Seen directly in sub_801B034: `bl alloc_Zero`
    (r0-r3 set, arity 4) feeding `bl bclr_init` (only r1, r2 written, but
    really 3 arguments).
  * a register written AFTER the call, in the same block, says nothing
    about the call.

Return value: r0 is read before being rewritten after the `bl` -> non-void.

VALIDATION IS THE POINT. Inference is worthless unless it is right, so this
scores itself against the 342 functions whose real signatures are known
from matched source. Run it before trusting anything it produces.

Usage:
    python3 tools/factory/infer_signatures.py --validate
    python3 tools/factory/infer_signatures.py --emit out.h
"""
from __future__ import annotations

import argparse
import collections
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

ARG_REGS = ("r0", "r1", "r2", "r3")

BL = re.compile(r"^\s*bl\s+([A-Za-z_]\w*)")
LABEL = re.compile(r"^\s*[_.\w]+:")
BRANCH = re.compile(r"^\s*(b|beq|bne|bgt|blt|bge|ble|bhi|bls|bcs|bcc|bmi|bpl|bx|pop)\b")
# Any instruction whose destination is its first operand.
WRITE = re.compile(r"^\s*(mov|movs|add|adds|sub|subs|ldr|ldrb|ldrh|ldrsb|ldrsh|"
                   r"lsl|lsls|lsr|lsrs|asr|asrs|and|ands|orr|orrs|eor|eors|"
                   r"neg|negs|mul|muls|mvn|mvns)\b\s+(r\d+)")
READ_ANY = re.compile(r"\br0\b")


def _code_lines(text: str) -> list[str]:
    out = []
    for line in text.splitlines():
        s = line.split("@")[0].rstrip()
        if s.strip():
            out.append(s)
    return out


def _sites_in(text: str) -> list[tuple[str, int, int | None]]:
    """[(callee, arity, returns_value or None)] for each call site."""
    lines = _code_lines(text)
    out = []
    for i, line in enumerate(lines):
        m = BL.match(line)
        if not m:
            continue
        callee = m.group(1)

        # --- backwards to the PREVIOUS CALL, not the previous label ---
        # The ABI boundary, not the basic-block boundary. r0-r3 are
        # caller-saved, so a call clobbers them and every argument to THIS
        # call must be set after the previous `bl`. Labels and branches do
        # not clobber anything, so stopping at them (the first version of
        # this) truncated the scan and under-counted: free_heap_8018D9C
        # read as 0 arguments across 75 sites when it really takes 1,
        # simply because r0 was set before a label.
        written = set()
        saw_earlier_call = False
        for j in range(i - 1, -1, -1):
            prev = lines[j]
            if LABEL.match(prev):
                break
            if BL.match(prev):
                saw_earlier_call = True
                break
            if BRANCH.match(prev):
                break
            w = WRITE.match(prev)
            if w and w.group(2) in ARG_REGS:
                written.add(w.group(2))
        if saw_earlier_call:
            written.add("r0")   # previous return feeding this call
        arity = 0
        for k, reg in enumerate(ARG_REGS):
            if reg in written:
                arity = k + 1
        # Contiguity: r0..r(arity-1) must all be present for this to be a
        # confident reading; a gap means we misread the block.
        if arity and not all(r in written for r in ARG_REGS[:arity]):
            arity = -1  # unusable, don't vote

        # --- forwards: is r0 consumed? ---
        returns = None
        for j in range(i + 1, min(i + 12, len(lines))):
            nxt = lines[j]
            if LABEL.match(nxt) or BL.match(nxt):
                break
            w = WRITE.match(nxt)
            if w and w.group(2) == "r0":
                returns = False
                break
            if READ_ANY.search(nxt):
                returns = True
                break
        out.append((callee, arity, returns))
    return out


def gather() -> dict:
    """callee -> {'arity': Counter, 'returns': Counter, 'sites': int}"""
    data = collections.defaultdict(
        lambda: {"arity": collections.Counter(), "returns": collections.Counter(), "sites": 0})
    frag_dir = gitops.REPO / "asm" / "nonmatching"
    for f in sorted(frag_dir.glob("*.s")):
        try:
            text = f.read_text()
        except OSError:
            continue
        for callee, arity, returns in _sites_in(text):
            d = data[callee]
            d["sites"] += 1
            if arity >= 0:
                d["arity"][arity] += 1
            if returns is not None:
                d["returns"][returns] += 1
    return data


# A call site can only UNDER-report arity, never over-report it, once the
# scan is bounded by the basic block: an argument set before a label is
# missed, but a register that is written right before a `bl` really is an
# argument. So the aggregate is the HIGHEST arity with meaningful support,
# not the most common one -- the mode is dragged down by every site that
# happened to set its arguments earlier.
#
# Three aggregations were measured against the 349 known signatures, and
# the simplest won:
#     mode, basic-block scan          83.6%   <- kept
#     mode, scan to previous call     70.6%   (over-counts)
#     max-with-support, block scan    64.1%   (over-shoots)
# The two "improvements" were reasoned from how the error SHOULD behave and
# both made it worse. Measure before believing a refinement.


def consensus(d: dict) -> tuple[int | None, bool | None, float]:
    """-> (arity, returns_value, confidence 0..1)"""
    if not d["arity"]:
        return None, None, 0.0
    total = sum(d["arity"].values())
    (top_arity, n), = d["arity"].most_common(1)
    conf = n / total
    ret = None
    if d["returns"]:
        (top_ret, rn), = d["returns"].most_common(1)
        if rn / sum(d["returns"].values()) >= 0.6:
            ret = top_ret
    return top_arity, ret, conf


def known_signatures() -> dict:
    """name -> (arity, returns_value) from matched source. Ground truth."""
    out = {}
    for proto in m2c_bridge.matched_signatures().split(";"):
        proto = " ".join(proto.split())
        m = re.match(r"^(.*?)\b(\w+)\s*\((.*)\)$", proto)
        if not m:
            continue
        ret, name, args = m.group(1).strip(), m.group(2), m.group(3).strip()
        if args in ("void", ""):
            arity = 0
        else:
            depth, n = 0, 1
            for ch in args:
                if ch in "([": depth += 1
                elif ch in ")]": depth -= 1
                elif ch == "," and depth == 0: n += 1
            arity = n
        out[name] = (arity, not ret.startswith("void") or ret.startswith("void *"))
    return out


def prototypes(min_sites: int = 8, min_conf: float = 0.8) -> dict:
    """name -> prototype string, for callees confident enough to publish.

    Defaults to the bar that measured 94.7% arity accuracy against known
    signatures (>=8 call sites, >=0.8 agreement). Loosening to >=2 sites /
    >=0.6 covers 682 callees instead of 161 but drops to 83.6%, and a seed
    needs EVERY one of its callees right -- so which bar is correct is an
    empirical question about end-to-end compile rate, not a matter of taste.
    Both are reachable from here so it can be measured.

    Return type is deliberately coarse: `s32` when r0 is consumed at the
    call sites, `void` when it is not. Return inference is the weaker half
    (62-67%), so when the sites disagree it emits s32 -- the harmless
    direction, since ignoring a returned value is legal C while using a void
    one is an error.
    """
    out = {}
    for name, d in gather().items():
        if not name.startswith("sub_"):
            continue
        arity, returns, conf = consensus(d)
        if arity is None or d["sites"] < min_sites or conf < min_conf:
            continue
        args = ", ".join(["s32"] * arity) if arity else "void"
        # ALWAYS s32, never void. The docstring above already argued this
        # and the code did the opposite: return inference is the weak half
        # (62-67%), and getting it wrong toward `void` is the HARMFUL
        # direction -- ignoring a returned value is legal C, using a void
        # one is a hard error. Measured directly: seeds failed on "void
        # value not ignored as it ought to be" at lines calling functions
        # this tool had declared void.
        out[name] = f"s32 {name}({args});"
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--validate", action="store_true")
    ap.add_argument("--min-sites", type=int, default=2)
    ap.add_argument("--min-conf", type=float, default=0.6)
    args = ap.parse_args()

    data = gather()
    print(f"{len(data)} distinct callees seen across "
          f"{sum(d['sites'] for d in data.values())} call sites")

    if args.validate:
        truth = known_signatures()
        print(f"\nground truth available for {len(truth)} functions\n")
        tested = ar_ok = ret_ok = ret_tested = 0
        misses = []
        for name, (t_arity, t_ret) in sorted(truth.items()):
            if name not in data:
                continue
            d = data[name]
            arity, ret, conf = consensus(d)
            if arity is None or d["sites"] < args.min_sites or conf < args.min_conf:
                continue
            tested += 1
            if arity == t_arity:
                ar_ok += 1
            elif len(misses) < 12:
                misses.append((name, arity, t_arity, d["sites"], conf))
            if ret is not None:
                ret_tested += 1
                if ret == t_ret:
                    ret_ok += 1
        if tested:
            print(f"ARITY   {ar_ok}/{tested} correct ({100*ar_ok/tested:.1f}%)")
        if ret_tested:
            print(f"RETURNS {ret_ok}/{ret_tested} correct ({100*ret_ok/ret_tested:.1f}%)")
        if misses:
            print("\nmisses (inferred vs real):")
            for n, got, want, sites, conf in misses:
                print(f"  {n:26} inferred {got} args, real {want}  "
                      f"({sites} sites, conf {conf:.2f})")
        cover = sum(1 for n, d in data.items()
                    if n.startswith("sub_") and d["sites"] >= args.min_sites
                    and consensus(d)[2] >= args.min_conf)
        print(f"\ncoverage: {cover} sub_* callees meet the confidence bar")


if __name__ == "__main__":
    main()

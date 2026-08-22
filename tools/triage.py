#!/usr/bin/env python3
"""Dependency-aware work queue: what should anyone actually decompile next?

The problem this exists to solve
-------------------------------
Until this tool, "what's next" was answered by a heuristic - pick the
smallest remaining asm/*.s file, take whatever function is at its front.
That is not a plan, it's an ordering, and it demonstrably hands people
unsolvable problems: every remaining function in option_screens.s calls
sub_8199D78 / sub_8199D5C / sub_8199624, all three of which are still raw
undecompiled assembly in text08057568.s. You cannot confidently derive a
caller's parameter semantics when its callees are unknown - a local model
burned ~10 hours of autopilot on exactly those functions overnight, and a
Claude session hit the same wall for the same reason and stopped.

That is an ORGANIZATION failure, not a decompilation-skill failure, and
it's the kind that compounds: the harder a function is, the more attempts
get wasted on it, the less throughput everything else gets.

What "tractable" actually means here
------------------------------------
A function is easy to match, roughly in this order of importance:

  1. It doesn't call anything (a leaf), or only calls functions already
     matched - you can read its behavior end to end without guessing.
  2. It's small. Fewer instructions, fewer chances for a register
     allocation quirk to hide in.
  3. It doesn't lean on r8-r11. High registers mean real register
     pressure, which usually means the C has to be shaped unusually to
     reproduce agbcc's allocation.
  4. It doesn't juggle a big stack frame, which usually means many locals
     and/or many outgoing args.

Nothing here is novel decomp theory - it's the standard "do the leaves
first, work up the call graph" order that every successful decomp project
converges on. It just wasn't written down or automated for this one.

The leverage idea
-----------------
The queue also reports, for each still-unmatched function, how many OTHER
unmatched functions call it. Matching a function with high fan-in doesn't
just score one function, it unblocks everything above it. That's what turns
"this pile is impossible" into an actual ordering - and it's what tells you
that a slightly harder function is worth doing FIRST because four easier
ones are waiting behind it.

Usage
-----
    tools/triage.py                  # top tractable functions, all files
    tools/triage.py --limit 40
    tools/triage.py --file heap.s    # restrict to one asm blob
    tools/triage.py --unlockers      # what's worth matching to unblock others
    tools/triage.py --json           # machine-readable (for qwen_pilot.sh)
    tools/triage.py --explain NAME   # why is this one scored the way it is

Caveat worth knowing: extraction is still front-to-back per file (see
CLAUDE.md), so a highly tractable function sitting mid-file can't actually
be pulled yet. The queue reports `extractable_now` per entry so callers can
filter to what's genuinely actionable today, and `--blocked-by-order`
surfaces how much good work that constraint is currently costing - which is
the evidence needed to decide whether lifting it is worth the risk.
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib  # noqa: E402
import progress  # noqa: E402

REPO = Path(__file__).resolve().parent.parent
ASM_DIR = REPO / "asm"
SRC_DIR = REPO / "src"

# Files deliberately out of scope for routine work. mariobros.s is a
# separate embedded game (see CLAUDE.md's scope decision); text08000000.s's
# front is the unidentified crt0/m4a preamble that drags 6k lines with it.
SKIP_FILES = {"mariobros.s"}

BL_RE = re.compile(r"^\s*bl\s+([A-Za-z_][A-Za-z0-9_]*)")
HIGH_REG_RE = re.compile(r"\br(?:8|9|10|11)\b|\bsl\b|\bfp\b")
SP_ADJ_RE = re.compile(r"^\s*(?:add|sub)\s+sp,\s*#-?0x([0-9A-Fa-f]+)")
# Calls that are dispatch through a register (function pointers / veneers).
# Real calls, but the target isn't statically knowable from the call site.
INDIRECT_RE = re.compile(r"^\s*bl\s+_call_via_r\d+")


class Func:
    __slots__ = (
        "name", "file", "start", "end", "lines", "callees", "indirect_calls",
        "high_regs", "stack_bytes", "status", "callers", "not_c_reason",
    )

    def __init__(self, name, file, start):
        self.name = name
        self.file = file
        self.start = start
        self.end = start
        self.lines = 0
        self.callees = set()
        self.indirect_calls = 0
        self.high_regs = False
        self.stack_bytes = 0
        self.status = "raw"
        self.callers = set()
        # Set when this thing can't be a normal C function at all, so it
        # should never be handed to anyone (human or model) as "easy work"
        # just because it's short. See _detect_not_c().
        self.not_c_reason = None


def _classify_sources():
    """-> {name: 'matched'|'in_progress'|'not_started'} from src/*.c."""
    status = {}
    for path in sorted(SRC_DIR.glob("*.c")):
        matched, in_progress, not_started = progress.classify_c_file(path)
        for n in matched:
            status[n] = "matched"
        for n in in_progress:
            status[n] = "in_progress"
        for n in not_started:
            status[n] = "not_started"
    return status


NWA_START_RE = re.compile(r"^\s*non_word_aligned_thumb_func_start\s+(\S+)")
# A bare `bx rN` where rN isn't lr: an interworking veneer / trampoline
# (jump to whatever address is in that register), not something you can
# write in portable C. `bx lr` is different -- that's just a return, i.e. a
# perfectly matchable empty function like the nullsub_N stubs.
BX_REG_RE = re.compile(r"^\s*bx\s+r\d+\s*$")
# Real instruction lines only. Must exclude label definitions ("foo:", often
# with a trailing "@ 0819AFA4" address comment) -- they start at column 0
# with a lowercase letter and would otherwise be counted as instructions,
# which silently defeated the veneer check on its first test.
LABEL_LINE_RE = re.compile(r"^\S+:")
CODE_LINE_RE = re.compile(r"^\s*[a-z]")


def _detect_not_c(body, declared_nwa: bool):
    """-> reason string if this can't be a plain C function, else None.

    Caught this the hard way: triage's very first pick for the autopilot was
    sub_819A5D0, a 3-line `bx r0` veneer that scored as the single most
    tractable function in the ROM (tiny, leaf, no dependencies) but cannot
    be expressed as C at all. Shipping that as "easiest available work"
    would have sent the pipeline straight into an unwinnable task -- exactly
    the class of failure this whole tool exists to prevent.
    """
    if declared_nwa:
        # Starts at a non-word-aligned address. agbcc always word-aligns
        # function entry, so no C function can land here.
        return "non-word-aligned entry point (C functions are always word-aligned)"
    code = [
        l for l in body
        if CODE_LINE_RE.match(l)
        and "func_start" not in l
        and not LABEL_LINE_RE.match(l)
    ]
    if len(code) == 1 and BX_REG_RE.match(code[0]) and not re.match(r"^\s*bx\s+lr\s*$", code[0]):
        return f"interworking veneer ({code[0].strip()}), not expressible in C"
    return None


def _scan_asm_file(path: Path, funcs: dict):
    """Parse one asm blob into Func records. Body lines are attributed to
    the most recent thumb_func_start, which is how these files are always
    laid out (see splitlib.function_starts)."""
    lines, starts = splitlib.function_starts(path)
    if not starts:
        return
    bounds = []
    for idx, (name, line_i) in enumerate(starts):
        end = starts[idx + 1][1] if idx + 1 < len(starts) else len(lines)
        bounds.append((name, line_i, end))

    for name, start, end in bounds:
        f = Func(name, path.name, start)
        f.end = end
        body = lines[start:end]
        f.lines = len(body)
        declared_nwa = bool(body and NWA_START_RE.match(body[0]))
        f.not_c_reason = _detect_not_c(body, declared_nwa)
        for line in body:
            if INDIRECT_RE.match(line):
                f.indirect_calls += 1
                continue
            m = BL_RE.match(line)
            if m:
                f.callees.add(m.group(1))
            if HIGH_REG_RE.search(line):
                f.high_regs = True
            m = SP_ADJ_RE.match(line)
            if m:
                f.stack_bytes = max(f.stack_bytes, int(m.group(1), 16))
        funcs[name] = f


def _scan_fragments(funcs: dict):
    """asm/nonmatching/*.s - already extracted, still guarded. Same shape as
    a raw function for dependency purposes: it isn't matched yet, so anyone
    calling it still can't read its real behavior from C."""
    frag_dir = ASM_DIR / "nonmatching"
    if not frag_dir.is_dir():
        return
    for path in sorted(frag_dir.glob("*.s")):
        name = path.stem
        if name in funcs:
            continue
        _scan_asm_file(path, funcs)


def collect():
    funcs: dict = {}
    for path in sorted(ASM_DIR.glob("*.s")):
        if path.name in SKIP_FILES:
            continue
        _scan_asm_file(path, funcs)
    _scan_fragments(funcs)

    src_status = _classify_sources()
    for name, f in funcs.items():
        f.status = src_status.get(name, "raw")

    # Reverse edges, restricted to callers that are themselves unmatched --
    # a matched caller is already done and gains nothing from this function
    # being matched later, so counting it would overstate real leverage.
    for name, f in funcs.items():
        if f.status == "matched":
            continue
        for callee in f.callees:
            if callee in funcs:
                funcs[callee].callers.add(name)
    return funcs


def unknown_callees(f: Func, funcs: dict):
    """Callees that are NOT matched yet -- the ones that actually make this
    function hard to reason about. A call to something already decompiled is
    free: you can just read what it does."""
    out = []
    for c in sorted(f.callees):
        target = funcs.get(c)
        if target is None:
            # Not in any scanned blob: a library routine (memcpy et al,
            # already identified per CLAUDE.md's Phase 3 work) or a symbol
            # resolved from symbols.txt. Known-enough, don't penalize.
            continue
        if target.status != "matched":
            out.append(c)
    return out


def score(f: Func, funcs: dict):
    """Lower is more tractable. Returns (score, reasons[])."""
    reasons = []
    s = 0.0

    if f.not_c_reason:
        # Not a difficulty rating -- these should simply never be offered as
        # work. Scored far above anything real so they sort to the bottom,
        # and build_rows drops them from the queue entirely.
        return 100000.0, [f"NOT MATCHABLE AS C: {f.not_c_reason}"]

    unknowns = unknown_callees(f, funcs)
    if unknowns:
        # The dominant term, deliberately. This is the factor that made
        # every option_screens.s function a dead end regardless of size.
        s += 40 * len(unknowns)
        shown = ", ".join(unknowns[:4]) + ("..." if len(unknowns) > 4 else "")
        reasons.append(f"calls {len(unknowns)} unmatched function(s): {shown}")
    elif not f.callees:
        s -= 25
        reasons.append("leaf function (calls nothing)")
    else:
        s -= 10
        reasons.append("all callees already matched")

    if f.indirect_calls:
        s += 25 * f.indirect_calls
        reasons.append(
            f"{f.indirect_calls} indirect call(s) through a register "
            "(target not statically knowable)"
        )

    s += f.lines * 0.5
    if f.lines <= 30:
        reasons.append(f"very small ({f.lines} lines)")
    elif f.lines <= 80:
        reasons.append(f"small ({f.lines} lines)")
    elif f.lines >= 250:
        reasons.append(f"large ({f.lines} lines)")

    if f.high_regs:
        s += 30
        reasons.append("uses r8-r11 (high register pressure)")

    if f.stack_bytes >= 0x20:
        s += 15
        reasons.append(f"large stack frame (0x{f.stack_bytes:X} bytes)")

    if f.status == "in_progress":
        s -= 15
        reasons.append("already has an in-progress C attempt to build on")

    return s, reasons


def extractable_now(f: Func, funcs: dict):
    """Everything is extractable now.

    This used to encode the front-to-back-only rule, and reported that only
    5 of 1,225 tractable functions could actually be pulled. That finding is
    exactly what motivated adding mid-file extraction to split_func.py --
    which cuts the blob into before/function/after objects so a function can
    come out of anywhere. Kept as a function (rather than deleted) because
    it's the natural place for any future extraction constraint to live, and
    because --blocked-by-order still reports against it.
    """
    return True


def build_rows(funcs: dict, include_not_c: bool = False):
    rows = []
    for name, f in funcs.items():
        if f.status == "matched":
            continue
        if f.not_c_reason and not include_not_c:
            continue
        s, reasons = score(f, funcs)
        rows.append({
            "name": name,
            "file": f.file,
            "status": f.status,
            "lines": f.lines,
            "score": round(s, 1),
            "unknown_callees": unknown_callees(f, funcs),
            "unmatched_callers": sorted(f.callers),
            "leverage": len(f.callers),
            "high_regs": f.high_regs,
            "stack_bytes": f.stack_bytes,
            "indirect_calls": f.indirect_calls,
            "extractable_now": extractable_now(f, funcs),
            "reasons": reasons,
        })
    rows.sort(key=lambda r: (r["score"], r["lines"]))
    return rows


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--limit", type=int, default=25)
    ap.add_argument("--file", help="restrict to one asm blob (e.g. heap.s)")
    ap.add_argument("--json", action="store_true")
    ap.add_argument("--unlockers", action="store_true",
                    help="rank by how many unmatched functions each would unblock")
    ap.add_argument("--explain", metavar="NAME", help="why is NAME scored this way?")
    ap.add_argument("--actionable", action="store_true",
                    help="only functions extractable right now (front-to-back rule)")
    ap.add_argument("--blocked-by-order", action="store_true",
                    help="show tractable work the front-to-back rule currently blocks")
    args = ap.parse_args()

    funcs = collect()
    rows = build_rows(funcs)

    if args.explain:
        f = funcs.get(args.explain)
        if not f:
            print(f"no such function: {args.explain}")
            return 1
        s, reasons = score(f, funcs)
        print(f"{f.name}  ({f.file}, {f.lines} lines, status={f.status})")
        print(f"  tractability score: {round(s,1)}  (lower = easier)")
        print(f"  extractable right now: {extractable_now(f, funcs)}")
        for r in reasons:
            print(f"    - {r}")
        if f.callers:
            print(f"  {len(f.callers)} unmatched function(s) call this:")
            for c in sorted(f.callers):
                print(f"    - {c}")
        return 0

    if args.file:
        rows = [r for r in rows if r["file"] == args.file]
    if args.actionable:
        rows = [r for r in rows if r["extractable_now"]]

    if args.blocked_by_order:
        blocked = [r for r in rows if not r["extractable_now"] and r["score"] < 50]
        print(f"{len(blocked)} tractable function(s) exist that the front-to-back "
              f"extraction rule currently blocks.")
        print("(Each would be reasonable work today if mid-file extraction were "
              "supported -- see CLAUDE.md.)\n")
        for r in blocked[:args.limit]:
            print(f"  {r['score']:>7}  {r['name']:<28} {r['file']:<22} {r['lines']:>4} lines")
        return 0

    if args.unlockers:
        cands = [r for r in rows if r["leverage"] > 0]
        cands.sort(key=lambda r: (-r["leverage"], r["score"]))
        if args.json:
            print(json.dumps(cands[:args.limit], indent=2))
            return 0
        print("Highest-leverage functions -- matching these unblocks others:\n")
        print(f"{'unblocks':>8}  {'score':>7}  {'function':<28} {'file':<22} lines")
        for r in cands[:args.limit]:
            print(f"{r['leverage']:>8}  {r['score']:>7}  {r['name']:<28} "
                  f"{r['file']:<22} {r['lines']:>5}")
        return 0

    if args.json:
        print(json.dumps(rows[:args.limit], indent=2))
        return 0

    print("Most tractable unmatched functions (lower score = easier):\n")
    print(f"{'score':>7}  {'now?':<5} {'function':<28} {'file':<22} {'lines':>5}  why")
    for r in rows[:args.limit]:
        now = "yes" if r["extractable_now"] else "-"
        why = r["reasons"][0] if r["reasons"] else ""
        print(f"{r['score']:>7}  {now:<5} {r['name']:<28} {r['file']:<22} "
              f"{r['lines']:>5}  {why}")

    total = len(rows)
    easy = sum(1 for r in rows if r["score"] < 50)
    leaves = sum(1 for r in rows if not r["unknown_callees"] and r["score"] < 50)
    print(f"\n{total} unmatched function(s); {easy} scored under 50 (genuinely "
          f"tractable), {leaves} of those have no unmatched dependencies at all.")
    print("All are extractable now -- split_func.py handles mid-file extraction.")
    return 0


if __name__ == "__main__":
    sys.exit(main())

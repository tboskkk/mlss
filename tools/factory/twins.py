#!/usr/bin/env python3
"""Structural twins: functions whose assembly is IDENTICAL except for
immediates and symbol names.

**NUMBERS UPDATED 2026-08-24.** This docstring long claimed "86 unmatched
functions in 31 groups, largest holding 8" and called DEDUPLICATE the #1
exploit. Both were stale by a wide margin, and the ranking was wrong.
Re-measured live against the `shape_hash` column:

    multi-member groups with >=1 unmatched   249
    unmatched functions in them              746
    largest group (unmatched members)         21
    groups that already have a solved twin     7

Two exploits, and PROPAGATE is the one that has actually paid:

  1. PROPAGATE -- once one member matches, its twins differ only in
     constants, so a candidate can be generated mechanically by
     substituting immediates and symbols positionally. This is a guess,
     but a cheap and well-founded one, and it is gated by exactly the same
     validator (from-scratch build, byte-identical ROM) as everything
     else. A wrong substitution simply fails and costs one build.
     **This is where the value is**: `twin_backfill.py`'s retroactive sweep
     produced 130 matches, and only 7 groups still hold an unmatched twin
     of an already-solved function -- i.e. propagation has already
     harvested nearly all of the reachable win.

  2. DEDUPLICATE -- work one representative per group instead of every
     member. Pure waste elimination, no correctness risk, and still not
     wired into tier2's claim logic. Worth roughly 746 - 249 = ~497
     avoidable searches, which is real but far smaller than this docstring
     used to imply, and much smaller than PROPAGATE has already delivered.
     Most of the corpus is structurally UNIQUE (the overwhelming majority
     of shape groups have exactly one member), so dedup can never be the
     headline lever it was once described as.

Substitution is deliberately conservative: it only fires when every
distinct immediate maps CONSISTENTLY between the two functions (one value
in, one value out). Anything ambiguous is refused rather than guessed,
because a plausible-but-wrong candidate wastes a validator cycle and
pollutes the queue.
"""
from __future__ import annotations

import hashlib
import re
import sys
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import gitops  # noqa: E402

FRAG_DIR = gitops.REPO / "asm" / "nonmatching"

IMM_RE = re.compile(r"#(0x[0-9A-Fa-f]+|\d+)")
SYM_RE = re.compile(r"\b((?:sub_|nullsub_)\w+)")
LBL_RE = re.compile(r"_0[0-9A-Fa-f]{6,7}")


def _instructions(asm: str) -> list[str]:
    out = []
    for line in asm.splitlines():
        line = line.split("@")[0].strip()
        if not line or line.startswith(".") or line.endswith(":") or "func_start" in line:
            continue
        out.append(line)
    return out


def fingerprint(asm: str) -> tuple[str, int]:
    """Structural hash with immediates/symbols/labels normalized away."""
    norm = []
    for line in _instructions(asm):
        line = IMM_RE.sub("#IMM", line)
        line = LBL_RE.sub("LBL", line)
        line = SYM_RE.sub("SYM", line)
        norm.append(line)
    return hashlib.md5("\n".join(norm).encode()).hexdigest(), len(norm)


def _ordered_tokens(asm: str) -> tuple[list[str], list[str]]:
    """Immediates and symbols in order of appearance."""
    imms, syms = [], []
    for line in _instructions(asm):
        imms += IMM_RE.findall(line)
        syms += SYM_RE.findall(line)
    return imms, syms


def _consistent_map(src: list[str], dst: list[str]) -> dict[str, str] | None:
    """Positional mapping, only if it is unambiguous in BOTH directions."""
    if len(src) != len(dst):
        return None
    fwd: dict[str, str] = {}
    for a, b in zip(src, dst):
        if fwd.setdefault(a, b) != b:
            return None  # same source value needs two different targets
    return fwd


def _norm_num(tok: str) -> list[str]:
    """Spellings of a numeric literal that could appear in C."""
    v = int(tok, 16) if tok.lower().startswith("0x") else int(tok)
    return list(dict.fromkeys([tok, f"0x{v:X}", f"0x{v:x}", f"0x{v:02X}",
                               f"0x{v:02x}", str(v)]))


def propagate(src_asm: str, src_c: str, dst_asm: str) -> str | None:
    """Rewrite `src_c` (known-good C for src_asm) into a candidate for
    dst_asm. Returns None when the mapping is not provably consistent."""
    if fingerprint(src_asm)[0] != fingerprint(dst_asm)[0]:
        return None
    s_imm, s_sym = _ordered_tokens(src_asm)
    d_imm, d_sym = _ordered_tokens(dst_asm)
    imm_map = _consistent_map(s_imm, d_imm)
    sym_map = _consistent_map(s_sym, d_sym)
    if imm_map is None or sym_map is None:
        return None

    # Two-phase replacement via placeholders: substituting in place would
    # let an already-rewritten value be rewritten again by a later rule
    # (0x8 -> 0x12, then 0x12 -> 0x20), silently corrupting the result.
    out = src_c
    holders: dict[str, str] = {}
    for i, (a, b) in enumerate(list(sym_map.items()) + list(imm_map.items())):
        if a == b:
            continue
        key = f"@@TW{i}@@"
        holders[key] = b
        if a.startswith(("sub_", "nullsub_")):
            out = re.sub(rf"\b{re.escape(a)}\b", key, out)
        else:
            for spelling in _norm_num(a):
                out = re.sub(rf"(?<![0-9A-Za-z_]){re.escape(spelling)}(?![0-9A-Za-z_])",
                             key, out)
    for key, val in holders.items():
        # Numeric targets are emitted in the assembly's own hex spelling.
        out = out.replace(key, val)

    # The function's OWN name lives on a label line, which _instructions()
    # skips, so it never appears in the token maps above -- without this
    # the propagated candidate would still define the source function and
    # collide at link time. Renamed last so it cannot be clobbered by the
    # placeholder pass.
    src_name, dst_name = func_name(src_asm), func_name(dst_asm)
    if not src_name or not dst_name:
        return None
    if src_name != dst_name:
        out = re.sub(rf"\b{re.escape(src_name)}\b", dst_name, out)
    return out


FUNC_START_RE = re.compile(r"^\s*(?:thumb|arm)_func_start\s+(\S+)", re.MULTILINE)


def func_name(asm: str) -> str | None:
    m = FUNC_START_RE.search(asm)
    return m.group(1) if m else None


def groups(names_states: dict[str, str]) -> dict[str, list[str]]:
    """fingerprint -> [unmatched function names] with >1 member."""
    buckets = defaultdict(list)
    for name, state in names_states.items():
        if state == "matched":
            continue
        p = FRAG_DIR / f"{name}.s"
        if not p.exists():
            continue
        h, n = fingerprint(p.read_text())
        if n >= 3:
            buckets[h].append(name)
    return {h: v for h, v in buckets.items() if len(v) > 1}


def twins_of(name: str, names_states: dict[str, str]) -> list[str]:
    p = FRAG_DIR / f"{name}.s"
    if not p.exists():
        return []
    h = fingerprint(p.read_text())[0]
    out = []
    for other, state in names_states.items():
        if other == name or state == "matched":
            continue
        q = FRAG_DIR / f"{other}.s"
        if q.exists() and fingerprint(q.read_text())[0] == h:
            out.append(other)
    return out

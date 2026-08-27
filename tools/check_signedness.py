#!/usr/bin/env python3
"""Cross-check a candidate's field/variable signedness against what the
RETAIL disassembly explicitly says.

WHY THIS EXISTS. Signedness is currently guessed per-function by the
permuter, one 15-minute search at a time -- yet the Thumb instruction
stream already states it outright: `ldsb`/`ldsh` are dedicated SIGNED loads
(the unsigned forms are `ldrb`/`ldrh`), and `asrs` is an ARITHMETIC
(sign-preserving) shift where `lsrs` would be the unsigned one. A candidate
that reads a struct field as `u8`/`u16` where retail used `ldsb`/`ldsh` is
provably wrong, not just unmatched -- no amount of permuting an unsigned
read ever produces the bytes a signed one does for a negative value.

WHAT THIS EXTRACTS, AND THE ONE THING IT CANNOT. Thumb's `ldsb`/`ldsh` have
ONLY a register-offset addressing mode -- `ldsb r0, [r1, r0]`, never
`[r1, #N]` -- so the struct offset is not in the instruction itself. It is
almost always materialised a few instructions earlier as
`movs/adds rOff, #N`, so this backward-scans a short window (reusing the
same register-holder tracking scan_entity.py already uses for its own
offset detection) to recover it. When no immediate can be found the site is
reported as UNRESOLVED, never guessed at.

`asrs` is reported separately and is NOT auto-applied: it proves its
DESTINATION register holds a signed value at that point, but the register
may already have been reassigned from whatever field fed it, so tying it
back to one struct offset needs the same care -- see CAVEATS below.

    python3 tools/check_signedness.py sub_815F064
    python3 tools/check_signedness.py --candidate-body-file body.c sub_815F064

CAVEATS.
  * Only offsets reached via a simple `movs/adds rOff, #imm` immediately
    before the load are resolved. A computed or loop-carried offset is
    reported as unresolved rather than guessed at.
  * `asrs` findings name a register and an approximate offset window, not a
    proven field -- treat them as a lead, not an instruction to apply.
  * This checks ONE function's own retail fragment. It says nothing about
    what OTHER functions do with the same struct offset; a real bitfield
    would need corpus-wide agreement (see scan_bitfields.py), not one
    function's evidence.
"""
from __future__ import annotations

import argparse
import re
import sqlite3
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
FRAG_DIRS = [REPO / "asm" / "nonmatching", REPO / "asm"]

# Signed loads and their unsigned counterparts.
SIGNED_LOADS = {"ldsb": ("u8", "s8", 1), "ldsh": ("u16", "s16", 2)}
REG_RE = re.compile(r"\br([0-9]|1[0-5])\b")
IMM_RE = re.compile(r"#(0x[0-9A-Fa-f]+|-?\d+)")


def _imm(tok: str) -> int:
    return int(tok, 16) if tok.lower().startswith("0x") else int(tok)


def find_fragment(name: str) -> Path | None:
    for d in FRAG_DIRS:
        p = d / f"{name}.s"
        if p.is_file():
            return p
    return None


def extract_signed_offsets(asm_text: str):
    """-> list of dicts: {offset, width, base_is_arg0, mnem, resolved}."""
    lines = asm_text.splitlines()
    # holder[reg] = accumulated immediate offset from arg0 (r0 at entry),
    # or None once we lose track of it -- same technique as scan_entity.py.
    holders: dict[str, int] = {"r0": 0}
    findings = []
    asrs_hits = []

    for i, raw in enumerate(lines):
        line = raw.split("@")[0].strip()
        if not line:
            continue

        m = re.match(r"^(movs|adds)\s+(r\d+),\s*#(0x[0-9A-Fa-f]+|-?\d+)\s*$", line)
        if m:
            reg, v = m.group(2), _imm(m.group(3))
            if m.group(1) == "movs":
                # `movs` sets the register outright -- it needs no PRIOR
                # tracking, unlike `adds`, which accumulates onto a value
                # that must already be known. Requiring prior tracking here
                # was a real bug: `movs r1, #0x00; ldsb r1, [r2, r1]` (the
                # single most common way Thumb materialises offset 0) never
                # registered r1 at all, so nearly every ldsb/ldsh in the
                # corpus resolved to nothing.
                holders[reg] = v
                continue
            if reg in holders:
                holders[reg] = (holders[reg] or 0) + v
                continue
        m = re.match(r"^adds\s+(r\d+),\s*(r\d+),\s*#0x0+\s*$", line)
        if m and m.group(2) in holders:
            holders[m.group(1)] = holders[m.group(2)]
            continue

        for mnem, (utype, stype, width) in SIGNED_LOADS.items():
            m = re.match(rf"^{mnem}\s+(r\d+),\s*\[\s*(r\d+),\s*(r\d+)\s*\]\s*$", line)
            if m:
                dst, base, off_reg = m.groups()
                # Whether base is arg0 ITSELF is irrelevant to signedness --
                # `ldsb`/`ldsh` mean the same thing on any pointer, including
                # a global IWRAM pointer loaded into a scratch register
                # (the common case, not the exception: measured below).
                # What is correlated against the candidate is the (offset,
                # width) pair alone, scoped to one function at a time so the
                # chance of an unrelated field colliding on both is low.
                base_is_arg0 = holders.get(base) == 0 and base in holders
                off = holders.get(off_reg)
                findings.append({
                    "line": i + 1, "mnem": mnem, "dst": dst, "base": base,
                    "offset": off, "width": width, "utype": utype, "stype": stype,
                    "base_is_arg0": base_is_arg0,
                })
                break

        m = re.match(r"^asrs\s+(r\d+),\s*(r\d+),\s*#(0x[0-9A-Fa-f]+|\d+)\s*$", line)
        if m:
            asrs_hits.append({"line": i + 1, "dst": m.group(1), "src": m.group(2),
                              "shift": _imm(m.group(3))})

        # invalidate a holder clobbered by something we don't track
        m2 = re.match(r"^\S+\s+(r\d+)\b", line)
        if m2 and m2.group(1) in holders and m2.group(1) != "r0" and not (
            re.match(r"^(movs|adds)\s+r\d+,\s*#", line) or
            re.match(r"^adds\s+r\d+,\s*r\d+,\s*#0x0+$", line)
        ):
            holders.pop(m2.group(1), None)

    return findings, asrs_hits


# The exact raw-offset cast shape m2c/readable_entity produce for a value
# type: `(*(TYPE *)((s8 *)(NAME) + (OFFSET)))`.
def offset_cast_type(body: str, offset: int) -> set[str]:
    forms = [str(offset)]
    hexf = f"0x{offset:X}"
    if hexf not in forms:
        forms.append(hexf)
    alt = "|".join(re.escape(f) for f in forms)
    pat = re.compile(
        rf"\(\*\((u8|s8|u16|s16|u32|s32)\s*\*\)\(\(s8 \*\)\((\w+)\)\s*\+\s*\((?:{alt})\)\)\)")
    return {m.group(1) for m in pat.finditer(body)}


def check(name: str, candidate_body: str | None, verbose: bool = True) -> dict:
    frag = find_fragment(name)
    if frag is None:
        return {"name": name, "error": "no retail fragment found"}
    asm_text = frag.read_text(errors="ignore")
    findings, asrs_hits = extract_signed_offsets(asm_text)

    resolved = [f for f in findings if f["offset"] is not None]
    unresolved = len(findings) - len(resolved)

    mismatches = []
    if candidate_body:
        for f in resolved:
            types_used = offset_cast_type(candidate_body, f["offset"])
            wrong = {t for t in types_used if t == f["utype"]}
            if wrong:
                mismatches.append({**f, "found_types": types_used})

    if verbose:
        print(f"\n=== {name} ===")
        print(f"retail fragment: {frag}")
        print(f"signed loads (ldsb/ldsh) found: {len(findings)}  "
              f"(resolved to an arg0 offset: {len(resolved)}, unresolved: {unresolved})")
        for f in resolved:
            print(f"  line {f['line']:4d}  {f['mnem']} -> offset 0x{f['offset']:X}  "
                  f"(retail treats this as {f['stype']})")
        if asrs_hits:
            print(f"asrs (signed right-shift) sites: {len(asrs_hits)} -- LEAD ONLY, not auto-applied")
            for a in asrs_hits[:6]:
                print(f"  line {a['line']:4d}  asrs {a['dst']}, {a['src']}, #{a['shift']}")
        if candidate_body:
            print(f"\ncandidate declares UNSIGNED at a retail-signed offset: {len(mismatches)}")
            for mm in mismatches:
                print(f"  offset 0x{mm['offset']:X}: candidate uses {sorted(mm['found_types'])}, "
                      f"retail's {mm['mnem']} implies {mm['stype']}")
        elif resolved:
            print("(no candidate_body given -- pass --db to cross-check, or pipe C via --candidate-body-file)")

    return {"name": name, "signed_loads": len(findings), "resolved": len(resolved),
            "unresolved": unresolved, "asrs": len(asrs_hits), "mismatches": mismatches}


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("names", nargs="+")
    ap.add_argument("--candidate-body-file", help="read candidate C from this file (single function)")
    ap.add_argument("--no-db", action="store_true", help="don't look up candidate_body from state.db")
    args = ap.parse_args()

    body_override = Path(args.candidate_body_file).read_text() if args.candidate_body_file else None
    conn = None
    if not args.no_db and body_override is None:
        try:
            conn = sqlite3.connect(f"file:{REPO}/.claude/factory/state.db?mode=ro", uri=True)
        except sqlite3.Error:
            conn = None

    any_mismatch = False
    for n in args.names:
        body = body_override
        if body is None and conn is not None:
            row = conn.execute("SELECT candidate_body FROM functions WHERE name=?", (n,)).fetchone()
            body = row[0] if row else None
        r = check(n, body)
        if r.get("mismatches"):
            any_mismatch = True
    return 0 if not any_mismatch else 3


if __name__ == "__main__":
    raise SystemExit(main())

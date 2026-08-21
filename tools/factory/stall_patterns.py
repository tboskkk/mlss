#!/usr/bin/env python3
"""Mine stalled functions for SYSTEMATIC causes -- i.e. missing rules in
our model of agbcc, not "hard functions".

The premise this tool exists to serve: **this project is a reverse
compiler, and every stall is a missing deterministic rule.** Compilation
is many-to-one, so there is no unique inverse -- but byte-matching doesn't
need the original source, only SOME source that compiles to the same
bytes, and that IS derivable deterministically given a complete enough
model of the compiler. decomp-permuter's stochastic search is a stand-in
for the parts of that model we haven't encoded yet. Every rule we add
deletes search work permanently.

That's not theory. It came from a real case: `sub_80EA928` sat STALLED at
score 55 through a full permuter search. The actual defect was that m2c
names parameters by argument register and OMITS ones the function never
reads -- which doesn't round-trip, because agbcc assigns argument
registers positionally, so every parameter lands one register off. Adding
the dropped parameter back took it to score 0 instantly, and the same rule
applied to 59 of 391 functions (15% of the corpus). One rule, no search,
no model.

The evidence that more such rules exist: the median stalled best_score is
~925, not ~50. These are not near-misses that need more permuter time;
they are systematically wrong, and systematic wrongness clusters.

What this does: for each stalled function, capture the asm-differ diff,
reduce it to a normalized SIGNATURE (opcodes and operand SHAPES, with
registers/immediates/symbols abstracted away), and group. A signature
shared by many functions is a candidate rule -- go read two or three
members by hand, work out what agbcc is doing that we aren't modeling, and
encode it in m2c_bridge.py.

Usage:
    python3 tools/factory/stall_patterns.py [--limit N] [--min-group 3]
"""
from __future__ import annotations

import argparse
import re
import sys
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

ANSI_RE = re.compile(r"\x1b\[[0-9;]*m")
REG_RE = re.compile(r"\br(?:1[0-5]|[0-9])\b")
IMM_RE = re.compile(r"#?(?:0x[0-9A-Fa-f]+|\b\d+\b)")
SYM_RE = re.compile(r"\b(?:sub_|nullsub_)\w+")
ADDR_RE = re.compile(r"^\s*[0-9a-f]+:", re.MULTILINE)


def diff_for(name: str, body: str) -> str | None:
    """asm-differ output for `body` spliced in as `name`. Always reverts."""
    with gitops.repo_lock(what=f"stall_patterns diff {name}"):
        c_path = gitops.splice_into_else(name, body)
        if c_path is None:
            return None
        try:
            r = gitops.run(["./container.sh", "asm-differ", "-mwo", name])
            return ANSI_RE.sub("", r.stdout + r.stderr)
        finally:
            gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])


BUILD_FAILED_RE = re.compile(
    r'#error "TODO: write|\berror\b:|invalid operands|undeclared|'
    r'Traceback \(most recent call last\)|make: \*\*\*')


def diff_failed(diff: str) -> bool:
    """True when there is no real diff to analyze -- the build broke, or
    asm-differ itself errored, so nothing here describes a DECOMPILATION
    defect.

    Learned the hard way: without this, the miner happily clusters
    COMPILER DIAGNOSTICS. agbcc's caret diagnostics are formatted
    `   28 | #error "..."` / `      |  ^~~~~`, which contains the same
    ` | ` that asm-differ uses as its changed-line marker -- so the first
    run's three biggest "candidate rules" were really just three flavours
    of build failure. That was still useful (it's what surfaced the
    translation-unit deadlock that unblock_files.py now fixes), but it is
    emphatically not what this tool is for.
    """
    return bool(BUILD_FAILED_RE.search(diff))


def changed_lines(diff: str) -> list[str]:
    """Just the lines asm-differ marks as differing.

    asm-differ's -o output puts TARGET and CURRENT side by side; a line
    that differs carries a marker between the columns. Keeping only those
    is what makes the resulting signature about the DEFECT rather than
    about whatever the function happens to do.
    """
    out = []
    for line in diff.splitlines():
        stripped = line.strip()
        if not stripped:
            continue
        # A real asm-differ row starts with an instruction offset; a
        # compiler diagnostic doesn't. Requiring that shape keeps
        # diagnostics out even if one slips past diff_failed().
        if not re.match(r"^[0-9a-f]{1,8}:", stripped):
            continue
        # Marker column: '|' (changed), '>' (extra), '<' (missing).
        if re.search(r"\s[|<>]\s", line) or line.rstrip().endswith(("|", "<", ">")):
            out.append(line)
    return out


def signature(diff_lines: list[str]) -> str:
    """Normalize a diff down to its SHAPE.

    Registers -> rN, immediates -> IMM, symbols -> SYM, addresses dropped.
    Two functions failing for the same structural reason land on the same
    signature even though they operate on completely different data.
    """
    norm = []
    for line in diff_lines[:12]:  # a defect's character shows early
        s = ADDR_RE.sub("", line)
        s = SYM_RE.sub("SYM", s)
        s = REG_RE.sub("rN", s)
        s = IMM_RE.sub("IMM", s)
        s = re.sub(r"\s+", " ", s).strip()
        if s:
            norm.append(s)
    return "\n".join(norm)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=60,
                    help="how many stalled functions to sample (each costs a real rebuild)")
    ap.add_argument("--min-group", type=int, default=3,
                    help="only report signatures shared by at least this many functions")
    ap.add_argument("--states", nargs="*", default=["stalled"])
    args = ap.parse_args()

    conn = db.connect()
    q = ",".join("?" for _ in args.states)
    rows = conn.execute(
        f"SELECT name, best_score FROM functions WHERE state IN ({q}) "
        f"AND best_score IS NOT NULL ORDER BY best_score ASC",
        args.states,
    ).fetchall()

    groups: dict[str, list[tuple[str, int]]] = defaultdict(list)
    sampled = 0
    no_seed = 0
    build_broken: list[str] = []
    for r in rows:
        if sampled >= args.limit:
            break
        name = r["name"]
        body = m2c_bridge.generate(name)
        if not body:
            no_seed += 1
            continue
        diff = diff_for(name, body)
        if not diff:
            continue
        # Counted and reported separately, never clustered: a function
        # whose unit won't build tells us nothing about DECOMPILATION
        # defects, and silently mixing these in is exactly how the first
        # run produced three "rules" that were really build failures.
        if diff_failed(diff):
            build_broken.append(name)
            continue
        lines = changed_lines(diff)
        if not lines:
            continue
        sampled += 1
        groups[signature(lines)].append((name, r["best_score"]))
        if sampled % 10 == 0:
            print(f"  ...sampled {sampled}")

    conn.close()

    if no_seed:
        print(f"\n{no_seed} function(s) skipped: m2c produced no seed.")
    if build_broken:
        print(f"{len(build_broken)} function(s) skipped: their translation unit "
              f"does not build, so there's no diff to analyze.")
        print(f"  -> run `python3 tools/factory/unblock_files.py` for these; "
              f"e.g. {', '.join(build_broken[:4])}")

    ranked = sorted(groups.items(), key=lambda kv: len(kv[1]), reverse=True)
    print(f"\n=== {sampled} stalled functions sampled, "
          f"{len(ranked)} distinct diff signatures ===\n")
    shown = 0
    for sig, members in ranked:
        if len(members) < args.min_group:
            continue
        shown += 1
        print(f"--- {len(members)} functions share this shape ---")
        for n, s in members[:6]:
            print(f"    {n} (best_score {s})")
        if len(members) > 6:
            print(f"    ... and {len(members)-6} more")
        print("  diff shape:")
        for line in sig.splitlines()[:8]:
            print(f"    {line}")
        print()
    if not shown:
        print("No signature shared by >= "
              f"{args.min_group} functions. Either the sample is too small, "
              "or what's left really is a long tail of individually-hard "
              "functions rather than a few missing rules.")
    else:
        print(f"{shown} candidate rule(s). Read 2-3 members of the biggest "
              "group by hand, work out what agbcc is doing that m2c_bridge "
              "isn't modelling, and encode it -- the arg-register rule in "
              "m2c_bridge.restore_omitted_leading_params() is the worked "
              "example of what that looks like.")


if __name__ == "__main__":
    main()

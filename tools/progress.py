#!/usr/bin/env python3
"""Report decompilation progress.

    ./container.sh tools/progress.py

Classifies every function currently reachable from src/*.c into:
  matched      - a plain C function, no NONMATCHING guard at all (the
                 guard gets deleted once a function is confirmed to
                 compile byte-identical - see CLAUDE.md)
  in_progress  - has a #ifndef NONMATCHING / #else / C attempt / #endif
                 block: extracted and someone's written a real attempt
  not_started  - extracted (asm/nonmatching/<name>.s exists) but still
                 just the #error placeholder, or no #else at all

Plus whatever hasn't been split out of the big asm/*.s blobs yet, counted
straight from thumb_func_start/arm_func_start/non_word_aligned_* directives.

This is a static source count, not a byte-diff - "matched" here means
"the guard was removed", which is this project's own signal that someone
already confirmed it with asm-differ. It does not re-verify that itself;
run asm-differ for that.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

FUNC_DEF_RE = re.compile(
    r"^[A-Za-z_][A-Za-z0-9_ \t\*]*\b([A-Za-z_][A-Za-z0-9_]*)\s*\([^;{}]*\)\s*\{?\s*$"
)
IFNDEF_RE = re.compile(r"^\s*#ifndef\s+NONMATCHING\b")
ELSE_RE = re.compile(r"^\s*#else\b")
ENDIF_RE = re.compile(r"^\s*#endif\b")
INCLUDE_ASM_RE = re.compile(r'asm/nonmatching/(\S+?)\.s')


def classify_c_file(path: Path):
    """-> (matched_names, in_progress_names, not_started_names)"""
    lines = path.read_text().splitlines()
    matched, in_progress, not_started = [], [], []

    i = 0
    n = len(lines)
    while i < n:
        line = lines[i]
        if IFNDEF_RE.match(line):
            block_start = i
            has_else = False
            has_error = False
            j = i + 1
            depth = 1
            while j < n and depth > 0:
                if IFNDEF_RE.match(lines[j]) or re.match(r"^\s*#if\b", lines[j]):
                    depth += 1
                elif ENDIF_RE.match(lines[j]):
                    depth -= 1
                    if depth == 0:
                        break
                elif depth == 1 and ELSE_RE.match(lines[j]):
                    has_else = True
                elif "#error" in lines[j]:
                    has_error = True
                j += 1
            block_text = "\n".join(lines[block_start : j + 1])
            m = INCLUDE_ASM_RE.search(block_text)
            name = m.group(1) if m else f"<unknown at {path.name}:{block_start + 1}>"
            if has_else and not has_error:
                in_progress.append(name)
            else:
                not_started.append(name)
            i = j + 1
            continue

        m = FUNC_DEF_RE.match(line)
        if m and not line.strip().startswith(("asm_unified", "#")):
            # Cheap brace check: real function defs in this codebase always
            # open with the signature on its own line ending in '{', or the
            # next non-blank line is just '{'.
            if line.rstrip().endswith("{") or (i + 1 < n and lines[i + 1].strip() == "{"):
                matched.append(m.group(1))
        i += 1

    return matched, in_progress, not_started


def count_raw_asm_functions():
    """Functions still sitting in un-split asm/*.s blobs (per splitlib's own
    front-to-back rule, every one of these is still fully unclaimed).
    Returns (game_proper_total, mariobros_total, per_file) - the embedded
    Mario Bros. minigame ROM is counted separately, not folded into "game
    proper" progress. It's a whole different (much smaller) game bundled in
    the same cartridge; see CLAUDE.md for why it's tracked apart."""
    manifest = splitlib.load_manifest()
    total = 0
    mariobros_total = 0
    per_file = []
    for group in manifest.groups:
        for entry in group.entries:
            if not entry.is_asm:
                continue
            _, starts = splitlib.function_starts(entry.source_path)
            if group.name == "mariobros":
                mariobros_total += len(starts)
                continue
            if starts:
                per_file.append((entry.obj, len(starts)))
            total += len(starts)
    return total, mariobros_total, per_file


def main() -> None:
    all_matched, all_in_progress, all_not_started = [], [], []
    for c_path in sorted((splitlib.ROOT / "src").glob("*.c")):
        m, ip, ns = classify_c_file(c_path)
        all_matched += m
        all_in_progress += ip
        all_not_started += ns

    raw_total, mariobros_total, raw_per_file = count_raw_asm_functions()

    extracted = len(all_matched) + len(all_in_progress) + len(all_not_started)
    grand_total = extracted + raw_total

    def pct(n):
        return f"{100 * n / grand_total:5.1f}%" if grand_total else "  n/a"

    print(f"{'':14}{'count':>8}   of total (game proper, excludes mariobros.s)")
    print(f"{'matched':14}{len(all_matched):>8}   {pct(len(all_matched))}")
    print(f"{'in progress':14}{len(all_in_progress):>8}   {pct(len(all_in_progress))}")
    print(f"{'not started':14}{len(all_not_started):>8}   {pct(len(all_not_started))}   (extracted, still #error)")
    print(f"{'not extracted':14}{raw_total:>8}   {pct(raw_total)}   (still raw in asm/*.s)")
    print(f"{'-' * 14}{'-' * 8}")
    print(f"{'total':14}{grand_total:>8}")
    print(f"\n{'mariobros.s':14}{mariobros_total:>8}   tracked separately - embedded minigame, not part of the total above")

    if raw_per_file:
        print("\nraw functions remaining, by file (front of each is the next one split_func.py will take):")
        for obj, n in sorted(raw_per_file, key=lambda x: -x[1]):
            print(f"  {n:>6}  {obj}.s")

    if all_in_progress:
        print(f"\nin progress ({len(all_in_progress)}): " + ", ".join(sorted(all_in_progress)))
    if all_not_started:
        preview = ", ".join(sorted(all_not_started)[:10])
        more = f", +{len(all_not_started) - 10} more" if len(all_not_started) > 10 else ""
        print(f"not started ({len(all_not_started)}): {preview}{more}")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Extract one function from a raw asm blob into asm/nonmatching/, wire it
into a src/*.c file via the project's NONMATCHING-include convention, and
regenerate ld_script.ld - the whole "start decompiling this function" chore
in one command.

    ./container.sh tools/split_func.py <symbol-or-hex-address> [--dest NAME] [--dry-run]

Examples:

    # heap.s is a small, self-contained, already-99%-disassembled file with
    # no src/*.c claiming it yet - a clean first extraction:
    ./container.sh tools/split_func.py init_heap --dest heap

    # once src/heap.c exists, later heap.s functions auto-append to it:
    ./container.sh tools/split_func.py alloc_heap_8018CEC

    # an address works too, if you don't know the (possibly renamed) symbol:
    ./container.sh tools/split_func.py 0x8018BC0 --dest heap

What it does, concretely:
  1. Resolves the symbol/address against mlss.map (so build first).
  2. Refuses unless it's the frontmost remaining function in its asm/*.s
     file - see CLAUDE.md for why extraction is front-to-back only.
  3. Cuts its lines (body + trailing literal pool) into
     asm/nonmatching/<name>.s. If the function's bytes would end on a
     non-word-aligned address, the extraction is extended through the
     following function(s) until it doesn't - otherwise the object gets
     padded and the whole ROM shifts (see the alignment note below).
  4. Adds a `#ifndef NONMATCHING / asm include / #else / empty` stub to the
     owning src/*.c file (creating it, with --dest, if this is the first
     function pulled from this blob).
  5. Updates tools/splits.yaml and regenerates ld_script.ld.

It does not touch the C body - that's the actual decompilation work, still
yours. Always `make` and diff after running this.
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

STUB_TEMPLATE = '''
#ifndef NONMATCHING
asm_unified(".include \\"asm/nonmatching/{name}.s\\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1 -- which is how
   853 functions ended up blocked behind 936 placeholders. Nothing is lost
   by leaving it empty: the #ifndef branch above is untouched, so the real
   ROM still gets the verbatim retail bytes, and progress.py still counts
   this function as unmatched because the guard is still here. Write the C
   here, replacing this comment. */
#endif
'''

FRAGMENT_PREAMBLE = "\t.syntax unified\n\t.text\n\n"

NEW_FILE_HEADER = '''\
#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// {name} needs.

asm_unified(".include \\"asm/macros.inc\\"");
'''


def ensure_macros_bootstrap(text: str) -> str:
    """Make sure this translation unit defines the asm/macros.inc macros
    exactly once, via an explicit top-level include, rather than piggy-
    backing on whichever nonmatching fragment happens to be listed first
    (that was the pre-existing convention in option_screens.c / title_screen.c
    and it silently breaks if fragments are reordered or the first one gets
    promoted to matching C - see CLAUDE.md "Landmines already hit")."""
    if "macros.inc" in text:
        return text
    bootstrap = 'asm_unified(".include \\"asm/macros.inc\\"");\n'
    lines = text.splitlines(keepends=True)
    insert_at = 0
    for i, line in enumerate(lines):
        if line.startswith("#include"):
            insert_at = i + 1
    lines.insert(insert_at, "\n" + bootstrap if insert_at else bootstrap)
    return "".join(lines)


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("target", help="symbol name (e.g. init_heap) or hex address (e.g. 0x8018BC0)")
    ap.add_argument(
        "--dest",
        metavar="NAME",
        help="subsystem name for a NEW src/NAME.c (required only when nothing "
        "already claims the slot right before this function's blob)",
    )
    ap.add_argument("--dry-run", action="store_true", help="print what would happen, write nothing")
    args = ap.parse_args()

    symbols = splitlib.parse_map()
    sym = splitlib.find_symbol(args.target, symbols)

    if not sym.obj.startswith("asm/"):
        raise SystemExit(
            f"{sym.name} (0x{sym.addr:08X}) is already claimed by {sym.obj} - nothing to extract."
        )

    source_path = splitlib.ROOT / f"{sym.obj_stem}.s"

    # Is this the front-most remaining function (the classic, cheap case) or
    # somewhere in the middle (needs the blob split around it)? Decided here
    # rather than inside extract_function_lines so the caller can set up the
    # very different manifest surgery each case needs.
    _all_lines, _starts = splitlib.function_starts(source_path)
    _idx = next((i for i, (n, _) in enumerate(_starts) if n == sym.name), None)
    if _idx is None:
        raise SystemExit(
            f"{sym.name!r}: no thumb_func_start/arm_func_start directive found in {source_path}"
        )
    midfile = any(ln < _starts[_idx][1] for _, ln in _starts)

    lines, start, end = splitlib.extract_function_lines(
        source_path, sym.name, allow_midfile=midfile
    )

    # --- alignment padding hazard -------------------------------------
    # Whatever an extraction lands in has to END on a word boundary, or the
    # whole rest of the ROM slides forward and stops reproducing.
    #
    # Two independent mechanisms force this, which is why it can't be
    # dodged by tweaking the fragment:
    #   * GNU as rounds a section's size UP to that section's alignment, and
    #     `thumb_func_start` expands to `.align 2, 0`. Measured: 0x2BE bytes
    #     of content assemble to a .text of size 0x2C0.
    #   * The Makefile appends a literal `.text / .align 2, 0` to every
    #     agbcc-generated .s (see the $(CC1) rule), so ANY src/*.c object is
    #     4-aligned at the end no matter what its fragments say.
    #
    # So the fix is neither "drop the .align" nor "give it its own object" -
    # both were tried and measured, and the Makefile's trailing align defeats
    # them. The fix is to make the extraction end where the ROM already has a
    # word boundary: keep pulling in following functions until it does. This
    # ROM genuinely has functions at 2-mod-4 addresses (that's what
    # non_word_aligned_thumb_func_start exists for), and such a function is
    # physically un-splittable from its predecessor.
    #
    # This shipped once and corrupted the ROM (see CLAUDE.md). It is
    # especially nasty in the factory, where the visible symptom is every
    # subsequent match failing to validate - a needs_human/stalled spike that
    # looks nothing like "one bad extraction".
    by_name = {s.name: s for s in symbols}
    blob_extent = splitlib.parse_object_extents().get(
        (f"build/{sym.obj_stem}.o", sym.section)
    )

    def end_addr_after(i: int):
        """ROM address just past function `i` of this blob, or None if the
        map can't tell us (an unlabeled successor, a symbol the map doesn't
        carry). None means 'unknown', never 'safe'."""
        if i + 1 < len(_starts):
            nxt = by_name.get(_starts[i + 1][0])
            return nxt.addr if nxt else None
        return None if blob_extent is None else blob_extent[0] + blob_extent[1]

    last = _idx
    end_addr = end_addr_after(last)
    while splitlib.alignment_padding_hazard(end_addr):
        if last + 1 >= len(_starts):
            raise SystemExit(
                f"{sym.name}'s extraction would end at 0x{end_addr:08X}, which is not "
                f"word-aligned, and there is no following function in "
                f"{source_path.name} to extend it through.\n"
                f"Extracting it would pad the object and shift every symbol after it "
                f"(see CLAUDE.md). Refusing - this one needs a human."
            )
        last += 1
        end_addr = end_addr_after(last)

    if end_addr is None:
        print("  !! could not determine this extraction's end address from mlss.map, so the\n"
              "     alignment-padding check was SKIPPED. Run tools/check_layout.py after\n"
              "     the next build.")

    # Names of every function this extraction covers - normally just the one
    # asked for, more only when the alignment walk above had to extend.
    extract_names = [_starts[j][0] for j in range(_idx, last + 1)]
    if last != _idx:
        end = _starts[last + 1][1] if last + 1 < len(_starts) else len(lines)

    # One fragment file per function, even when the extraction covers
    # several: decomp-permuter wants exactly one function per file, and
    # tools/permute.py relies on that (see CLAUDE.md). The first fragment
    # additionally carries any unlabeled leading data folded in by
    # extract_function_lines.
    frag_spans = []
    for j in range(_idx, last + 1):
        fs = start if j == _idx else _starts[j][1]
        fe = _starts[j + 1][1] if j + 1 <= last else end
        frag_spans.append((_starts[j][0], fs, fe))

    before_lines = lines[:start]
    after_lines = lines[end:]
    remaining = before_lines + after_lines

    manifest = splitlib.load_manifest()
    loc = manifest.locate(sym.obj_stem, sym.section)
    if loc is None:
        raise SystemExit(
            f"internal inconsistency: {sym.obj_stem} (.{sym.section}) is linked into the ROM "
            f"(per mlss.map) but has no entry in tools/splits.yaml. Was the manifest edited by "
            f"hand and not regenerated? Fix splits.yaml before extracting."
        )
    gi, ei = loc
    group = manifest.groups[gi]

    if midfile:
        # A mid-file extraction can't append to whatever src/*.c happens to
        # sit before this blob: each object contributes its .text exactly
        # once, at one point in the link order, so every function inside a
        # given src/*.c must be contiguous in the ROM. This function isn't
        # adjacent to that file's existing contents - it's in the middle of
        # a blob - so it needs its own object, placed exactly here, with the
        # blob's tail following it.
        dest_obj = f"src/{args.dest}" if args.dest else f"src/{sym.name}"
        dest_path = splitlib.ROOT / f"{dest_obj}.c"
        if dest_path.exists() or manifest.locate(dest_obj, sym.section) is not None:
            raise SystemExit(
                f"{dest_path} (or a splits.yaml entry for it) already exists - "
                f"pass a different --dest NAME."
            )
        creating_new = True
    elif ei == 0 or not group.entries[ei - 1].obj.startswith("src/"):
        creating_new = True
        if not args.dest:
            raise SystemExit(
                f"{sym.name} is the first function being pulled out of {sym.obj_stem}.s - "
                f"nothing claims that slot yet, so I need a name for the new file.\n"
                f"Re-run with --dest NAME (creates src/NAME.c)."
            )
        dest_obj = f"src/{args.dest}"
        dest_path = splitlib.ROOT / f"{dest_obj}.c"
        if dest_path.exists() or manifest.locate(dest_obj, sym.section) is not None:
            raise SystemExit(f"{dest_path} (or a splits.yaml entry for it) already exists.")
    else:
        creating_new = False
        dest_entry = group.entries[ei - 1]
        if args.dest and f"src/{args.dest}" != dest_entry.obj:
            raise SystemExit(
                f"{sym.name} continues {dest_entry.obj}.c (it's what's immediately before "
                f"{sym.obj_stem} in splits.yaml) - drop --dest {args.dest!r}, or omit --dest."
            )
        dest_obj = dest_entry.obj
        dest_path = dest_entry.source_path

    frag_paths = [splitlib.NONMATCHING_DIR / f"{n}.s" for n, _, _ in frag_spans]
    for p in frag_paths:
        if p.exists():
            raise SystemExit(f"{p} already exists - refusing to overwrite.")

    stub = "".join(STUB_TEMPLATE.format(name=n) for n, _, _ in frag_spans)

    # Mid-file: the blob has to be cut in three (before / this function /
    # after), because the bytes on either side must keep their exact ROM
    # positions and each object's .text lands at exactly one point in the
    # link order. The before-half keeps the original filename (so its
    # existing splits.yaml entry and position stay valid) and the after-half
    # becomes a new object listed immediately after this function's.
    tail_obj = tail_path = None
    if midfile:
        tail_has_content = any(line.strip() for line in after_lines)
        if tail_has_content:
            tail_obj = splitlib.next_blob_part_name(sym.obj_stem, manifest)
            tail_path = splitlib.ROOT / f"{tail_obj}.s"

    print(f"{sym.name}  0x{sym.addr:08X}  {source_path.relative_to(splitlib.ROOT)}"
          f" (lines {start + 1}-{end})")
    for (n, fs, fe), p in zip(frag_spans, frag_paths):
        print(f"  -> {p.relative_to(splitlib.ROOT)}  ({fe - fs} lines)")
    if last != _idx:
        carried = ", ".join(extract_names[1:])
        print(f"  -> ALIGNMENT: {sym.name} alone would end at "
              f"0x{end_addr_after(_idx):08X}, which is not word-aligned - the object would be")
        print(f"     padded and every symbol after it would shift. Extended the extraction "
              f"through {carried}")
        print(f"     so it ends at 0x{end_addr:08X} instead. Those functions are physically "
              f"un-splittable from it.")
    if midfile:
        print(f"  -> MID-FILE extraction (not the front-most function in this blob)")
        print(f"  -> {dest_path.relative_to(splitlib.ROOT)}  (NEW FILE)")
        print(f"  -> {source_path.relative_to(splitlib.ROOT)}: keeps the "
              f"{len(before_lines)} lines before it")
        if tail_obj:
            print(f"  -> {tail_path.relative_to(splitlib.ROOT)}: NEW, gets the "
                  f"{len(after_lines)} lines after it")
            print(f"  -> splits.yaml: {sym.obj_stem!r} -> {dest_obj!r} -> {tail_obj!r}")
        else:
            print(f"  -> (nothing but blank lines after it; no tail object needed)")
            print(f"  -> splits.yaml: insert {dest_obj!r} after {sym.obj_stem!r}")
    elif creating_new:
        print(f"  -> {dest_path.relative_to(splitlib.ROOT)}  (NEW FILE)")
        print(f"  -> splits.yaml: insert {dest_obj!r} before {sym.obj_stem!r} in group {group.name!r}")
    else:
        print(f"  -> {dest_path.relative_to(splitlib.ROOT)}  (append)")
    if not midfile:
        print(f"  -> {source_path.relative_to(splitlib.ROOT)}: shrinks by {end - start} lines")

    if args.dry_run:
        print("(dry run, nothing written)")
        return

    splitlib.NONMATCHING_DIR.mkdir(parents=True, exist_ok=True)
    for (n, fs, fe), p in zip(frag_spans, frag_paths):
        p.write_text(FRAGMENT_PREAMBLE + "".join(lines[fs:fe]))

    if midfile:
        # Before-half keeps the original name; tail becomes its own blob.
        source_path.write_text("".join(before_lines))
        dest_path.write_text(NEW_FILE_HEADER.format(name=sym.name) + stub)
        # Insert AFTER the original blob's entry: [orig blob][this func][tail]
        insert_at = ei + 1
        group.entries.insert(insert_at, splitlib.Entry(obj=dest_obj, section=sym.section))
        if tail_obj:
            tail_path.write_text(splitlib.BLOB_HEADER + "".join(after_lines))
            group.entries.insert(
                insert_at + 1, splitlib.Entry(obj=tail_obj, section=sym.section)
            )
    elif creating_new:
        source_path.write_text("".join(remaining))
        dest_path.write_text(NEW_FILE_HEADER.format(name=sym.name) + stub)
        group.entries.insert(ei, splitlib.Entry(obj=dest_obj, section=sym.section))
    else:
        source_path.write_text("".join(remaining))
        text = dest_path.read_text()
        text = ensure_macros_bootstrap(text)
        if not text.endswith("\n"):
            text += "\n"
        text += stub
        dest_path.write_text(text)

    splitlib.save_manifest(manifest)
    splitlib.write_ld_script(manifest)

    print("done. Next: ./container.sh make, then diff against baserom before touching the C body.")


if __name__ == "__main__":
    main()

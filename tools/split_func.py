#!/usr/bin/env python3
"""Extract one function from a raw asm blob into asm/nonmatching/, wire it
into a src/*.c file via the project's NONMATCHING-include convention, and
regenerate ld_script.ld — the whole "start decompiling this function" chore
in one command.

    ./container.sh tools/split_func.py <symbol-or-hex-address> [--dest NAME] [--dry-run]

Examples:

    # heap.s is a small, self-contained, already-99%-disassembled file with
    # no src/*.c claiming it yet — a clean first extraction:
    ./container.sh tools/split_func.py init_heap --dest heap

    # once src/heap.c exists, later heap.s functions auto-append to it:
    ./container.sh tools/split_func.py alloc_heap_8018CEC

    # an address works too, if you don't know the (possibly renamed) symbol:
    ./container.sh tools/split_func.py 0x8018BC0 --dest heap

What it does, concretely:
  1. Resolves the symbol/address against mlss.map (so build first).
  2. Refuses unless it's the frontmost remaining function in its asm/*.s
     file — see CLAUDE.md for why extraction is front-to-back only.
  3. Cuts its lines (body + trailing literal pool) into
     asm/nonmatching/<name>.s.
  4. Adds a `#ifndef NONMATCHING / asm include / #else / #error` stub to the
     owning src/*.c file (creating it, with --dest, if this is the first
     function pulled from this blob).
  5. Updates tools/splits.yaml and regenerates ld_script.ld.

It does not touch the C body — that's the actual decompilation work, still
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
#error "TODO: write {name} to match asm/nonmatching/{name}.s, then delete this #error"
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
    promoted to matching C — see CLAUDE.md "Landmines already hit")."""
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
            f"{sym.name} (0x{sym.addr:08X}) is already claimed by {sym.obj} — nothing to extract."
        )

    source_path = splitlib.ROOT / f"{sym.obj_stem}.s"
    lines, start, end = splitlib.extract_function_lines(source_path, sym.name)
    extracted = lines[start:end]
    remaining = lines[:start] + lines[end:]

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

    creating_new = ei == 0 or not group.entries[ei - 1].obj.startswith("src/")
    if creating_new:
        if not args.dest:
            raise SystemExit(
                f"{sym.name} is the first function being pulled out of {sym.obj_stem}.s — "
                f"nothing claims that slot yet, so I need a name for the new file.\n"
                f"Re-run with --dest NAME (creates src/NAME.c)."
            )
        dest_obj = f"src/{args.dest}"
        dest_path = splitlib.ROOT / f"{dest_obj}.c"
        if dest_path.exists() or manifest.locate(dest_obj, sym.section) is not None:
            raise SystemExit(f"{dest_path} (or a splits.yaml entry for it) already exists.")
    else:
        dest_entry = group.entries[ei - 1]
        if args.dest and f"src/{args.dest}" != dest_entry.obj:
            raise SystemExit(
                f"{sym.name} continues {dest_entry.obj}.c (it's what's immediately before "
                f"{sym.obj_stem} in splits.yaml) — drop --dest {args.dest!r}, or omit --dest."
            )
        dest_obj = dest_entry.obj
        dest_path = dest_entry.source_path

    frag_path = splitlib.NONMATCHING_DIR / f"{sym.name}.s"
    if frag_path.exists():
        raise SystemExit(f"{frag_path} already exists — refusing to overwrite.")

    stub = STUB_TEMPLATE.format(name=sym.name)

    print(f"{sym.name}  0x{sym.addr:08X}  {source_path.relative_to(splitlib.ROOT)}"
          f" (lines {start + 1}-{end})")
    print(f"  -> {frag_path.relative_to(splitlib.ROOT)}  ({end - start} lines)")
    if creating_new:
        print(f"  -> {dest_path.relative_to(splitlib.ROOT)}  (NEW FILE)")
        print(f"  -> splits.yaml: insert {dest_obj!r} before {sym.obj_stem!r} in group {group.name!r}")
    else:
        print(f"  -> {dest_path.relative_to(splitlib.ROOT)}  (append)")
    print(f"  -> {source_path.relative_to(splitlib.ROOT)}: shrinks by {end - start} lines")

    if args.dry_run:
        print("(dry run, nothing written)")
        return

    frag_path.parent.mkdir(parents=True, exist_ok=True)
    frag_path.write_text(FRAGMENT_PREAMBLE + "".join(extracted))

    source_path.write_text("".join(remaining))

    if creating_new:
        dest_path.write_text(NEW_FILE_HEADER.format(name=sym.name) + stub)
        group.entries.insert(ei, splitlib.Entry(obj=dest_obj, section=sym.section))
    else:
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

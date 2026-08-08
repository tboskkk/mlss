#!/usr/bin/env python3
"""Shared helpers for MLSS split/decomp tooling.

Not a CLI itself — imported by gen_ldscript.py, split_func.py, progress.py.
Needs PyYAML, which lives in the project container (see tools/requirements.txt);
run these tools via ./container.sh rather than the bare host interpreter.
"""
from __future__ import annotations

import re
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Iterator, Optional

try:
    import yaml
except ImportError:
    yaml = None

ROOT = Path(__file__).resolve().parent.parent
SPLITS_YAML = ROOT / "tools" / "splits.yaml"
LD_SCRIPT = ROOT / "ld_script.ld"
MAP_FILE = ROOT / "mlss.map"
NONMATCHING_DIR = ROOT / "asm" / "nonmatching"

FUNC_START_RE = re.compile(
    r"^\s*(thumb_func_start|arm_func_start|non_word_aligned_thumb_func_start)\s+(\S+)\s*$"
)

MANIFEST_HEADER = '''\
# Layout manifest for the MLSS ROM.
#
# This is the single source of truth for how the final .text output section
# is assembled, in address order. ld_script.ld is GENERATED from this file —
# do not hand-edit ld_script.ld; edit this file (or let split_func.py edit
# it) and run:
#
#   tools/gen_ldscript.py
#
# Why this exists: previously every new split required a manual, easy-to-
# misplace edit to ld_script.ld. Order here is address order and directly
# determines output byte layout, so entries must stay in the order the
# bytes actually appear in the ROM.
#
# Each entry claims one input-section contribution from one object file:
#   obj: <path without extension>   e.g. "asm/heap" or "src/process"
#        - asm/<name>  -> asm/<name>.s   (raw disassembly, not yet decompiled)
#        - src/<name>  -> src/<name>.c   (decompiled C; may still contain
#                          asm/nonmatching/*.s includes for functions that
#                          don't compile to matching bytes yet)
#   section: text | rodata          which input section of that object to pull
#
# 'groups' are purely organizational (they reproduce the blank-line
# groupings the original hand-written ld_script.ld already had) and have no
# effect on codegen — they just keep `code`, `rodata`, and the embedded
# Mario Bros. ROM visually separate.
#
# tools/split_func.py maintains this file automatically when it extracts a
# function. You generally shouldn't need to hand-edit it, except when
# hand-creating a brand new subsystem file.

'''


def _require_yaml() -> None:
    if yaml is None:
        raise SystemExit(
            "PyYAML is required for this tool.\n"
            "Run it inside the project container instead of the bare host interpreter:\n"
            f"  ./container.sh python3 {' '.join(sys.argv)}"
        )


# --------------------------------------------------------------------------
# splits.yaml
# --------------------------------------------------------------------------


@dataclass
class Entry:
    obj: str
    section: str

    @property
    def source_path(self) -> Path:
        if self.obj.startswith("asm/"):
            return ROOT / f"{self.obj}.s"
        if self.obj.startswith("src/"):
            return ROOT / f"{self.obj}.c"
        raise ValueError(f"entry obj must start with asm/ or src/: {self.obj!r}")

    @property
    def object_rel(self) -> str:
        """Path as it appears inside ld_script.ld, e.g. 'asm/heap.o'."""
        return f"{self.obj}.o"

    @property
    def is_asm(self) -> bool:
        return self.obj.startswith("asm/")


@dataclass
class Group:
    name: str
    entries: list


@dataclass
class Manifest:
    groups: list

    def iter_entries(self) -> Iterator[Entry]:
        for g in self.groups:
            yield from g.entries

    def locate(self, obj: str, section: str) -> Optional[tuple]:
        """(group_index, entry_index) of the entry claiming obj+section, if any."""
        for gi, g in enumerate(self.groups):
            for ei, e in enumerate(g.entries):
                if e.obj == obj and e.section == section:
                    return gi, ei
        return None


def load_manifest(path: Path = SPLITS_YAML) -> Manifest:
    _require_yaml()
    data = yaml.safe_load(path.read_text()) or {}
    groups = [
        Group(name=g["name"], entries=[Entry(obj=e["obj"], section=e["section"]) for e in g.get("entries", [])])
        for g in data.get("groups", [])
    ]
    return Manifest(groups=groups)


def save_manifest(manifest: Manifest, path: Path = SPLITS_YAML) -> None:
    _require_yaml()
    data = {
        "groups": [
            {
                "name": g.name,
                "entries": [{"obj": e.obj, "section": e.section} for e in g.entries],
            }
            for g in manifest.groups
        ]
    }
    body = yaml.safe_dump(data, sort_keys=False, default_flow_style=None, width=100)
    path.write_text(MANIFEST_HEADER + body)


# --------------------------------------------------------------------------
# ld_script.ld generation (shared by gen_ldscript.py and split_func.py)
# --------------------------------------------------------------------------

_LD_HEADER = """\
/* GENERATED FILE. Do not hand-edit.
 * Edit tools/splits.yaml and run tools/gen_ldscript.py to regenerate. */
SECTIONS
{
    . = 0x2000000;

    ewram (NOLOAD) :
    ALIGN(0)
    {
    }

    . = 0x3000000;

    .bss (NOLOAD) :
    ALIGN(0)
    {
    }

    . = 0x8000000;

    .text :
    {
"""

_LD_FOOTER = """\
    }

    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
"""


def render_ld_script(manifest: Manifest) -> str:
    parts = [_LD_HEADER]
    for gi, group in enumerate(manifest.groups):
        if gi > 0:
            parts.append("\n")
        for entry in group.entries:
            parts.append(f"        {entry.object_rel}(.{entry.section});\n")
    parts.append(_LD_FOOTER)
    return "".join(parts)


def write_ld_script(manifest: Manifest, path: Path = LD_SCRIPT) -> None:
    path.write_text(render_ld_script(manifest))


# --------------------------------------------------------------------------
# mlss.map parsing
# --------------------------------------------------------------------------

_MAP_ENTRY_HEADER_RE = re.compile(r"^ (\S+\.o)\((\.\w+)\)\s*$")
_MAP_SECTION_SUMMARY_RE = re.compile(r"^ \.\w+\s+0x[0-9a-fA-F]+\s+0x[0-9a-fA-F]+\s+\S+\s*$")
_MAP_SYMBOL_RE = re.compile(r"^\s+0x([0-9a-fA-F]+)\s+(\S+)\s*$")


@dataclass
class MapSymbol:
    addr: int
    name: str
    obj: str  # e.g. "asm/text08057568.o"
    section: str  # "text" or "rodata"

    @property
    def obj_stem(self) -> str:
        """obj with the .o suffix stripped, e.g. 'asm/text08057568'."""
        assert self.obj.endswith(".o")
        return self.obj[:-2]


def parse_map(path: Path = MAP_FILE) -> list:
    if not path.exists():
        raise SystemExit(f"{path} not found. Build first: ./container.sh make")

    symbols = []
    cur_obj = None
    cur_section = None
    for line in path.read_text().splitlines():
        m = _MAP_ENTRY_HEADER_RE.match(line)
        if m:
            cur_obj, section_dot = m.group(1), m.group(2)
            cur_section = section_dot.lstrip(".")
            continue
        if _MAP_SECTION_SUMMARY_RE.match(line):
            continue
        m = _MAP_SYMBOL_RE.match(line)
        if m and cur_obj is not None:
            symbols.append(
                MapSymbol(addr=int(m.group(1), 16), name=m.group(2), obj=cur_obj, section=cur_section)
            )
    if not symbols:
        raise SystemExit(f"parsed 0 symbols from {path} — map format may have changed")
    return symbols


def find_symbol(token: str, symbols: list) -> MapSymbol:
    """Resolve a CLI argument (exact symbol name, or hex address) to a MapSymbol."""
    by_name = {s.name: s for s in symbols}
    if token in by_name:
        return by_name[token]

    hex_part = token[2:] if token.lower().startswith("0x") else token
    try:
        addr = int(hex_part, 16)
    except ValueError:
        raise SystemExit(
            f"{token!r} is not a known symbol name in mlss.map, and not a valid hex address"
        )
    matches = [s for s in symbols if s.addr == addr]
    if not matches:
        raise SystemExit(f"no symbol at address 0x{addr:08X} in mlss.map")
    if len(matches) > 1:
        names = ", ".join(f"{s.name} ({s.obj})" for s in matches)
        raise SystemExit(f"multiple symbols at 0x{addr:08X}: {names}")
    return matches[0]


# --------------------------------------------------------------------------
# Function boundaries inside a raw asm/*.s blob
# --------------------------------------------------------------------------


def function_starts(path: Path):
    """[(name, line_index)] for every func-start directive, in file order."""
    lines = path.read_text().splitlines(keepends=True)
    starts = []
    for i, line in enumerate(lines):
        m = FUNC_START_RE.match(line)
        if m:
            starts.append((m.group(2), i))
    return lines, starts


def extract_function_lines(path: Path, name: str):
    """Return (all_lines, start_index, end_index) for `name`'s definition in `path`.

    end_index is exclusive. Raises SystemExit if `name` isn't the first
    remaining function-start directive in the file — this tool only supports
    front-to-back extraction, matching how every split in this project has
    been done so far (see CLAUDE.md).
    """
    lines, starts = function_starts(path)
    idx = next((i for i, (n, _) in enumerate(starts) if n == name), None)
    if idx is None:
        raise SystemExit(f"{name!r}: no thumb_func_start/arm_func_start directive found in {path}")

    start_line = starts[idx][1]
    end_line = starts[idx + 1][1] if idx + 1 < len(starts) else len(lines)

    earlier = [n for n, ln in starts if ln < start_line]
    if earlier:
        raise SystemExit(
            f"{name!r} is not the first remaining function in {path.name}.\n"
            f"split_func.py only extracts front-to-back within a file (see CLAUDE.md for why).\n"
            f"Extract {earlier[0]!r} first — it's currently first in this file."
        )

    return lines, start_line, end_line

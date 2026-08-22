#!/usr/bin/env python3
"""Shared helpers for MLSS split/decomp tooling.

Not a CLI itself - imported by gen_ldscript.py, split_func.py, progress.py.
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

# The exact 5-line header every raw asm/*.s blob starts with. Kept in sync
# with _HEADER_LINE_RES below (which *recognizes* this shape); this constant
# is for *writing* a new blob, e.g. the tail half produced by a mid-file
# split. Each blob is assembled as its own translation unit, so each needs
# its own macros.inc include - that's unrelated to (and safe from) the
# "one macros.inc per src/*.c" landmine in CLAUDE.md, which is about
# multiple fragments included into a single C file.
BLOB_HEADER = '\t.include "asm/macros.inc"\n\n\t.syntax unified\n\t.text\n\n'

FUNC_START_RE = re.compile(
    r"^\s*(thumb_func_start|arm_func_start|non_word_aligned_thumb_func_start)\s+(\S+)\s*$"
)

# The .text output section's exact extent, straight from ld_script.ld's own
# `. = 0x8000000;` and the 16MB cartridge size the ROM checksum is taken
# over. Used to assert the layout didn't shift (see verify_layout).
ROM_TEXT_BASE = 0x08000000
ROM_TEXT_SIZE = 0x01000000

# Luvdis names every function it couldn't identify after its own address, so
# the symbol name IS a checkable assertion about where it must link. That
# makes a whole-ROM layout shift diagnosable in one pass over mlss.map
# instead of by bisecting builds - see verify_layout().
_SELF_ADDRESSED_SYMBOL_RE = re.compile(r"^(?:sub|nullsub)_0?([0-9A-Fa-f]{7,8})$")

MANIFEST_HEADER = '''\
# Layout manifest for the MLSS ROM.
#
# This is the single source of truth for how the final .text output section
# is assembled, in address order. ld_script.ld is GENERATED from this file -
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
# effect on codegen - they just keep `code`, `rodata`, and the embedded
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
        """Path as it appears inside ld_script.ld AND on the linker command
        line (both root-relative, since the Makefile links from the project
        root, not from build/) - e.g. 'build/asm/heap.o'."""
        return f"build/{self.obj}.o"

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
_MAP_SECTION_SUMMARY_RE = re.compile(
    r"^ \.\w+\s+0x([0-9a-fA-F]+)\s+0x([0-9a-fA-F]+)\s+(\S+)\s*$"
)
_MAP_SYMBOL_RE = re.compile(r"^\s+0x([0-9a-fA-F]+)\s+(\S+)\s*$")
# Output-section line, flush left: ".text           0x08000000  0x1000000"
_MAP_OUTPUT_SECTION_RE = re.compile(r"^(\.\w+)\s+0x([0-9a-fA-F]+)\s+0x([0-9a-fA-F]+)\s*$")


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
    symbols, _, _ = _parse_map_full(path)
    if not symbols:
        raise SystemExit(f"parsed 0 symbols from {path} - map format may have changed")
    return symbols


def parse_object_bases(path: Path = MAP_FILE) -> dict:
    """{(obj_path, section): base_address} for every object contribution,
    e.g. {("build/asm/heap.o", "text"): 0x08018CEC}."""
    _, extents, _ = _parse_map_full(path)
    return {k: v[0] for k, v in extents.items()}


def parse_object_extents(path: Path = MAP_FILE) -> dict:
    """{(obj_path, section): (base_address, size)} for every object
    contribution - the same rows parse_object_bases() reads, keeping the
    size instead of throwing it away.

    The size matters because it is not always the number of bytes the
    object's source actually describes: GNU as rounds a section's size UP
    to that section's alignment, so an object whose content ends at a
    2-mod-4 address but which contains a `.align 2, 0` (which every
    `thumb_func_start` does) comes out two bytes too long, and everything
    linked after it slides. That is the extraction landmine documented in
    CLAUDE.md; next_content_address() below is what lets split_func.py see
    it coming."""
    _, extents, _ = _parse_map_full(path)
    return extents


def parse_output_sections(path: Path = MAP_FILE) -> dict:
    """{section_name: (address, size)} for the linker's OUTPUT sections
    (the flush-left `.text 0x08000000 0x1000000` rows), not the per-object
    contributions under them."""
    _, _, outputs = _parse_map_full(path)
    return outputs


def file_base_address(entry: "Entry", path: Path = MAP_FILE) -> int:
    """Base address of one splits.yaml entry's contribution, per the map
    file. Returns None if this build doesn't happen to link that object
    (shouldn't happen for anything actually in splits.yaml, but fail soft
    here - callers can decide how loud to be)."""
    return parse_object_bases(path).get((entry.object_rel, entry.section))


def _parse_map_full(path: Path):
    if not path.exists():
        raise SystemExit(f"{path} not found. Build first: ./container.sh make")

    symbols = []
    extents = {}
    outputs = {}
    cur_obj = None
    cur_section = None
    for line in path.read_text().splitlines():
        m = _MAP_OUTPUT_SECTION_RE.match(line)
        if m:
            outputs[m.group(1)] = (int(m.group(2), 16), int(m.group(3), 16))
            continue
        m = _MAP_ENTRY_HEADER_RE.match(line)
        if m:
            cur_obj, section_dot = m.group(1), m.group(2)
            # The map file's object paths carry a "build/" prefix (the
            # Makefile links from the repo root - see CLAUDE.md "Landmines"),
            # but MapSymbol.obj is meant to match Entry.obj / splits.yaml
            # conventions, which never do. Strip it here so obj_stem lines up
            # with real asm/*.s and src/*.c paths for every downstream user
            # (split_func.py's "already claimed" check in particular).
            if cur_obj.startswith("build/"):
                cur_obj = cur_obj[len("build/"):]
            cur_section = section_dot.lstrip(".")
            continue
        m = _MAP_SECTION_SUMMARY_RE.match(line)
        if m:
            addr_hex, size_hex, objpath = m.groups()
            extents[(objpath, cur_section)] = (int(addr_hex, 16), int(size_hex, 16))
            continue
        m = _MAP_SYMBOL_RE.match(line)
        if m and cur_obj is not None:
            symbols.append(
                MapSymbol(addr=int(m.group(1), 16), name=m.group(2), obj=cur_obj, section=cur_section)
            )
    return symbols, extents, outputs


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


_HEADER_LINE_RES = [
    re.compile(r'^\s*\.include\s+"asm/macros\.inc"\s*$'),
    re.compile(r'^\s*$'),
    re.compile(r'^\s*\.syntax\s+unified\s*$'),
    re.compile(r'^\s*\.text\s*$'),
    re.compile(r'^\s*$'),
]


def _header_end(lines) -> Optional[int]:
    """Line index right after the fixed 5-line file header (.include
    macros.inc / blank / .syntax unified / .text / blank) every asm/*.s
    blob starts with - or None if the first lines don't match it (leaves
    callers free to fall back to the old, conservative behavior rather than
    guess on a format this hasn't seen)."""
    if len(lines) < len(_HEADER_LINE_RES):
        return None
    for line, pattern in zip(lines, _HEADER_LINE_RES):
        if not pattern.match(line):
            return None
    return len(_HEADER_LINE_RES)


def next_blob_part_name(stem: str, manifest: "Manifest") -> str:
    """Pick an unused `asm/<base>_pN` name for the tail half of a blob that's
    being split around a mid-file extraction.

    Splits can nest (extract from a blob, then extract from the tail it
    produced), so this always counts from the ORIGINAL base name rather than
    appending another suffix to an already-suffixed name - otherwise you'd
    get asm/text08057568_p2_p2_p3-style pileups after a few extractions.
    """
    base = re.sub(r"_p\d+$", "", stem)
    used = {e.obj for e in manifest.iter_entries()}
    n = 2
    while f"{base}_p{n}" in used or (ROOT / f"{base}_p{n}.s").exists():
        n += 1
    return f"{base}_p{n}"


def extract_function_lines(path: Path, name: str, allow_midfile: bool = False):
    """Return (all_lines, start_index, end_index) for `name`'s definition in `path`.

    end_index is exclusive. By default raises SystemExit if `name` isn't the
    first remaining function-start directive in the file. Pass
    allow_midfile=True to permit extracting from anywhere in the blob - the
    caller is then responsible for splitting the blob into before/after
    objects and placing them correctly in the manifest, since the bytes
    before and after this function must keep their exact ROM positions
    (see split_func.py's mid-file path).

    start_index is usually just `name`'s own thumb_func_start line, but see
    the leading-unlabeled-data handling below: it can be earlier than that.
    """
    lines, starts = function_starts(path)
    idx = next((i for i, (n, _) in enumerate(starts) if n == name), None)
    if idx is None:
        raise SystemExit(f"{name!r}: no thumb_func_start/arm_func_start directive found in {path}")

    start_line = starts[idx][1]
    end_line = starts[idx + 1][1] if idx + 1 < len(starts) else len(lines)

    earlier = [] if allow_midfile else [n for n, ln in starts if ln < start_line]
    if earlier:
        raise SystemExit(
            f"{name!r} is not the first remaining function in {path.name}.\n"
            f"split_func.py only extracts front-to-back within a file (see CLAUDE.md for why).\n"
            f"Extract {earlier[0]!r} first - it's currently first in this file."
        )

    # Luvdis sometimes left a run of raw, never-labeled .byte data (real
    # code or data it didn't recognize as a function) sitting between the
    # file header and the first labeled function - CLAUDE.md's own Phase 3
    # notes flag this as common. That data has to stay immediately before
    # this function in the final byte order. If it's left behind in
    # `remaining`, it silently ends up placed *after* wherever this
    # extraction's new destination file lands instead - a real, previously
    # unnoticed extraction bug (found via a fresh pilot agent hitting it on
    # text08019CA4.s; also present verbatim in text080542C4.s). Detect it
    # and fold it into this extraction instead of leaving it behind.
    #
    # ONLY valid for a front-most extraction. In mid-file mode everything
    # between the header and this function is earlier *functions*, which
    # stay in the before-part and keep their own ROM positions - folding
    # them in here would silently swallow every preceding function into
    # this one extraction and wreck the layout.
    if not allow_midfile:
        header_end = _header_end(lines)
        if header_end is not None and header_end < start_line:
            if any(line.strip() for line in lines[header_end:start_line]):
                start_line = header_end

    return lines, start_line, end_line


# --------------------------------------------------------------------------
# Alignment / layout safety
# --------------------------------------------------------------------------


def next_content_address(sym: "MapSymbol", source_path: Path, symbols: list):
    """ROM address of the first byte AFTER an extraction of `sym` from
    `source_path` - i.e. exactly where the extracted object's .text has to
    end for the rest of the ROM to stay put.

    Returns None when it can't be derived (an unlabeled successor, a symbol
    missing from the map). Callers should treat None as "couldn't check",
    not as "safe" - the whole point of this is that the failure mode it
    guards against is silent.
    """
    _lines, starts = function_starts(source_path)
    idx = next((i for i, (n, _) in enumerate(starts) if n == sym.name), None)
    if idx is None:
        return None

    if idx + 1 < len(starts):
        # The extraction is cut at the next function-start directive, so
        # that function's own linked address is the end of this one.
        by_name = {s.name: s for s in symbols}
        nxt = by_name.get(starts[idx + 1][0])
        return nxt.addr if nxt else None

    # Last function in the blob: the extraction runs to end-of-file, so it
    # ends where the blob's whole contribution ends.
    extent = parse_object_extents().get((f"build/{sym.obj_stem}.o", sym.section))
    return None if extent is None else extent[0] + extent[1]


def alignment_padding_hazard(end_addr) -> bool:
    """True when an object ending at `end_addr` will be silently padded.

    GNU as rounds a section's size up to the section's own alignment, and
    `thumb_func_start` expands to `.align 2, 0` - so a fragment whose bytes
    stop at a 2-mod-4 address becomes a 4-aligned object two bytes too
    long, sliding every symbol after it. Confirmed directly: 0x2BE bytes of
    content under `thumb_func_start` assemble to a .text of size 0x2C0,
    while the identical bytes under `non_word_aligned_thumb_func_start`
    (which omits the `.align`) assemble to exactly 0x2BE.
    """
    return end_addr is not None and end_addr % 4 != 0


def verify_layout(path: Path = MAP_FILE) -> list:
    """Check a linked map for the whole-ROM shift this project's extraction
    landmine produces. Returns a list of human-readable problems (empty ==
    clean).

    Two independent assertions, both cheap:

      1. The .text OUTPUT section must be exactly ROM_TEXT_SIZE at
         ROM_TEXT_BASE. A shift shows up here as a size of 0x01000008 or
         similar - that alone says "something grew" without saying where.

      2. Every self-addressed symbol (`sub_XXXXXXX`, named by Luvdis after
         its own ROM address) must link at that address. The FIRST symbol
         that doesn't is where the shift starts, and the object contribution
         covering it is the culprit - which is the actual diagnosis, and it
         costs one pass over the map instead of a bisect over rebuilds.
    """
    symbols, extents, outputs = _parse_map_full(path)
    problems = []

    text = outputs.get(".text")
    if text is None:
        problems.append("no .text output section found in the map - did the link change shape?")
    else:
        addr, size = text
        if addr != ROM_TEXT_BASE or size != ROM_TEXT_SIZE:
            problems.append(
                f".text output section is 0x{addr:08X} size 0x{size:X}, expected "
                f"0x{ROM_TEXT_BASE:08X} size 0x{ROM_TEXT_SIZE:X}"
            )

    mismatched = []
    for s in symbols:
        if s.section != "text":
            continue
        m = _SELF_ADDRESSED_SYMBOL_RE.match(s.name)
        if not m:
            continue
        want = int(m.group(1), 16)
        if s.addr != want:
            mismatched.append((s, want))

    if mismatched:
        mismatched.sort(key=lambda t: t[1])
        first, want = mismatched[0]
        problems.append(
            f"{len(mismatched)} symbol(s) linked at the wrong address; the first is "
            f"{first.name} at 0x{first.addr:08X} (should be 0x{want:08X}, "
            f"off by {first.addr - want:+d}) in {first.obj}"
        )
        culprit = _preceding_contribution(extents, first.addr)
        if culprit:
            (obj, _sec), (base, size) = culprit
            problems.append(
                f"  -> the contribution immediately before it is {obj} "
                f"(0x{base:08X}, size 0x{size:X}, ends 0x{base + size:08X}) - that is "
                f"where the extra bytes came from"
            )

    return problems


def _preceding_contribution(extents: dict, addr: int):
    """The .text object contribution that ends closest to (but at or before)
    `addr` - i.e. whoever pushed the symbol at `addr` off its mark."""
    best = None
    for key, (base, size) in extents.items():
        if key[1] != "text" or base >= addr:
            continue
        if best is None or base > best[1][0]:
            best = (key, (base, size))
    return best

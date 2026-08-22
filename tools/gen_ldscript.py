#!/usr/bin/env python3
"""Regenerate ld_script.ld from tools/splits.yaml.

    ./container.sh tools/gen_ldscript.py

ld_script.ld is a build artifact of this manifest now, not a hand-maintained
file - run this after editing splits.yaml by hand (split_func.py calls it
for you automatically after every extraction).
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib


def main() -> None:
    manifest = splitlib.load_manifest()
    splitlib.write_ld_script(manifest)
    n = sum(len(g.entries) for g in manifest.groups)
    print(f"wrote {splitlib.LD_SCRIPT.relative_to(splitlib.ROOT)}: {n} entries in {len(manifest.groups)} groups")


if __name__ == "__main__":
    main()

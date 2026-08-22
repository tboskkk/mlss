"""Config for asm-differ (https://github.com/simonlindholm/asm-differ).

    ./container.sh asm-differ -mwo <function-name>

-m rebuilds via `make` first, -w re-diffs automatically on source changes,
-o diffs object files (against expected/) rather than the whole ROM - this
is the tool's own recommended default, and the one that actually works
here: our ld_script.ld has no separate load/run address for anything (see
CLAUDE.md), so whole-ROM (-f) mode can't compute the offset it needs and
fails with "load address" not found in the map file.

-m always rebuilds with NONMATCHING=1 (see Makefile), so this works
uniformly whether `function-name` is plain matched C (unaffected - no
#ifndef NONMATCHING wrapper to flip) or a not-yet-matching #else attempt
(now actually compiled instead of silently replaced by its asm include).

expected/ is a snapshot of build/ taken from a PLAIN (no NONMATCHING=1)
build, while everything still matched byte-for-byte - which today means
all of it, nothing is decompiled wrong yet. It's gitignored, like build/.
Regenerate it after landing a real match or pulling upstream changes -
deliberately not with NONMATCHING=1, or you'd be freezing in-progress
(not-yet-matching) bytes as the "known good" baseline:

    ./container.sh make && rm -rf expected && mkdir expected && cp -r build expected/
"""


def apply(config, args):
    config["arch"] = "arm32"
    config["mapfile"] = "mlss.map"
    config["source_directories"] = ["src", "asm"]
    config["objdump_executable"] = "arm-none-eabi-objdump"
    config["expected_dir"] = "expected/"
    config["make_command"] = ["make", "NONMATCHING=1"]

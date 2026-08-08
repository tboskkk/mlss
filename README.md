# Mario & Luigi Superstar Saga

This is a decompilation of Mario & Luigi Superstar Saga (US).

It builds the following ROM:
* mlss.gba `sha1: 7c303cdde5061ee329296948060b875cb50ba410`

## Building

    ./container.sh make

No other setup needed — see [INSTALL.md](INSTALL.md) if you'd rather install the toolchain natively.

## Status

Early. Most of the ROM is still raw disassembly rather than decompiled C — run `tools/progress.py` for a current count. See [CLAUDE.md](CLAUDE.md) for the project's conventions, tooling, and workflow if you're picking this up.

## Contributing

* `tools/split_func.py <function>` pulls one function out of a raw asm blob and wires it up to start decompiling — see its `--help`.
* `tools/progress.py` reports where things stand.
* `asm-differ` and `tools/decomp-permuter` (a submodule — `git submodule update --init`) are set up and configured; see `diff_settings.py` / `permuter_settings.toml`.
* Good first functions: anything in `tools/progress.py`'s "not started" list, or the front of a small file (`asm/heap.s`, `asm/text08019CA4.s`, `asm/text080542C4.s`).

Contact the original author on [Discord](https://discord.com/users/164348894702993408).

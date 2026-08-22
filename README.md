# Mario & Luigi: Superstar Saga

A work-in-progress **matching decompilation** of *Mario & Luigi: Superstar Saga* (USA, Game Boy Advance).

*Matching* is the strict form: the C in this repository compiles - with the original toolchain, `agbcc` - to bytes **identical** to the retail cartridge. Not a reimplementation, not a port, not "close enough". The build reproduces the ROM exactly or it fails.

```
mlss.gba   sha1: 7c303cdde5061ee329296948060b875cb50ba410
```

No retail ROM is needed to build. Everything comes from `asm/` and `src/` in this repo.

## Progress

<!-- progress:start -->

![matched](https://img.shields.io/badge/matched-13.4%25-orange?style=for-the-badge&label=functions%20matched)

```
######......................................  13.4%
```

| state | functions | share | meaning |
|---|---:|---:|---|
| **matched** | 803 | 13.4% | compiles byte-identical to retail |
| **in progress** | 4,321 | 72.1% | extracted, a real C attempt exists |
| **not started** | 850 | 14.2% | extracted, no attempt yet |
| **not extracted** | 22 | 0.4% | still raw in `asm/*.s` |
| | **5,996** | | **total (game proper)** |

Plus **923** functions in `asm/mariobros.s` - a complete, separate *Mario Bros.* minigame ROM embedded in the cartridge. Different game, different original developers, tracked apart and **not** counted toward the totals above.

<sub>Counts are functions, not code bytes - regenerate with `tools/gen_readme_progress.py`. Last updated 2026-08-22.</sub>

<!-- progress:end -->

## Building

```sh
./container.sh make
```

That's it - the container carries the whole toolchain (devkitARM plus a pinned from-source build of `agbcc`). The build ends by hashing the result against `rom.sha1` and must print `mlss.gba: OK`.

Prefer a native toolchain? See [INSTALL.md](INSTALL.md). `./container.sh <anything>` runs that command inside the toolchain (`./container.sh bash` for a shell).

## How a function gets decompiled

Every unmatched function lives behind a guard, so the ROM stays byte-exact no matter how in-progress the C is:

```c
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/name.s\"");   // verbatim retail bytes
#else
void name(void) { /* the C attempt */ }
#endif
```

The default build splices in the original assembly. `make NONMATCHING=1` compiles the C instead, so it can be diffed. When a function is *confirmed* byte-identical the whole guard is deleted - that deletion is this project's signal that something is truly matched, and it's what the progress counts above measure.

Full workflow, tooling, and a long list of landmines already stepped on: **[CLAUDE.md](CLAUDE.md)**. Read it before your first change; it front-loads a lot of "why is it built this way".

## Contributing

Good first steps:

- `tools/progress.py` - where things stand, and what's next in each file.
- `tools/split_func.py <function>` - pulls one function out of a raw asm blob and wires up the guard for you. See `--help`.
- `asm-differ` and [decomp-permuter](https://github.com/WhenGryphonsFly/decomp-permuter-agbcc) are configured and ready (`git submodule update --init`); see `diff_settings.py` and `permuter_settings.toml`.
- Pick anything from `tools/progress.py`'s "not started" list, or the front of a small file.

Digging into the parts nobody has mapped yet:

- `tools/map_raw_regions.py` - every still-raw byte run, with exact addresses.
- `tools/find_library_code.py` - byte-matches compiled libgcc/libc against the ROM to identify library routines.
- `tools/find_compressed_blocks.py`, `tools/find_pointer_tables.py` - locating compressed assets and pointer tables.
- `tools/dynamic-analysis/` - a headless GBA emulator wired to this build's DWARF, for proving at runtime what a field or function actually does.

Findings so far, including the room/collision data pipeline and the slope-physics decode, are written up in [docs/formats/README.md](docs/formats/README.md).

## Automation

`tools/factory/` is an unattended pipeline that generates candidate C with [m2c](https://github.com/matt-kempster/m2c), searches it with decomp-permuter, and validates every result with a from-scratch build plus a ROM checksum. Nothing bypasses that final gate. `tools/factory/health.py` reports whether it's actually working.

## Credits

Original decompilation work by **jellees** ([upstream](https://github.com/jellees/mlss)) - contact on [Discord](https://discord.com/users/164348894702993408). This fork continues it with an automated pipeline on top.

*Mario & Luigi: Superstar Saga* is © Nintendo / AlphaDream. This project contains no copyrighted game data - only the code needed to rebuild it from a cartridge you own.

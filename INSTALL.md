# Building

## Option A - container (recommended)

No host setup beyond `podman` or `docker`. This is what CI uses, so if it
builds for CI it builds for you.

    ./container.sh make

First run builds the toolchain image (~1-2 min: devkitARM + a from-source
build of agbcc, pinned to the commit documented in [Containerfile](Containerfile)).
Every run after that reuses the cached image. `./container.sh` accepts any
command, not just `make`:

    ./container.sh make clean
    ./container.sh bash          # interactive shell inside the toolchain

## Option B - native

Only tested on WSL2 and Linux. If you'd rather not install a 1990s compiler
onto your host, use Option A instead.

Install the **devkitARM** toolchain of [devkitPro](https://devkitpro.org/wiki/Getting_Started) and add its environment variables:

    export DEVKITPRO=/opt/devkitpro
    echo "export DEVKITPRO=$DEVKITPRO" >> ~/.bashrc
    export DEVKITARM=$DEVKITPRO/devkitARM
    echo "export DEVKITARM=$DEVKITARM" >> ~/.bashrc

Clone and build agbcc, then install it into this repo:

    git clone https://github.com/jiangzhengwenjz/agbcc
    cd agbcc
    git checkout new_newlib_pret
    ./build.sh
    ./install.sh ../mlss

    cd ../mlss
    make

## Verifying the result

`make` ends by hashing the built ROM against [rom.sha1](rom.sha1) and prints
`mlss.gba: OK` on a match - that's the whole test suite for now, and it's
what CI checks on every push. No retail ROM needs to be checked in or
supplied anywhere in this process; the build reproduces one entirely from
the sources in `asm/` and `src/`.

A legally-dumped `baserom.gba` (already gitignored) is still useful to keep
in the repo root for reference tooling - `asmdiff.sh`, asset extraction,
sanity-checking a region you just split - even though the build itself
never reads it.

## Notes

This project uses `jiangzhengwenjz/agbcc` for the `-ffix-debug-line` fix.
It should also compile matching with `pret/agbcc`, untested.

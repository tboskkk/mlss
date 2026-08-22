# Dynamic analysis (gba-kit)

Runtime experiments that establish what a field, global or function *actually*
does — used as the evidence of record for names and comments elsewhere in the
repo. Nothing here is part of the ROM build; `make` never looks at it.

## Setup

```sh
cd tools/dynamic-analysis && bun install
```

That is the whole setup. `@gba-kit/gba-node` is a published npm package, so
there is no need to clone or build the gba-kit repo — and on this machine that
matters: **node, npm and pnpm are all absent, only `bun` is installed.**
Building gba-kit from source fails here (`turbo` cannot find pnpm); installing
the published package takes about a second. A `node` shim exists at
`~/.bun/bin/node` if a script needs one on PATH.

## Why gba-kit rather than mGBA

It resolves symbols and struct offsets from **our own build's DWARF**, so
addresses are never hand-typed. Our Makefile already emits it (`CFLAGS ... -g
-ffix-debug-line`, `LDFLAGS ... -g`); `mlss.elf` carries ~6.7MB of
`.debug_info`. mGBA is more mature and has real watchpoints
(`setWatchpoint`/`setRangeWatchpoint`), but works on raw addresses with no
symbol resolution — kept as a fallback.

No retail ROM is involved: we build `mlss.gba` ourselves, byte-identical.

## Verified working

```js
import { HeadlessRuntime } from '@gba-kit/gba-node';
const rt = await HeadlessRuntime.create({
  romPath: REPO + '/mlss.gba',
  elfPath: REPO + '/mlss.elf',
  outputDir: OUT,
  logFn: () => {},
});
const di = rt.engine.debugInfo;
di.symbolToAddress('get_surface_height_at_x');  // -> 0x8160854   (correct)
di.symbolToAddress('stage_room_solidity_grid'); // -> 0x805a00c   (correct)
rt.gba.bus.read32(0x08000000);                  // -> 0xea00002e  (header branch)
```

Exports: `HeadlessRuntime`, `NodeScriptingHost`, `deserializeSnapshot`,
`serializeSnapshot`.

## Method

Modelled on the Klonoa: Empire of Dreams decomp's `docs/dynamic-analysis/`
(30+ real `prove-*.mjs` experiments; clone kept at
`~/Desktop/mlss-reference/kl-eod-decomp`).

- Resolve every address and struct offset from DWARF. Never hand-type one.
- Each script is an **A/B intervention**: change exactly one thing between two
  otherwise identical runs and observe what moves.
- A comment elsewhere in the repo that cites a script here is claiming
  precisely what that script prints — no more.
- **Verify the instrument, not just the output.** That project produced a
  confidently wrong rename because the *script* had two register addresses
  transposed: the observations were right and the labels were not. This repo
  has hit the same class of bug repeatedly (CLAUDE.md sections F, I, M, N).

## Cost discipline

Never "explore the game" open-endedly — that is how an agent burns hours
narrating a death animation as progress. Ask a bounded question: *set a
watchpoint on address X, run to the first write, report the value and the
writing PC.*

## First targets

1. The struct accessed by ~1,254 unmatched functions (handler fn-ptr at
   `+0x4C`) — gates ~22% of the corpus and is defined nowhere.
2. The sound-driver struct behind the 21 functions at
   `0x0819A834`-`0x0819BABC` (stride `0x20`, 12 entries, offset 0 is a u16
   flags word with bit 0 = enabled).
3. Open physics questions: when is `ctx+0x80C` populated, and what consumes
   `col_set_ptr_table`?

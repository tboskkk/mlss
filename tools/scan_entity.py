#!/usr/bin/env python3
"""Measure the struct that most unmatched functions take as their first argument.

Counts per-offset accesses off r0 at function entry, with the load/store WIDTH,
across every fragment in asm/nonmatching/. Read-only; safe against a live
factory.

    ./container.sh tools/scan_entity.py

WHY THE OFFSET TRACKING IS NOT JUST `[r0, #imm]`: Thumb's ldr immediate offset
caps at 0x7C, so every field above that is reached as `adds rN, #0xAC` first.
Miss that and the struct appears to end at 0x7C, which it does not - fields at
0x84, 0x88, 0x8C, 0x9C, 0xA8 and 0xAC are all real and all invisible without it.

WHAT THIS MEASUREMENT IS FOR, and what it is NOT for. Defining the struct and
handing it to m2c was tested (2026-08-22) and does NOT improve match scores:
m2c already emits explicit-width `M2C_FIELD` byte casts, and
`arg0->field_AC = 2` compiles identically to `M2C_FIELD(arg0, s16 *, 0xAC) = 2`.
It DOES cut handler data-declarations sharply (71 -> 10 over 60 functions),
because a typed `void (*handler)(struct Entity *)` lets m2c emit
`arg0->handler = sub_X;` instead of `extern s32 sub_X;` plus `&sub_X`.

That benefit could not be shipped: adding the struct to include/common.h breaks
assembly through agbcc's -ffix-debug-line handling, position-dependently and
per-file. See CLAUDE.md section S. The measurement is kept because the offsets
and widths are real and useful to a human reading this code.
"""

import collections, pathlib, re

FRAG = pathlib.Path('asm/nonmatching')
# ldr/str = 4, ldrh/strh/ldsh = 2, ldrb/strb/ldsb = 1
WIDTH = {'ldr': 4, 'str': 4, 'ldrh': 2, 'strh': 2, 'ldsh': 2,
         'ldrb': 1, 'strb': 1, 'ldsb': 1}
ACC = re.compile(r'^\s*(ldr|str|ldrh|strh|ldsh|ldrb|strb|ldsb)\s+r\d+,\s*\[(r\d+),\s*#(0x[0-9A-Fa-f]+|\d+)\]')

per_off_fns = collections.defaultdict(set)     # offset -> {function}
per_off_width = collections.defaultdict(collections.Counter)
fn_offsets = {}

for f in sorted(FRAG.glob('*.s')):
    lines = f.read_text().splitlines()
    # Track which register still holds arg0 (r0 at entry). Very conservative:
    # follow `adds rX, r0, #0x0` copies, and stop trusting r0 once it is
    # written by anything else.
    # holder register -> byte offset from arg0. Thumb's ldr immediate caps at
    # 0x7C, so every field above that is reached as `adds rN, #0xAC` first --
    # miss this and the struct looks like it ends at 0x7C, which it does not.
    holders = {'r0': 0}
    offsets = collections.defaultdict(collections.Counter)
    for ln in lines[:400]:
        m = re.match(r'^\s*adds\s+(r\d+),\s*(r\d+),\s*#0x0+\s*$', ln)
        if m and m.group(2) in holders:
            holders[m.group(1)] = holders[m.group(2)]; continue
        m = re.match(r'^\s*adds\s+(r\d+),\s*#(0x[0-9A-Fa-f]+|\d+)\s*$', ln)
        if m and m.group(1) in holders:
            v = m.group(2)
            holders[m.group(1)] += int(v, 16) if v.startswith('0x') else int(v)
            continue
        m = ACC.match(ln)
        if m:
            op, base, off = m.group(1), m.group(2), m.group(3)
            if base in holders:
                o = int(off, 16) if off.startswith('0x') else int(off)
                offsets[holders[base] + o][WIDTH[op]] += 1
            continue
        # any other write to a holder invalidates it
        m = re.match(r'^\s*\w+\s+(r\d+),', ln)
        if m and m.group(1) in holders and m.group(1) != 'r0':
            holders.pop(m.group(1), None)
    if offsets:
        fn_offsets[f.stem] = set(offsets)
        for off, wc in offsets.items():
            per_off_fns[off].add(f.stem)
            per_off_width[off] += wc

total = len(list(FRAG.glob('*.s')))
print(f'fragments scanned: {total}, with arg0 accesses: {len(fn_offsets)}\n')
print(f'{"off":>6} {"fns":>6} {"%":>6}  width vote')
for off, fns in sorted(per_off_fns.items(), key=lambda x: -len(x[1]))[:28]:
    wc = per_off_width[off]
    tot = sum(wc.values())
    w, n = wc.most_common(1)[0]
    print(f'0x{off:04X} {len(fns):6d} {100*len(fns)/total:5.1f}%  {w}B ({100*n/tot:.0f}% of {tot})')

import json
json.dump({str(k): sorted(v) for k, v in per_off_fns.items()}, open('/tmp/off_fns.json','w'))

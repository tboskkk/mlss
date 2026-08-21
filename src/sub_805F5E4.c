#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805F5E4 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808750C;

void sub_805F5E4(void *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0xA0))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0xA0))) = temp_r0_11;
    if (temp_r0_11 < 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F604.s\"");
#else
#error "TODO: write sub_805F604 to match asm/nonmatching/sub_805F604.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F638.s\"");
#else
#error "TODO: write sub_805F638 to match asm/nonmatching/sub_805F638.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F690.s\"");
#else
#error "TODO: write sub_805F690 to match asm/nonmatching/sub_805F690.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F6BC.s\"");
#else
#error "TODO: write sub_805F6BC to match asm/nonmatching/sub_805F6BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F778.s\"");
#else
#error "TODO: write sub_805F778 to match asm/nonmatching/sub_805F778.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F910.s\"");
#else
#error "TODO: write sub_805F910 to match asm/nonmatching/sub_805F910.s, then delete this #error"
#endif

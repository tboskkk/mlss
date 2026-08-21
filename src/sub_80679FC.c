#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80679FC needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8067A4C;

void sub_80679FC(void *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0x84))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0x84))) = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x8C))) = 0x300;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8067A4C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067A24.s\"");
#else
#error "TODO: write sub_8067A24 to match asm/nonmatching/sub_8067A24.s, then delete this #error"
#endif

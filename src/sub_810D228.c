#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810D228 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D228.s\"");
#else
void sub_810D228(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_r0_15;
    s32 temp_r1_21;
    s32 temp_r2_25;
    void *temp_r3_12;

    temp_r3_12 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x278)));
    temp_r0_15 = arg0 << 8;
    (*(s32 *)((s8 *)(temp_r3_12) + (0x84))) = temp_r0_15;
    (*(s32 *)((s8 *)(temp_r3_12) + (0x10))) = temp_r0_15;
    temp_r1_21 = arg1 << 8;
    (*(s32 *)((s8 *)(temp_r3_12) + (0x88))) = temp_r1_21;
    (*(s32 *)((s8 *)(temp_r3_12) + (0x14))) = temp_r1_21;
    temp_r2_25 = arg2 << 8;
    (*(s32 *)((s8 *)((temp_r3_12 + 0x88)) + (4))) = temp_r2_25;
    (*(s32 *)((s8 *)(temp_r3_12) + (0x18))) = temp_r2_25;
}
#endif

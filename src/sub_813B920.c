#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B920 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B920.s\"");
#else
u8 *sub_803FBA4(s32, s32, s32, s32 *, s32 *, s32 *); /* extern */

s32 sub_813B920(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, u16 *arg6) {
    s8 sp8;
    s8 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 temp_r1_35;
    u8 *temp_r2_30;

    sp8 = 1;
    spC = (s8) ((u32) (0 - (u8) arg5) >> 0x1F);
    temp_r2_30 = sub_803FBA4((*(s32 *)((s8 *)(arg0) + (0x304))), arg1, arg2, &sp10, &sp14, &sp18);
    if ((arg6 != NULL) && ((temp_r1_35 = 0x78 & *temp_r2_30, (temp_r1_35 == 8)) || (temp_r1_35 == 0x30))) {
        *arg6 |= 1;
    }
    if (!(0x80 & *temp_r2_30)) {
        if (arg3 <= sp14) {
            if ((arg3 >= sp10) && ((s32) (arg3 + arg4) < sp14)) {
                goto block_8;
            }
            goto block_13;
        }
        if (((arg3 < sp18) || (sp14 < 0)) && ((arg3 < sp10) || (sp14 != -1))) {
            goto block_13;
        }
block_8:
        return 0;
    }
block_13:
    return 1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7CD0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7CD0.s\"");
#else
s32 sub_807F708(s32, s32, s32, u16, s32);       /* extern */

s32 sub_80F7CD0(s32 arg0, s32 arg1, void *arg2) {
    s32 temp_r1_11;
    s32 temp_r2_9;
    s32 var_r5_17;

    temp_r2_9 = (*(s32 *)((s8 *)(arg2) + (0)));
    temp_r1_11 = 1 & temp_r2_9;
    var_r5_17 = 0;
    if (temp_r2_9 > 1) {
        var_r5_17 = 0x7FFF;
    }
    sub_807F708(((s32) ((0 - temp_r1_11) | temp_r1_11) >> 0x1F) & 4, var_r5_17, (*(s32 *)((s8 *)(arg2) + (4))), (*(u16 *)((s8 *)(arg2) + (8))), (s32) (*(u16 *)((s8 *)(arg2) + (0xC))));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7D0C.s\"");
#else
s32 sub_807F754(s32, s32, s32);                 /* extern */

s32 sub_80F7D0C(s32 arg0, s32 arg1, void *arg2) {
    s32 temp_r1_10;
    s32 temp_r2_8;
    s32 var_r1_16;

    temp_r2_8 = (*(s32 *)((s8 *)(arg2) + (0)));
    temp_r1_10 = 1 & temp_r2_8;
    var_r1_16 = 0;
    if (temp_r2_8 > 1) {
        var_r1_16 = 0x7FFF;
    }
    sub_807F754(((s32) ((0 - temp_r1_10) | temp_r1_10) >> 0x1F) & 4, var_r1_16, (*(s32 *)((s8 *)(arg2) + (4))));
    return 1;
}
#endif

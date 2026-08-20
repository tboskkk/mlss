#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F1AA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1AA4.s\"");
#else
s32 sub_80F1AA4(void *arg1, void *arg3) {
    s32 var_r0_16;
    s32 var_r1_14;
    s8 *var_r3_13;

    if ((*(s32 *)((s8 *)(arg3) + (0))) != 0) {
        var_r3_13 = arg1 + 0x2B6;
        var_r1_14 = (*(s32 *)((s8 *)(arg3) + (4))) << 7;
        var_r0_16 = 0x7F;
    } else {
        var_r3_13 = arg1 + 0x2B6;
        var_r1_14 = ((*(s32 *)((s8 *)(arg3) + (4))) & 1) << 6;
        var_r0_16 = -0x41;
    }
    *var_r3_13 = (var_r0_16 & (*(u8 *)((s8 *)(arg1) + (0x2B6)))) | var_r1_14;
    return 1;
}
#endif

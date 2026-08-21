#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F1A3C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1A3C.s\"");
#else
s32 sub_80F1A3C(void *arg0, void *arg1, void *arg3) {
    s32 temp_r0_9;
    u8 temp_r2_22;
    void *temp_r3_21;
    void *var_r1_0;

    var_r1_0 = arg1;
    temp_r0_9 = (*(s32 *)((s8 *)(arg3) + (0)));
    if (temp_r0_9 != 0x3F) {
        var_r1_0 = (*(void **)((s8 *)(((temp_r0_9 * 4) + (*(s32 *)((s8 *)(arg0) + (0x14))))) + (0x28)));
    }
    temp_r3_21 = (*(void **)((s8 *)(var_r1_0) + (0x294)));
    temp_r2_22 = (*(u8 *)((s8 *)(temp_r3_21) + (0x11)));
    (*(u8 *)((s8 *)(temp_r3_21) + (0x11))) = (u8) ((-0x41 & temp_r2_22) | (((((u32) (temp_r2_22 << 0x19) >> 0x1F) ^ (*(s32 *)((s8 *)(arg3) + (4)))) & 1) << 6));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1A7C.s\"");
#else
s32 sub_80475A0(s32, s32);                      /* extern */

s32 sub_80F1A7C(void *arg0, s32 arg1, void *arg3) {
    s32 temp_r0_9;
    s32 var_r4_8;

    var_r4_8 = arg1;
    temp_r0_9 = (*(s32 *)((s8 *)(arg3) + (0)));
    if (temp_r0_9 != 0x3F) {
        var_r4_8 = (*(s32 *)((s8 *)(((temp_r0_9 * 4) + (*(s32 *)((s8 *)(arg0) + (0x14))))) + (0x28)));
    }
    sub_80475A0(var_r4_8, (*(s32 *)((s8 *)(arg3) + (4))));
    return 1;
}
#endif

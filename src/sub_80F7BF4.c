#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7BF4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7BF4.s\"");
#else
s32 sub_807FB64(s32);                           /* extern */

s32 sub_80F7BF4(void *arg0, s32 *arg2) {
    u32 temp_r0_33;
    u32 var_r4_8;
    void *temp_r4_23;
    void *var_r3_10;

    var_r4_8 = 0;
    var_r3_10 = *(*(void ***)((s8 *)(arg0) + (0x28)));
loop_1:
    if (((*(u8 *)((s8 *)(var_r3_10) + (0xF))) != 0) && ((*(u8 *)((s8 *)(var_r3_10) + (0xC))) == *arg2)) {
        temp_r4_23 = *(*(void ***)((s8 *)(arg0) + (0x28))) + ((u32) (var_r4_8 << 0x18) >> 0x14);
        sub_807FB64((*(s32 *)((s8 *)(temp_r4_23) + (0))));
        (*(s8 *)((s8 *)(temp_r4_23) + (0xF))) = 0;
    } else {
        temp_r0_33 = (var_r4_8 << 0x10) + 0x10000;
        var_r3_10 += 0x10;
        var_r4_8 = temp_r0_33 >> 0x10;
        if ((s32) ((s32) temp_r0_33 >> 0x10) <= 3) {
            goto loop_1;
        }
    }
    return 1;
}
#endif

s32 sub_807F6D0();                              /* extern */
s32 sub_807F6EC(s32, s32);                      /* extern */

s32 sub_80F7C3C(s32 arg0, s32 arg1, s32 *arg2) {
    s32 temp_r2_7;

    temp_r2_7 = *arg2;
    switch (temp_r2_7) {                            /* irregular */
    case 0:
        sub_807F6EC(0, -1);
        break;
    case 1:
        sub_807F6EC(1, -1);
        break;
    case 2:
        sub_807F6D0();
        break;
    }
    return 1;
}

s32 sub_80E3CF4();                                  /* extern */
s32 sub_8116620(s32);                               /* extern */

s32 sub_80F7C78(s32 arg0, void *arg1) {
    void *temp_r2_22;

    if (((sub_8116620((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x248)))) << 0x18) != 0) || ((sub_80E3CF4() << 0x18) != 0) || (temp_r2_22 = *(void **)0x03000FD8, ((0x20 & (*(u8 *)((s8 *)(temp_r2_22) + (0x2BF)))) != 0)) || ((*(s32 *)((s8 *)(temp_r2_22) + (0x2F0))) != 0)) {
        (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x14)));
        return 0;
    }
    return 1;
}

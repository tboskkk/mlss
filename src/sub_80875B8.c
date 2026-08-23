#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80875B8 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8086090;

void sub_80875B8(void *arg0) {
    if ((s32) (s16) (*(u16 *)((s8 *)(arg0) + (0xAC))) > 0) {
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xAC))) - 1);
        return;
    }
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8086090;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80875E0.s\"");
#else
s32 sub_8083A8C(s32, s32);                          /* extern */
s32 sub_8085ED0(s32, s32);                          /* extern */

s32 sub_80875E0(s32 arg0, s32 arg1) {
    s32 var_r0_23;
    s32 var_r4_15;
    s32 var_r7_9;

    var_r7_9 = 0;
loop_1:
    var_r7_9 = sub_8083A8C(arg0, var_r7_9);
    var_r4_15 = 0;
loop_2:
    var_r4_15 = sub_8083A8C(arg1, var_r4_15);
    var_r0_23 = sub_8085ED0(arg0, arg1);
    if (var_r0_23 == 0) {
        if (var_r4_15 < 0) {
            if (var_r7_9 < 0) {
                var_r0_23 = 0;
            } else {
                goto loop_1;
            }
        } else {
            goto loop_2;
        }
    }
    return var_r0_23;
}
#endif

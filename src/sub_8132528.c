#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8132528 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132528.s\"");
#else
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_8132570;

void sub_8132528(void *arg0) {
    s32 var_r0_10;
    s32 var_r2_18;
    void *temp_r2_9;

    temp_r2_9 = (*(void **)((s8 *)(arg0) + (0x2C)));
    var_r0_10 = (*(s32 *)((s8 *)(temp_r2_9) + (0x38)));
    if (var_r0_10 < 0) {
        var_r0_10 += 0xFF;
    }
    var_r2_18 = (*(s32 *)((s8 *)(temp_r2_9) + (0x3C)));
    if (var_r2_18 < 0) {
        var_r2_18 += 0xFF;
    }
    sub_808843C(arg0, (var_r0_10 >> 8) + 0x28, var_r2_18 >> 8, 0, 0x100);
    sub_80880C4(arg0, 0x280);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8132570;
}
#endif

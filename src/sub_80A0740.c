#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A0740 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0740.s\"");
#else
s32 sub_80DF024(s32, s32, s32, s32, s32);       /* extern */
s32 sub_810DD7C(void *, s32, s32);              /* extern */

void sub_80A0740(void *arg0, s32 arg1, s32 arg2) {
    s32 var_r1_11;
    s32 var_r2_17;
    s32 var_r3_23;

    var_r1_11 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r1_11 < 0) {
        var_r1_11 += 0xFF;
    }
    var_r2_17 = (*(s32 *)((s8 *)(arg0) + (0x14)));
    if (var_r2_17 < 0) {
        var_r2_17 += 0xFF;
    }
    var_r3_23 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r3_23 < 0) {
        var_r3_23 += 0xFF;
    }
    sub_80DF024(0x2ADB, var_r1_11 >> 8, var_r2_17 >> 8, var_r3_23 >> 8, arg1);
    sub_810DD7C(arg0, arg1, arg2);
}
#endif

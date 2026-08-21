#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA670 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA670.s\"");
#else
s32 sub_8199480(s32, s32);                          /* extern */

s32 sub_80EA670(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 var_r0_25;
    s32 var_r0_49;
    s32 var_r1_11;
    s32 var_r3_12;
    s32 var_r4_10;
    s32 var_r5_13;

    var_r4_10 = arg3 - arg1;
    var_r1_11 = arg4 - arg2;
    var_r3_12 = 0;
    var_r5_13 = 0;
    if (var_r4_10 < 0) {
        var_r3_12 = 1;
        var_r4_10 = 0 - var_r4_10;
    }
    if (var_r1_11 < 0) {
        var_r5_13 = 1;
        var_r1_11 = 0 - var_r1_11;
    }
    var_r0_25 = var_r4_10 | var_r1_11;
loop_6:
    if (var_r0_25 & 0xFFFF8000) {
        var_r4_10 = var_r4_10 >> 1;
        var_r1_11 = var_r1_11 >> 1;
        var_r0_25 = var_r4_10 | var_r1_11;
        goto loop_6;
    }
    if (var_r3_12 != 0) {
        var_r4_10 = 0 - var_r4_10;
    }
    if (var_r5_13 != 0) {
        var_r1_11 = 0 - var_r1_11;
    }
    var_r0_49 = sub_8199480(var_r4_10, var_r1_11) + 0x50;
    if (var_r0_49 < 0) {
        var_r0_49 += 0x1F;
    }
    return (var_r0_49 >> 5) & 7;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// __divsi3 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/__divsi3.s\"");
#else
s32 nullsub_1();                                /* extern */

s32 __divsi3(u32 arg0, u32 arg1) {
    s32 temp_r12_11;
    s32 var_r0_78;
    s32 var_r2_13;
    u32 temp_r4_50;
    u32 temp_r4_57;
    u32 temp_r4_64;
    u32 var_r0_0;
    u32 var_r1_0;
    u32 var_r3_12;

    var_r0_0 = arg0;
    var_r1_0 = arg1;
    if (var_r1_0 != 0) {
        temp_r12_11 = var_r0_0 ^ var_r1_0;
        var_r3_12 = 1;
        var_r2_13 = 0;
        if ((s32) (var_r1_0 - 0) < 0) {
            var_r1_0 = 0 - var_r1_0;
        }
        if ((s32) (var_r0_0 - 0) < 0) {
            var_r0_0 = 0 - var_r0_0;
        }
        if (var_r0_0 >= var_r1_0) {
loop_7:
            if ((var_r1_0 < 0x10000000U) && (var_r1_0 < var_r0_0)) {
                var_r1_0 *= 0x10;
                var_r3_12 *= 0x10;
                goto loop_7;
            }
loop_11:
            if ((var_r1_0 < 0x80000000U) && (var_r1_0 < var_r0_0)) {
                var_r1_0 *= 2;
                var_r3_12 *= 2;
                goto loop_11;
            }
loop_14:
            if (var_r0_0 >= var_r1_0) {
                var_r0_0 -= var_r1_0;
                var_r2_13 |= var_r3_12;
            }
            temp_r4_50 = var_r1_0 >> 1;
            if (var_r0_0 >= temp_r4_50) {
                var_r0_0 -= temp_r4_50;
                var_r2_13 |= var_r3_12 >> 1;
            }
            temp_r4_57 = var_r1_0 >> 2;
            if (var_r0_0 >= temp_r4_57) {
                var_r0_0 -= temp_r4_57;
                var_r2_13 |= var_r3_12 >> 2;
            }
            temp_r4_64 = var_r1_0 >> 3;
            if (var_r0_0 >= temp_r4_64) {
                var_r0_0 -= temp_r4_64;
                var_r2_13 |= var_r3_12 >> 3;
            }
            if (var_r0_0 != 0) {
                var_r3_12 = var_r3_12 >> 4;
                if (var_r3_12 != 0) {
                    var_r1_0 = var_r1_0 >> 4;
                    goto loop_14;
                }
            }
        }
        var_r0_78 = var_r2_13;
        if ((s32) (temp_r12_11 - 0) < 0) {
            var_r0_78 = 0 - var_r0_78;
        }
        return var_r0_78;
    }
    nullsub_1();
    return 0;
}
#endif

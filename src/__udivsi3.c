#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// __udivsi3 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/__udivsi3.s\"");
#else
s32 nullsub_1();                                /* extern */

s32 __udivsi3(u32 arg0, u32 arg1) {
    s32 var_r2_9;
    u32 temp_r4_39;
    u32 temp_r4_46;
    u32 temp_r4_53;
    u32 var_r0_0;
    u32 var_r1_0;
    u32 var_r3_8;

    var_r0_0 = arg0;
    var_r1_0 = arg1;
    if (var_r1_0 != 0) {
        var_r3_8 = 1;
        var_r2_9 = 0;
        if (var_r0_0 >= var_r1_0) {
loop_3:
            if ((var_r1_0 < 0x10000000U) && (var_r1_0 < var_r0_0)) {
                var_r1_0 *= 0x10;
                var_r3_8 *= 0x10;
                goto loop_3;
            }
loop_7:
            if ((var_r1_0 < 0x80000000U) && (var_r1_0 < var_r0_0)) {
                var_r1_0 *= 2;
                var_r3_8 *= 2;
                goto loop_7;
            }
loop_10:
            if (var_r0_0 >= var_r1_0) {
                var_r0_0 -= var_r1_0;
                var_r2_9 |= var_r3_8;
            }
            temp_r4_39 = var_r1_0 >> 1;
            if (var_r0_0 >= temp_r4_39) {
                var_r0_0 -= temp_r4_39;
                var_r2_9 |= var_r3_8 >> 1;
            }
            temp_r4_46 = var_r1_0 >> 2;
            if (var_r0_0 >= temp_r4_46) {
                var_r0_0 -= temp_r4_46;
                var_r2_9 |= var_r3_8 >> 2;
            }
            temp_r4_53 = var_r1_0 >> 3;
            if (var_r0_0 >= temp_r4_53) {
                var_r0_0 -= temp_r4_53;
                var_r2_9 |= var_r3_8 >> 3;
            }
            if (var_r0_0 != 0) {
                var_r3_8 = var_r3_8 >> 4;
                if (var_r3_8 != 0) {
                    var_r1_0 = var_r1_0 >> 4;
                    goto loop_10;
                }
            }
        }
        return var_r2_9;
    }
    nullsub_1();
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/__umodsi3.s\"");
#else
s32 nullsub_1();                                /* extern */

u32 __umodsi3(u32 arg0, u32 arg1) {
    s32 temp_r2_80;
    s32 var_r2_35;
    u32 temp_r12_70;
    u32 temp_r4_40;
    u32 temp_r4_50;
    u32 temp_r4_60;
    u32 var_r0_0;
    u32 var_r1_0;
    u32 var_r3_8;

    var_r0_0 = arg0;
    var_r1_0 = arg1;
    if (var_r1_0 != 0) {
        var_r3_8 = 1;
        if (var_r0_0 < var_r1_0) {
            return var_r0_0;
        }
loop_4:
        if ((var_r1_0 < 0x10000000U) && (var_r1_0 < var_r0_0)) {
            var_r1_0 *= 0x10;
            var_r3_8 *= 0x10;
            goto loop_4;
        }
loop_8:
        if ((var_r1_0 < 0x80000000U) && (var_r1_0 < var_r0_0)) {
            var_r1_0 *= 2;
            var_r3_8 *= 2;
            goto loop_8;
        }
loop_11:
        var_r2_35 = 0;
        if (var_r0_0 >= var_r1_0) {
            var_r0_0 -= var_r1_0;
        }
        temp_r4_40 = var_r1_0 >> 1;
        if (var_r0_0 >= temp_r4_40) {
            var_r0_0 -= temp_r4_40;
            var_r2_35 = ROTATE_RIGHT(var_r3_8, 1);
        }
        temp_r4_50 = var_r1_0 >> 2;
        if (var_r0_0 >= temp_r4_50) {
            var_r0_0 -= temp_r4_50;
            var_r2_35 |= ROTATE_RIGHT(var_r3_8, 2);
        }
        temp_r4_60 = var_r1_0 >> 3;
        if (var_r0_0 >= temp_r4_60) {
            var_r0_0 -= temp_r4_60;
            var_r2_35 |= ROTATE_RIGHT(var_r3_8, 3);
        }
        temp_r12_70 = var_r3_8;
        if (var_r0_0 != 0) {
            var_r3_8 = var_r3_8 >> 4;
            if (var_r3_8 != 0) {
                var_r1_0 = var_r1_0 >> 4;
                goto loop_11;
            }
        }
        temp_r2_80 = var_r2_35 & 0xE0000000;
        if (temp_r2_80 == 0) {
            return var_r0_0;
        }
        if (temp_r2_80 & ROTATE_RIGHT(temp_r12_70, 3)) {
            var_r0_0 += var_r1_0 >> 3;
        }
        if (temp_r2_80 & ROTATE_RIGHT(temp_r12_70, 2)) {
            var_r0_0 += var_r1_0 >> 2;
        }
        if (temp_r2_80 & ROTATE_RIGHT(temp_r12_70, 1)) {
            var_r0_0 += var_r1_0 >> 1;
        }
        return var_r0_0;
    }
    nullsub_1();
    return 0U;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DAD4C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DAE94.s\"");
#else
#error "TODO: write sub_81DAE94 to match asm/nonmatching/sub_81DAE94.s, then delete this #error"
#endif

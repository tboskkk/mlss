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
void sub_81DAE94(void *arg0, void *arg1) {
    u32 sp0;
    s32 sp4;
    s32 temp_r0_12;
    s32 temp_r1_81;
    u32 temp_r1_10;
    u32 temp_r3_20;
    u32 var_r4_15;
    u32 var_r5_17;

    temp_r1_10 = (*(u32 *)((s8 *)(arg0) + (4)));
    sp0 = temp_r1_10;
    temp_r0_12 = (*(s32 *)((s8 *)(arg0) + (0)));
    sp4 = temp_r0_12;
    var_r4_15 = temp_r1_10;
    var_r5_17 = (u32) (temp_r0_12 << 0xC) >> 0xC;
    temp_r3_20 = (u32) ((*(u16 *)((s8 *)(&sp0) + (6))) << 0x11) >> 0x15;
    (*(u32 *)((s8 *)(arg1) + (4))) = (u32) ((u8) (*(u8 *)((s8 *)(&sp0) + (7))) >> 7);
    if (temp_r3_20 == 0) {
        if ((temp_r1_10 | var_r5_17) == 0) {
            (*(s32 *)((s8 *)(arg1) + (0))) = 2;
            return;
        }
        (*(s32 *)((s8 *)(arg1) + (8))) = 0xFFFFFC02;
        var_r5_17 = (var_r4_15 >> 0x18) | (var_r5_17 << 8);
        var_r4_15 <<= 8;
        (*(s32 *)((s8 *)(arg1) + (0))) = 3;
        if (var_r5_17 <= 0x0FFFFFFFU) {
            do {
                var_r5_17 = (var_r4_15 >> 0x1F) | (var_r5_17 * 2);
                var_r4_15 *= 2;
                (*(s32 *)((s8 *)(arg1) + (8))) = (s32) ((*(s32 *)((s8 *)(arg1) + (8))) - 1);
            } while (var_r5_17 <= 0x0FFFFFFFU);
        }
        goto block_13;
    }
    if (temp_r3_20 == 0x7FF) {
        if ((temp_r1_10 | var_r5_17) == 0) {
            (*(s32 *)((s8 *)(arg1) + (0))) = 4;
            return;
        }
        temp_r1_81 = var_r5_17 & 0x80000;
        if (temp_r1_81 != 0) {
            (*(s32 *)((s8 *)(arg1) + (0))) = 1;
        } else {
            (*(s32 *)((s8 *)(arg1) + (0))) = temp_r1_81;
        }
block_13:
        (*(u32 *)((s8 *)(arg1) + (0xC))) = var_r4_15;
        (*(u32 *)((s8 *)(arg1) + (0x10))) = var_r5_17;
        return;
    }
    (*(s32 *)((s8 *)(arg1) + (8))) = (s32) (temp_r3_20 + 0xFFFFFC01);
    (*(s32 *)((s8 *)(arg1) + (0))) = 3;
    (*(u32 *)((s8 *)(arg1) + (0xC))) = (u32) (var_r4_15 << 8);
    (*(u32 *)((s8 *)(arg1) + (0x10))) = (u32) ((var_r4_15 >> 0x18) | (var_r5_17 << 8) | 0x10000000);
}
#endif

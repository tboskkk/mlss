#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8025F28 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025F28.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80261C0.s\"");
#else
s32 sub_80261C0(void *arg0, void *arg1) {
    u32 sp0;
    s32 sp4;
    s16 temp_r0_122;
    s16 temp_r1_102;
    s16 temp_r1_95;
    s32 temp_r0_116;
    s32 temp_r2_83;
    s32 temp_r2_90;
    s32 temp_r3_87;
    s32 temp_r3_92;
    s32 temp_r4_91;
    s32 temp_r5_89;
    s32 var_r0_24;
    s32 var_r0_33;
    s32 var_r0_41;
    s32 var_r6_49;
    u32 temp_r2_39;
    u8 temp_r1_50;
    u8 temp_r1_60;
    void *var_r7_22;

    if ((*(u8 *)((s8 *)(arg0) + (0x1F4))) != 0) {
        var_r7_22 = arg0 + 0x134;
        var_r0_24 = (*(s32 *)((s8 *)(arg1) + (0xC)));
        if (var_r0_24 < 0) {
            var_r0_24 += 0xFF;
        }
        sp0 = (u32) (var_r0_24 << 8) >> 0x10;
        var_r0_33 = (*(s32 *)((s8 *)(arg1) + (0x10)));
        if (var_r0_33 < 0) {
            var_r0_33 += 0xFF;
        }
        temp_r2_39 = (u32) (var_r0_33 << 8) >> 0x10;
        var_r0_41 = (*(s32 *)((s8 *)(arg1) + (0x14)));
        if (var_r0_41 < 0) {
            var_r0_41 += 0x7FF;
        }
        var_r6_49 = 0;
        temp_r1_50 = (*(u8 *)((s8 *)(arg0) + (0x1F4)));
        if ((s32) temp_r1_50 > 0) {
loop_9:
            temp_r1_60 = (*(u8 *)((s8 *)(var_r7_22) + (0)));
            if (!(2 & temp_r1_60) && ((*(s32 *)((s8 *)(arg1) + (0x18))) == 0) && ((s16) ((u32) (var_r0_41 << 5) >> 0x10) == (*(u8 *)((s8 *)(var_r7_22) + (3)))) && (((*(u8 *)((s8 *)(arg1) + (0x54))) == 1) || (1 & temp_r1_60))) {
                temp_r2_83 = (*(u8 *)((s8 *)(var_r7_22) + (1))) * 0x10;
                temp_r3_87 = (*(u8 *)((s8 *)(var_r7_22) + (2))) * 0x10;
                temp_r5_89 = temp_r3_87 + 0xF;
                temp_r2_90 = temp_r2_83 + 4;
                temp_r4_91 = (temp_r2_83 + 0xF) - 4;
                temp_r3_92 = temp_r3_87 + 7;
                temp_r1_95 = (s16) sp0;
                sp4 = sp0 << 0x10;
                if (((s32) temp_r1_95 >= temp_r2_90) && ((s32) temp_r1_95 <= temp_r4_91)) {
                    temp_r1_102 = (s16) temp_r2_39;
                    if (((s32) temp_r1_102 >= temp_r3_92) && ((s32) temp_r1_102 <= temp_r5_89)) {
                        return var_r6_49;
                    }
                }
                temp_r0_116 = sp4 >> 0x10;
                if ((temp_r0_116 >= (s32) (temp_r2_90 - 8)) && (temp_r0_116 <= (s32) (temp_r4_91 + 8))) {
                    temp_r0_122 = (s16) temp_r2_39;
                    if (((s32) temp_r0_122 >= (s32) (temp_r3_92 - 8)) && ((s32) temp_r0_122 <= (s32) (temp_r5_89 + 8))) {
                        return var_r6_49 | 0x80;
                    }
                }
                goto block_24;
            }
block_24:
            var_r7_22 += 0xC;
            var_r6_49 += 1;
            if (var_r6_49 >= (s32) temp_r1_50) {
                goto block_25;
            }
            goto loop_9;
        }
        goto block_25;
    }
block_25:
    return -1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029A0C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029A0C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802A4E8.s\"");
#else
void sub_802A4E8(void *arg0) {
    s32 temp_r1_30;
    s32 temp_r4_23;
    s32 var_r1_71;
    s8 *var_r2_53;
    s8 var_r0_59;
    u32 temp_r3_13;
    u8 *var_r3_69;
    u8 temp_r6_21;
    void *temp_r2_11;
    void *temp_r5_18;

    temp_r2_11 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r3_13 = (u8) (*(u8 *)((s8 *)(temp_r2_11) + (2))) >> 5;
    temp_r5_18 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r6_21 = (*(u8 *)((s8 *)(temp_r5_18) + (0x353)));
    temp_r4_23 = 0x30 & temp_r6_21;
    if (temp_r4_23 != 0) {
        temp_r1_30 = 0xC & (*(u8 *)((s8 *)(temp_r5_18) + (0x26)));
        if (temp_r1_30 == 0xC) {
            if (temp_r4_23 == 0x10) {
                if ((temp_r1_30 & (*(u8 *)((s8 *)(temp_r2_11) + (0x26)))) == 0xC) {
                    if ((*(s32 *)((s8 *)(temp_r5_18) + (0x25C))) == -1) {
                        if ((temp_r3_13 != 6) && (temp_r3_13 != 2)) {
                            var_r2_53 = temp_r2_11 + 0x353;
                            var_r0_59 = (-0x31 & (*(u8 *)((s8 *)(temp_r2_11) + (0x353)))) | 0x10;
                        } else {
                            goto block_24;
                        }
                        goto block_25;
                    }
                    if ((temp_r3_13 == 6) || (temp_r3_13 == 2)) {
                        var_r3_69 = temp_r2_11 + 0x353;
                        var_r1_71 = 0x30 & temp_r6_21;
                    } else {
                        goto block_22;
                    }
                    goto block_23;
                }
                goto block_24;
            }
            if ((temp_r1_30 & (*(u8 *)((s8 *)(temp_r2_11) + (0x26)))) == 0xC) {
                if ((temp_r3_13 == 6) || (temp_r3_13 == 2)) {
                    var_r2_53 = temp_r2_11 + 0x353;
                    var_r0_59 = (-0x31 & (*(u8 *)((s8 *)(temp_r2_11) + (0x353)))) | 0x10;
                } else {
                    var_r2_53 = temp_r2_11 + 0x353;
                    var_r0_59 = (-0x31 & (*(u8 *)((s8 *)(temp_r2_11) + (0x353)))) | 0x20;
                }
            } else {
                var_r2_53 = temp_r2_11 + 0x353;
                var_r0_59 = (-0x31 & (*(u8 *)((s8 *)(temp_r2_11) + (0x353)))) | 0x10;
            }
            goto block_25;
        }
        var_r3_69 = temp_r2_11 + 0x353;
        var_r1_71 = 0x30 & temp_r6_21;
        goto block_23;
    }
    if ((0xC & (*(u8 *)((s8 *)(temp_r2_11) + (0x26)))) == 0xC) {
        if ((temp_r3_13 == 6) || (temp_r3_13 == 2)) {
            var_r3_69 = temp_r2_11 + 0x353;
            var_r1_71 = 0x30 & temp_r6_21;
        } else {
block_22:
            var_r3_69 = temp_r2_11 + 0x353;
            var_r1_71 = ((((u32) (temp_r6_21 << 0x1A) >> 0x1E) + 1) & 3) * 0x10;
        }
block_23:
        *var_r3_69 = (-0x31 & *var_r3_69) | var_r1_71;
        return;
    }
block_24:
    var_r2_53 = temp_r2_11 + 0x353;
    var_r0_59 = -0x31 & (*(u8 *)((s8 *)(temp_r2_11) + (0x353)));
block_25:
    *var_r2_53 = var_r0_59;
}
#endif

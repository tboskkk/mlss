#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80197C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80197C4.s\"");
#else
s32 sub_80197C4(s32 arg0) {
    s32 var_r1_9;
    s32 var_r2_8;

    var_r2_8 = 0;
    var_r1_9 = 1;
    do {
        var_r2_8 += 1;
        var_r1_9 *= 0xA;
    } while (var_r1_9 <= arg0);
    return var_r2_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80197E0.s\"");
#else
void sub_80197E0(void) {
    *(s8 *)0x03000C28 = 0;
    *(s32 *)0x03000C6C = *(s32 *)0x080000F4;
    *(s32 *)0x03000C78 = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019808.s\"");
#else
s32 sub_8019808(void *arg0) {
    s32 temp_r2_54;
    s32 temp_r3_26;
    s32 var_r0_55;
    s32 var_r5_18;
    u8 var_r2_17;
    void *temp_r0_22;
    void *temp_r0_68;

    if (*(s32 *)0x03000C78 == 0x0800063C) {
        if ((u32) (*(u32 *)((s8 *)(arg0) + (0))) <= 1U) {
            var_r2_17 = *(u8 *)0x03000D08;
            var_r5_18 = 0;
            temp_r0_22 = *(0x03000C88 + (var_r2_17 * 4));
            if (temp_r0_22 != NULL) {
                temp_r3_26 = (*(s32 *)((s8 *)(arg0) + (8)));
                if ((*(s32 *)((s8 *)(temp_r0_22) + (8))) != temp_r3_26) {
loop_4:
                    if (*(0x03000C88 + (var_r2_17 * 4)) == 0) {
                        goto block_5;
                    }
                    temp_r2_54 = var_r2_17 + 1;
                    var_r0_55 = temp_r2_54;
                    if (temp_r2_54 < 0) {
                        var_r0_55 += 0x1F;
                    }
                    var_r2_17 = temp_r2_54 - ((var_r0_55 >> 5) << 5);
                    var_r5_18 += 1;
                    if (var_r5_18 <= 0x1F) {
                        temp_r0_68 = *(0x03000C88 + (var_r2_17 * 4));
                        if (temp_r0_68 != NULL) {
                            if ((*(s32 *)((s8 *)(temp_r0_68) + (8))) == temp_r3_26) {
                                goto block_13;
                            }
                            goto loop_4;
                        }
                        goto block_5;
                    }
                    goto block_13;
                }
                goto block_13;
            }
block_5:
            *(0x03000C88 + (var_r2_17 * 4)) = arg0;
            (*(u32 *)((s8 *)(arg0) + (0))) = 2U;
            *(u8 *)0x03000C80 += 1;
            return 1;
        }
        goto block_13;
    }
    *(s32 (**)(s32, s32))0x03000C84((*(s32 *)((s8 *)(arg0) + (4))), (*(s32 *)((s8 *)(arg0) + (8))));
    (*(u32 *)((s8 *)(arg0) + (0))) = 0U;
block_13:
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80198B0.s\"");
#else
s32 sub_80198B0(u8 *arg0) {
    s32 temp_r0_58;
    s32 temp_r0_62;
    s32 temp_r1_19;
    s32 temp_r2_65;
    s32 var_r12_15;
    s32 var_r2_11;
    u32 temp_r1_9;
    u32 var_r4_16;
    u8 *var_r3_7;
    u8 temp_r2_8;

    var_r3_7 = arg0;
    temp_r2_8 = *var_r3_7;
    temp_r1_9 = temp_r2_8 >> 6;
    var_r2_11 = temp_r2_8 & 0x3F;
    if (temp_r1_9 != 0) {
        var_r12_15 = 6;
        var_r4_16 = temp_r1_9;
        temp_r1_19 = (0 - var_r4_16) & 3;
        if (temp_r1_19 != 0) {
            if (temp_r1_19 < 3) {
                if (temp_r1_19 < 2) {
                    var_r3_7 += 1;
                    var_r2_11 += *var_r3_7 << 6;
                    var_r12_15 = 0xE;
                    var_r4_16 -= 1;
                }
                var_r3_7 += 1;
                var_r2_11 += *var_r3_7 << var_r12_15;
                var_r12_15 += 8;
                var_r4_16 -= 1;
            }
            var_r3_7 += 1;
            var_r2_11 += *var_r3_7 << var_r12_15;
            var_r12_15 += 8;
            var_r4_16 -= 1;
            if (var_r4_16 != 0) {
                goto loop_7;
            }
        } else {
            do {
loop_7:
                temp_r0_58 = var_r12_15 + 8;
                temp_r0_62 = temp_r0_58 + 8;
                temp_r2_65 = var_r2_11 + ((*(u8 *)((s8 *)(var_r3_7) + (1))) << var_r12_15) + ((*(u8 *)((s8 *)(var_r3_7) + (2))) << temp_r0_58) + ((*(u8 *)((s8 *)(var_r3_7) + (3))) << temp_r0_62);
                var_r3_7 += 4;
                var_r2_11 = temp_r2_65 + (*var_r3_7 << (temp_r0_62 + 8));
                var_r12_15 += 0x20;
                var_r4_16 -= 4;
            } while (var_r4_16 != 0);
        }
    }
    return var_r2_11 + 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019940.s\"");
#else
s32 CpuSet(s32, s32, s32);                      /* extern */

void sub_8019940(void) {
    s32 temp_r0_14;
    s32 var_r4_9;

    var_r4_9 = 0x108;
    temp_r0_14 = alloc_zero_8018DB4(0x108, 0, 0x081DD7D0, 0);
    *(s32 *)0x03000C84 = temp_r0_14;
    if (0x108 < 0) {
        var_r4_9 = 0x10B;
    }
    CpuSet(0x08000534, temp_r0_14, ((u32) (var_r4_9 << 9) >> 0xB) | 0x04000000);
    *(s32 *)0x03000C78 = 0x0800063C;
    *(s8 *)0x03000D08 = 0;
    *(s8 *)0x03000C80 = 0;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8018818 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018818.s\"");
#else
void sub_8018920(s32, s32);                      /* extern */

void sub_8018818(void) {
    s32 sp0;
    s32 var_r6_36;
    u16 temp_r1_18;
    u32 temp_r1_19;
    u32 temp_r3_40;
    u8 temp_r3_51;
    u8 var_r1_34;
    u8 var_r5_47;
    u8 var_r9_49;

    temp_r1_18 = ((u32) (*(u16 *)0x030003C4 << 0x16) >> 0x16) & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x28)));
    temp_r1_19 = temp_r1_18 << 0x10;
    (*(u8 *)((s8 *)(&sp0) + (0))) = (u8) ((temp_r1_19 >> 0x16) & 1);
    (*(u8 *)((s8 *)(&sp0) + (1))) = (u8) ((temp_r1_19 >> 0x14) & 1);
    (*(u8 *)((s8 *)(&sp0) + (2))) = (u8) ((temp_r1_19 >> 0x17) & 1);
    var_r1_34 = (temp_r1_19 >> 0x15) & 1;
    (*(u8 *)((s8 *)(&sp0) + (3))) = var_r1_34;
    var_r6_36 = 0;
    temp_r3_40 = (*(u8 *)((s8 *)((void *)0x0300034C) + (0x79))) << 0x1C;
    if ((s32) (temp_r3_40 >> 0x1E) > 0) {
        var_r5_47 = (*(u8 *)((s8 *)(&sp0) + (2)));
        var_r9_49 = (*(u8 *)((s8 *)(&sp0) + (1)));
        do {
            temp_r3_51 = (*(u8 *)((s8 *)(&sp0) + (0)));
            (*(u8 *)((s8 *)(&sp0) + (0))) = var_r1_34;
            var_r1_34 = var_r5_47;
            var_r5_47 = var_r9_49;
            var_r9_49 = temp_r3_51;
            var_r6_36 += 1;
        } while (var_r6_36 < (s32) (temp_r3_40 >> 0x1E));
        (*(u8 *)((s8 *)(&sp0) + (1))) = temp_r3_51;
        (*(u8 *)((s8 *)(&sp0) + (2))) = var_r5_47;
        (*(u8 *)((s8 *)(&sp0) + (3))) = var_r1_34;
    }
    if (0x10 & (*(u8 *)((s8 *)((void *)0x0300034C) + (0x79)))) {
        (*(u8 *)((s8 *)(&sp0) + (0))) = (u8) (*(u8 *)((s8 *)(&sp0) + (2)));
        (*(u8 *)((s8 *)(&sp0) + (2))) = (u8) (*(u8 *)((s8 *)(&sp0) + (0)));
    }
    if (0x20 & (*(u8 *)((s8 *)((void *)0x0300034C) + (0x79)))) {
        (*(u8 *)((s8 *)(&sp0) + (1))) = (u8) (*(u8 *)((s8 *)(&sp0) + (3)));
        (*(u8 *)((s8 *)(&sp0) + (3))) = (u8) (*(u8 *)((s8 *)(&sp0) + (1)));
    }
    (*(u16 *)((s8 *)((void *)0x0300034C) + (0x3C))) = (u16) ((*(u16 *)((s8 *)((void *)0x0300034C) + (0x3C))) & ~(*(u16 *)((s8 *)((void *)0x0300034C) + (0x7C))));
    sub_8018920((u16) ((temp_r1_18 & 0xFF0F) | (((*(u8 *)((s8 *)(&sp0) + (0))) << 6) | ((*(u8 *)((s8 *)(&sp0) + (1))) * 0x10) | ((*(u8 *)((s8 *)(&sp0) + (2))) << 7) | ((*(u8 *)((s8 *)(&sp0) + (3))) << 5)) | (*(u16 *)((s8 *)((void *)0x0300034C) + (0x7A))) | (*(u16 *)((s8 *)((void *)0x0300034C) + (0x7C)))), 1);
    (*(u16 *)((s8 *)((void *)0x0300034C) + (0x7C))) = 0U;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018920.s\"");
#else
void sub_8018920(s32 arg0, s32 arg1) {
    s16 var_r4_20;
    s32 temp_r2_9;
    u16 temp_r1_14;
    u16 temp_r7_21;
    u32 temp_r5_13;
    u32 var_r12_22;
    u8 temp_r0_43;
    u8 temp_r0_69;
    u8 temp_r1_28;
    u8 temp_r1_56;
    void *temp_r2_11;
    void *var_r3_24;
    void *var_r6_25;

    temp_r2_9 = arg1 * 0x14;
    temp_r2_11 = temp_r2_9 + 0x03000374;
    temp_r5_13 = (u32) (arg0 << 0x16) >> 0x16;
    temp_r1_14 = *(0x03000374 + temp_r2_9);
    (*(s16 *)((s8 *)(temp_r2_11) + (2))) = (s16) (temp_r5_13 & ~temp_r1_14);
    (*(s16 *)((s8 *)(temp_r2_11) + (4))) = (s16) (temp_r1_14 & ~temp_r5_13);
    var_r4_20 = 0;
    temp_r7_21 = *(0x03000374 + temp_r2_9);
    var_r12_22 = 0;
    var_r3_24 = temp_r2_11 + 0xA;
    var_r6_25 = (void *)0x0839EC6C;
    do {
        temp_r1_28 = (*(u16 *)((s8 *)(var_r6_25) + (0))) & temp_r5_13;
        if (temp_r1_28 != 0) {
            if (!(temp_r7_21 & temp_r1_28)) {
                var_r4_20 |= temp_r1_28;
                (*(u8 *)((s8 *)(var_r3_24) + (0))) = (u8) (*(u8 *)((s8 *)(temp_r2_11) + (8)));
            } else {
                temp_r0_43 = (*(u8 *)((s8 *)(var_r3_24) + (0))) - 1;
                (*(u8 *)((s8 *)(var_r3_24) + (0))) = temp_r0_43;
                if ((temp_r0_43 << 0x18) == 0) {
                    var_r4_20 |= temp_r1_28;
                    (*(u8 *)((s8 *)(var_r3_24) + (0))) = (u8) (*(u8 *)((s8 *)(temp_r2_11) + (9)));
                }
            }
        } else {
            (*(u8 *)((s8 *)(var_r3_24) + (0))) = temp_r1_28;
        }
        temp_r1_56 = (*(u16 *)((s8 *)(var_r6_25) + (2))) & temp_r5_13;
        if (temp_r1_56 != 0) {
            if (!(temp_r7_21 & temp_r1_56)) {
                var_r4_20 |= temp_r1_56;
                (*(u8 *)((s8 *)(var_r3_24) + (1))) = (u8) (*(u8 *)((s8 *)(temp_r2_11) + (8)));
            } else {
                temp_r0_69 = (*(u8 *)((s8 *)(var_r3_24) + (1))) - 1;
                (*(u8 *)((s8 *)(var_r3_24) + (1))) = temp_r0_69;
                if ((temp_r0_69 << 0x18) == 0) {
                    var_r4_20 |= temp_r1_56;
                    (*(u8 *)((s8 *)(var_r3_24) + (1))) = (u8) (*(u8 *)((s8 *)(temp_r2_11) + (9)));
                }
            }
        } else {
            (*(u8 *)((s8 *)(var_r3_24) + (1))) = temp_r1_56;
        }
        var_r3_24 += 2;
        var_r6_25 += 4;
        var_r12_22 += 2;
    } while (var_r12_22 <= 7U);
    (*(s16 *)((s8 *)(temp_r2_11) + (6))) = var_r4_20;
    *(0x03000374 + temp_r2_9) = (u16) temp_r5_13;
}
#endif

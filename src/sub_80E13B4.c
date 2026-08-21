#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E13B4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E13B4.s\"");
#else
extern s32 sub_80E0BF8;

void sub_80E13B4(void *arg0) {
    s32 *var_r0_17;
    u16 *temp_r1_25;
    u8 temp_r1_10;
    u8 temp_r3_14;
    void *temp_r4_9;

    temp_r4_9 = *(void **)0x03000FD8;
    temp_r1_10 = (*(u8 *)((s8 *)(temp_r4_9) + (0xD)));
    temp_r3_14 = 2 & temp_r1_10;
    if (temp_r3_14 != 0) {
        var_r0_17 = NULL;
    } else {
        (*(u8 *)((s8 *)(temp_r4_9) + (0xD))) = (u8) (2 | temp_r1_10);
        temp_r1_25 = (*(u16 **)((s8 *)(arg0) + (0xC)));
        (*(s16 *)((s8 *)(arg0) + (0x12))) = (s16) temp_r3_14;
        (*(s16 *)((s8 *)(arg0) + (0x14))) = (s16) temp_r3_14;
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) *temp_r1_25;
        (*(u16 **)((s8 *)(arg0) + (0xC))) = (u16 *) (temp_r1_25 + 2);
        var_r0_17 = &sub_80E0BF8;
    }
    (*(s32 **)((s8 *)(arg0) + (4))) = var_r0_17;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E13F8.s\"");
#else
void sub_80E13F8(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_r2_28;
    s32 temp_r3_32;
    s32 temp_r4_27;
    s32 temp_r5_26;
    u8 temp_r0_23;
    u8 var_r1_29;
    void *temp_r0_105;
    void *temp_r0_115;
    void *temp_r0_95;
    void *temp_r3_9;
    void *temp_r6_17;
    void *var_r12_20;

    temp_r3_9 = *(void **)0x03000FD8;
    if ((*(s32 *)((s8 *)(temp_r3_9) + (0x260))) != 0) {
        temp_r6_17 = *(void **)0x03000FDC;
        var_r12_20 = temp_r6_17 + 0x52F0;
        temp_r0_23 = (*(u8 *)((s8 *)(temp_r3_9) + (0x270)));
        if (temp_r0_23 != 0) {
            temp_r5_26 = arg0 << 8;
            temp_r4_27 = arg1 << 8;
            temp_r2_28 = arg2 << 8;
            var_r1_29 = temp_r0_23;
            temp_r3_32 = (0 - var_r1_29) & 3;
            if (temp_r3_32 != 0) {
                if (temp_r3_32 < 3) {
                    if (temp_r3_32 < 2) {
                        (*(s32 *)((s8 *)(temp_r6_17) + (0x52F0))) = (s32) ((*(s32 *)((s8 *)(temp_r6_17) + (0x52F0))) + temp_r5_26);
                        (*(s32 *)((s8 *)(var_r12_20) + (4))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (4))) + temp_r4_27);
                        (*(s32 *)((s8 *)(var_r12_20) + (8))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (8))) + temp_r2_28);
                        var_r12_20 = temp_r6_17 + 0x52FC;
                        var_r1_29 -= 1;
                    }
                    (*(s32 *)((s8 *)(var_r12_20) + (0))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (0))) + temp_r5_26);
                    (*(s32 *)((s8 *)(var_r12_20) + (4))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (4))) + temp_r4_27);
                    (*(s32 *)((s8 *)(var_r12_20) + (8))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (8))) + temp_r2_28);
                    var_r12_20 += 0xC;
                    var_r1_29 -= 1;
                }
                (*(s32 *)((s8 *)(var_r12_20) + (0))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (0))) + temp_r5_26);
                (*(s32 *)((s8 *)(var_r12_20) + (4))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (4))) + temp_r4_27);
                (*(s32 *)((s8 *)(var_r12_20) + (8))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (8))) + temp_r2_28);
                var_r12_20 += 0xC;
                var_r1_29 -= 1;
                if (var_r1_29 != 0) {
                    goto loop_8;
                }
            } else {
                do {
loop_8:
                    (*(s32 *)((s8 *)(var_r12_20) + (0))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (0))) + temp_r5_26);
                    (*(s32 *)((s8 *)(var_r12_20) + (4))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (4))) + temp_r4_27);
                    (*(s32 *)((s8 *)(var_r12_20) + (8))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (8))) + temp_r2_28);
                    temp_r0_95 = var_r12_20 + 0xC;
                    (*(s32 *)((s8 *)(var_r12_20) + (0xC))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (0xC))) + temp_r5_26);
                    (*(s32 *)((s8 *)(temp_r0_95) + (4))) = (s32) ((*(s32 *)((s8 *)(temp_r0_95) + (4))) + temp_r4_27);
                    (*(s32 *)((s8 *)(temp_r0_95) + (8))) = (s32) ((*(s32 *)((s8 *)(temp_r0_95) + (8))) + temp_r2_28);
                    temp_r0_105 = temp_r0_95 + 0xC;
                    (*(s32 *)((s8 *)(var_r12_20) + (0x18))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (0x18))) + temp_r5_26);
                    (*(s32 *)((s8 *)(temp_r0_105) + (4))) = (s32) ((*(s32 *)((s8 *)(temp_r0_105) + (4))) + temp_r4_27);
                    (*(s32 *)((s8 *)(temp_r0_105) + (8))) = (s32) ((*(s32 *)((s8 *)(temp_r0_105) + (8))) + temp_r2_28);
                    temp_r0_115 = temp_r0_105 + 0xC;
                    (*(s32 *)((s8 *)(var_r12_20) + (0x24))) = (s32) ((*(s32 *)((s8 *)(var_r12_20) + (0x24))) + temp_r5_26);
                    (*(s32 *)((s8 *)(temp_r0_115) + (4))) = (s32) ((*(s32 *)((s8 *)(temp_r0_115) + (4))) + temp_r4_27);
                    (*(s32 *)((s8 *)(temp_r0_115) + (8))) = (s32) ((*(s32 *)((s8 *)(temp_r0_115) + (8))) + temp_r2_28);
                    var_r12_20 += 0x30;
                    var_r1_29 -= 4;
                } while (var_r1_29 != 0);
            }
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E1500.s\"");
#else
void sub_80E1500(s32 arg0) {
    s32 temp_r1_35;
    s8 temp_r1_23;
    s8 var_r4_32;
    void *temp_r0_112;
    void *temp_r0_125;
    void *temp_r0_138;
    void *temp_r3_9;
    void *temp_r5_19;
    void *var_r3_31;

    temp_r3_9 = *(void **)0x03000FD8;
    if ((*(s32 *)((s8 *)(temp_r3_9) + (0x260))) == 0) {
        return;
    }
    temp_r5_19 = *(void **)0x03000FDC;
    temp_r1_23 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    (*(s8 *)((s8 *)(temp_r3_9) + (0x270))) = temp_r1_23;
    if ((s32) temp_r1_23 > 0) {
        var_r3_31 = temp_r5_19 + 0x52F0;
        var_r4_32 = temp_r1_23;
        temp_r1_35 = (0 - var_r4_32) & 3;
        if (temp_r1_35 != 0) {
            if (temp_r1_35 < 3) {
                if (temp_r1_35 < 2) {
                    (*(s32 *)((s8 *)(temp_r5_19) + (0x52F0))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                    (*(s32 *)((s8 *)(var_r3_31) + (4))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                    (*(s32 *)((s8 *)(var_r3_31) + (8))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                    var_r3_31 = temp_r5_19 + 0x52FC;
                    var_r4_32 -= 1;
                }
                (*(s32 *)((s8 *)(var_r3_31) + (0))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                (*(s32 *)((s8 *)(var_r3_31) + (4))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                (*(s32 *)((s8 *)(var_r3_31) + (8))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                var_r3_31 += 0xC;
                var_r4_32 -= 1;
            }
            (*(s32 *)((s8 *)(var_r3_31) + (0))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
            (*(s32 *)((s8 *)(var_r3_31) + (4))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
            (*(s32 *)((s8 *)(var_r3_31) + (8))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
            var_r3_31 += 0xC;
            var_r4_32 -= 1;
            if (var_r4_32 != 0) {
                goto loop_9;
            }
        } else {
            do {
loop_9:
                (*(s32 *)((s8 *)(var_r3_31) + (0))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                (*(s32 *)((s8 *)(var_r3_31) + (4))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                (*(s32 *)((s8 *)(var_r3_31) + (8))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                temp_r0_112 = var_r3_31 + 0xC;
                (*(s32 *)((s8 *)(var_r3_31) + (0xC))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                (*(s32 *)((s8 *)(temp_r0_112) + (4))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                (*(s32 *)((s8 *)(temp_r0_112) + (8))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                temp_r0_125 = temp_r0_112 + 0xC;
                (*(s32 *)((s8 *)(var_r3_31) + (0x18))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                (*(s32 *)((s8 *)(temp_r0_125) + (4))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                (*(s32 *)((s8 *)(temp_r0_125) + (8))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                temp_r0_138 = temp_r0_125 + 0xC;
                (*(s32 *)((s8 *)(var_r3_31) + (0x24))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                (*(s32 *)((s8 *)(temp_r0_138) + (4))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                (*(s32 *)((s8 *)(temp_r0_138) + (8))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8);
                var_r3_31 += 0x30;
                var_r4_32 -= 4;
            } while (var_r4_32 != 0);
        }
    }
}
#endif

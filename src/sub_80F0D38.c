#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0D38 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0D38.s\"");
#else
s32 sub_80F0D38(void *arg0, void *arg2) {
    s32 temp_r0_52;
    s32 temp_r1_26;
    s32 temp_r2_9;
    u32 var_r0_19;
    u32 var_r0_36;
    u32 var_r1_33;
    u32 var_r2_16;

    temp_r2_9 = (*(s32 *)((s8 *)(arg2) + (4)));
    if (0x40 & temp_r2_9) {
        var_r2_16 = (u32) (temp_r2_9 & 0x3F) >> 2;
    } else {
        var_r0_19 = 0;
        if (temp_r2_9 > 1) {
            var_r0_19 = 3;
        }
        var_r2_16 = var_r0_19;
    }
    temp_r1_26 = (*(s32 *)((s8 *)(arg2) + (8)));
    if (0x40 & temp_r1_26) {
        var_r1_33 = (u32) (temp_r1_26 & 0x3F) >> 2;
    } else {
        var_r0_36 = 0;
        if (temp_r1_26 > 1) {
            var_r0_36 = 3;
        }
        var_r1_33 = var_r0_36;
    }
    temp_r0_52 = (*(s32 *)((s8 *)(arg2) + (0)));
    (*(s16 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (0xD4)))) + (0xC))) = (s16) (temp_r0_52 | ((var_r2_16 << 8) | ((var_r1_33 << 6) | 0xFFFFE000) | (temp_r0_52 * 8)));
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0DA0.s\"");
#else
s32 sub_8028AFC(s32, s32, s32, s32, s32, s32);  /* extern */

s32 sub_80F0DA0(void *arg0, void *arg1, void *arg2) {
    s32 temp_r0_21;
    s32 temp_r1_28;
    s32 var_r0_35;

    if ((*(s32 *)((s8 *)(arg2) + (0))) != 0) {
        (*(s32 *)((s8 *)(arg2) + (8))) = (s32) ((*(s32 *)((s8 *)(arg2) + (8))) * 0x10);
        (*(s32 *)((s8 *)(arg2) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg2) + (0xC))) * 0x10);
    }
    temp_r0_21 = (*(s32 *)((s8 *)(arg2) + (4)));
    if (((temp_r0_21 >> 1) & 3) == 1) {
        temp_r1_28 = (*(s32 *)((s8 *)(arg2) + (0x10)));
        if (0x40 & temp_r1_28) {
            var_r0_35 = (temp_r1_28 & 0xF) * 0x10;
        } else {
            var_r0_35 = temp_r1_28 << 8;
        }
        (*(s32 *)((s8 *)(arg2) + (0x10))) = var_r0_35;
    }
    sub_8028AFC((*(s32 *)((s8 *)(arg0) + (0x14))), (temp_r0_21 >> 1) & 3, 1 & temp_r0_21, (*(s32 *)((s8 *)(arg2) + (8))), (*(s32 *)((s8 *)(arg2) + (0xC))), M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */));
    (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (0x100 | (*(u16 *)((s8 *)(arg1) + (0xA0))));
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0E18.s\"");
#else
s32 sub_8027E90(s32, u16, s32, u8, s32, s32, s32, s32, s32, s32); /* extern */

s32 sub_80F0E18(void *arg0, void *arg2) {
    s8 sp18;
    s32 temp_r5_29;

    (*(s32 *)((s8 *)(arg2) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg2) + (0xC))) << 8);
    (*(s32 *)((s8 *)(arg2) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg2) + (0x10))) << 8);
    (*(s32 *)((s8 *)(arg2) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg2) + (0x14))) << 8);
    if ((*(s32 *)((s8 *)(arg2) + (0x1C))) == -1) {
        (*(s32 *)((s8 *)(arg2) + (0x1C))) = 0;
    }
    temp_r5_29 = (*(s32 *)((s8 *)(arg2) + (4)));
    sp18 = (temp_r5_29 >> 1) & 1;
    sub_8027E90((*(s32 *)((s8 *)(arg0) + (0x14))), (*(u16 *)((s8 *)(arg2) + (0))), temp_r5_29 & 1, (*(u8 *)((s8 *)(arg2) + (8))), (*(s32 *)((s8 *)(arg2) + (0xC))), (*(s32 *)((s8 *)(arg2) + (0x10))), (*(s32 *)((s8 *)(arg2) + (0x14))), 0, (*(s32 *)((s8 *)(arg2) + (0x1C))), M2C_ERROR(/* unknown instruction: ldsb $r4, ($mem_loc_fictive_) */));
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0E80.s\"");
#else
s32 sub_8027E90(s32, u16, s32, u8, s32, s32, s32, s32, s32, s32); /* extern */

s32 sub_80F0E80(void *arg0, void *arg2) {
    s8 sp18;
    s32 temp_r5_31;

    (*(s32 *)((s8 *)(arg2) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg2) + (0xC))) << 0xC);
    (*(s32 *)((s8 *)(arg2) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg2) + (0x10))) << 0xC);
    (*(s32 *)((s8 *)(arg2) + (0x14))) = (s32) ((s32) ((*(s32 *)((s8 *)(arg2) + (0x14))) << 0xB) / 5);
    if ((*(s32 *)((s8 *)(arg2) + (0x1C))) == -1) {
        (*(s32 *)((s8 *)(arg2) + (0x1C))) = 0;
    }
    temp_r5_31 = (*(s32 *)((s8 *)(arg2) + (4)));
    sp18 = (temp_r5_31 >> 1) & 1;
    sub_8027E90((*(s32 *)((s8 *)(arg0) + (0x14))), (*(u16 *)((s8 *)(arg2) + (0))), temp_r5_31 & 1, (*(u8 *)((s8 *)(arg2) + (8))), (*(s32 *)((s8 *)(arg2) + (0xC))), (*(s32 *)((s8 *)(arg2) + (0x10))), (*(s32 *)((s8 *)(arg2) + (0x14))), 0, (*(s32 *)((s8 *)(arg2) + (0x1C))), M2C_ERROR(/* unknown instruction: ldsb $r4, ($mem_loc_fictive_) */));
    return 0;
}
#endif

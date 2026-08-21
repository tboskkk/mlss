#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8138C8C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8138C8C.s\"");
#else
s32 sub_8046980(void *);                        /* extern */

s32 sub_8138C8C(s32 arg0, void *arg1) {
    s32 temp_r1_77;
    s32 var_r6_11;
    u16 temp_r0_151;
    u16 temp_r0_185;
    u16 temp_r1_132;
    u16 temp_r1_98;
    void *temp_r3_10;

    temp_r3_10 = arg1 + 0x58;
    var_r6_11 = 0;
    if (!(0x800 & (*(u16 *)((s8 *)(arg1) + (0xF8))))) {
        return 0;
    }
    if (((*(s32 *)((s8 *)(arg1) + (0xC))) == (*(s32 *)((s8 *)(arg1) + (0x2CC)))) && ((*(s32 *)((s8 *)(arg1) + (0x10))) == (*(s32 *)((s8 *)(arg1) + (0x2D0))))) {
        sub_8046980(arg1);
        (*(u16 *)((s8 *)(arg1) + (0xF8))) = (u16) (0x800 ^ (*(u16 *)((s8 *)(arg1) + (0xF8))));
        return 0;
    }
    (*(u8 *)((s8 *)(temp_r3_10) + (0x17E))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r3_10) + (0x17E))) & ~8 & ~0x10 & ~0x20);
    if ((0x78 & (*(u8 *)((s8 *)(arg1) + (0x24)))) && (((0x38 & (*(u8 *)((s8 *)(arg1) + (0x20E)))) != 0x18) || (temp_r1_77 = M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */), ((0xFE & temp_r1_77) != 0)) || !(8 & (*(u8 *)((s8 *)(((0x38C * temp_r1_77) + arg0)) + (0x37A)))))) {
        temp_r1_98 = 0x1E & (*(u8 *)((s8 *)(arg1) + (0x213)));
        if ((temp_r1_98 != 0) || ((*(u16 *)((s8 *)(arg1) + (0x244))) = temp_r1_98, (*(u16 *)((s8 *)(arg1) + (0x242))) = temp_r1_98, ((0x40 & (*(u8 *)((s8 *)(arg1) + (0x2B6)))) == 0))) {
            var_r6_11 = 1;
            goto block_12;
        }
        goto block_15;
    }
block_12:
    if (0x78 & (*(u8 *)((s8 *)(arg1) + (0x25)))) {
        temp_r1_132 = ((u32) ((*(u8 *)((s8 *)(arg1) + (0x213))) << 0x1B) >> 0x1C) & 0xC;
        if (temp_r1_132 == 0) {
            (*(u16 *)((s8 *)(arg1) + (0x244))) = temp_r1_132;
            (*(u16 *)((s8 *)(arg1) + (0x242))) = temp_r1_132;
            if (0x80 & (*(u8 *)((s8 *)(arg1) + (0x2B6)))) {
block_15:
                temp_r0_151 = (*(u16 *)((s8 *)(arg1) + (0x2DE)));
                if (temp_r0_151 != 0) {
                    (*(u16 *)((s8 *)(arg1) + (0x2DE))) = (u16) (temp_r0_151 - 1);
                }
                (*(s32 *)((s8 *)(arg1) + (0x25C))) = -1;
                (*(u8 *)((s8 *)(arg1) + (0x2B5))) = (u8) (-9 & (*(u8 *)((s8 *)(arg1) + (0x2B5))));
                return 0;
            }
        }
        var_r6_11 |= 1;
        goto block_19;
    }
block_19:
    if ((var_r6_11 != 0) && (temp_r0_185 = (*(u16 *)((s8 *)(arg1) + (0x2DE))), (temp_r0_185 != 0))) {
        (*(u16 *)((s8 *)(arg1) + (0x2DE))) = (u16) (temp_r0_185 - 1);
    } else {
        (*(u16 *)((s8 *)(arg1) + (0x242))) = (u16) (*(u16 *)((s8 *)(arg1) + (0x2D8)));
        (*(u16 *)((s8 *)(arg1) + (0x244))) = (u16) (*(u16 *)((s8 *)(arg1) + (0x2DA)));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8138E28.s\"");
#else
s32 sub_8138E28(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4) {
    void *sp0;
    s32 temp_r0_23;
    s32 temp_r0_30;
    s32 temp_r4_54;
    s32 temp_r5_60;
    s32 var_r0_18;
    s32 var_r0_25;
    s32 var_r0_32;
    s32 var_r0_49;
    s32 var_r0_55;
    s32 var_r0_61;
    u32 temp_r2_93;
    u32 temp_r3_84;
    void *temp_r2_17;

    sp0 = arg1;
    temp_r2_17 = (*(void **)((s8 *)(arg0) + (0x2C)));
    var_r0_18 = (*(s32 *)((s8 *)(temp_r2_17) + (0xC)));
    if (var_r0_18 < 0) {
        var_r0_18 += 0xFF;
    }
    temp_r0_23 = var_r0_18 >> 8;
    var_r0_25 = (*(s32 *)((s8 *)(temp_r2_17) + (0x10)));
    if (var_r0_25 < 0) {
        var_r0_25 += 0xFF;
    }
    temp_r0_30 = var_r0_25 >> 8;
    var_r0_32 = (*(s32 *)((s8 *)(temp_r2_17) + (0x14)));
    if (var_r0_32 < 0) {
        var_r0_32 += 0xFF;
    }
    var_r0_49 = arg2;
    if (arg2 < 0) {
        var_r0_49 += 0xFF;
    }
    temp_r4_54 = var_r0_49 >> 8;
    var_r0_55 = arg3;
    if (arg3 < 0) {
        var_r0_55 += 0xFF;
    }
    temp_r5_60 = var_r0_55 >> 8;
    var_r0_61 = arg4;
    if (arg4 < 0) {
        var_r0_61 += 0xFF;
    }
    if (((0x1C & (*(u8 *)((s8 *)(arg0) + (0x246)))) == 0xC) && (1 & (*(u8 *)((s8 *)(temp_r2_17) + (0x20C)))) && ((var_r0_32 >> 8) == (var_r0_61 >> 8))) {
        temp_r3_84 = (u32) ((u16) (*(u16 *)((s8 *)(temp_r2_17) + (0x278))) >> 8) >> 1;
        temp_r2_93 = (u16) (*(u16 *)((s8 *)(sp0) + (0x278))) >> 9;
        if (((s32) ((temp_r0_23 - temp_r3_84) - 2) <= (s32) (temp_r4_54 + temp_r2_93)) && ((s32) (temp_r0_23 + temp_r3_84 + 2) >= (s32) (temp_r4_54 - temp_r2_93)) && ((s32) ((temp_r0_30 - ((u16) (*(u16 *)((s8 *)(temp_r2_17) + (0x27C))) >> 8)) - 2) <= temp_r5_60) && ((s32) (temp_r0_30 + 2) >= (s32) (temp_r5_60 - (*(u16 *)((s8 *)(sp0) + (0x27C)))))) {
            return 1;
        }
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8138F1C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

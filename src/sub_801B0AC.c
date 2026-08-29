#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801B0AC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B0AC.s\"");
#else
void sub_801B0AC(s16 arg0) {
    *(s16 *)0x03000D3C = arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B0B8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B1C8.s\"");
#else
s32 sub_801B1C8(void *arg0, s32 *arg1, s32 *arg2, s32 arg3) {
    s32 *sp0;
    s32 *sp4;
    s32 sp8;
    s32 temp_r0_127;
    s32 temp_r0_79;
    s32 temp_r1_130;
    s32 temp_r2_28;
    s32 temp_r2_55;
    s32 var_r0_108;
    s32 var_r0_116;
    s32 var_r10_22;
    s32 var_r2_47;
    s32 var_r2_70;
    s32 var_r5_24;
    s32 var_r9_21;
    u16 temp_r0_25;

    sp0 = arg1;
    sp4 = arg2;
    if ((*(s32 *)((s8 *)(arg0) + (0))) == 0) {
        return 0;
    }
    var_r9_21 = 0;
    var_r10_22 = 0;
    var_r5_24 = -2;
    temp_r0_25 = (*(u16 *)((s8 *)(arg0) + (4)));
    temp_r2_28 = (*(s32 *)((s8 *)(arg0) + (0xC)));
    sp8 = (*(s32 *)((s8 *)(arg0) + (8)));
    if ((s32) (temp_r0_25 + 1) >= -2) {
        do {
            if (var_r5_24 < 0) {

            }
            if (var_r5_24 > (s32) (temp_r0_25 - 1)) {

            }
            var_r2_47 = temp_r2_28 - (var_r5_24 << 0x10);
            if (var_r2_47 < 0) {
                var_r2_47 = 0 - var_r2_47;
            }
            if (var_r2_47 <= 0xFFFF) {
                temp_r2_55 = var_r2_47 >> 8;
                var_r2_70 = (s32) ((((s32) (temp_r2_55 * (temp_r2_55 * 3) * temp_r2_55) >> 8) - (temp_r2_55 * 6 * temp_r2_55)) + 0x40000) / 6;
            } else if (var_r2_47 <= 0x1FFFF) {
                temp_r0_79 = (s32) (var_r2_47 + 0xFFFE0000) >> 8;
                var_r2_70 = (s32) (temp_r0_79 * ((0 - temp_r0_79) * temp_r0_79)) / 1536;
            } else {
                var_r2_70 = 0;
            }
            var_r9_21 += M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * var_r2_70;
            var_r10_22 += M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * var_r2_70;
            var_r5_24 += 1;
        } while (var_r5_24 <= (s32) (temp_r0_25 + 1));
    }
    var_r0_108 = var_r9_21;
    if (var_r0_108 < 0) {
        var_r0_108 += 0xFF;
    }
    *sp0 = var_r0_108 >> 8;
    var_r0_116 = var_r10_22;
    if (var_r0_116 < 0) {
        var_r0_116 += 0xFF;
    }
    *sp4 = var_r0_116 >> 8;
    temp_r0_127 = (temp_r0_25 * sp8) + temp_r2_28;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r0_127;
    temp_r1_130 = (*(u16 *)((s8 *)(arg0) + (4))) << 0x10;
    if (temp_r0_127 >= temp_r1_130) {
        (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r1_130;
        *sp0 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8;
        *sp4 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8;
        (*(s32 *)((s8 *)(arg0) + (0))) = 0;
        return 0;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B390.s\"");
#else
void sub_801B390(void *arg0, s32 arg1, s32 *arg2, s32 *arg3, s32 *arg4) {
    s32 *sp0;
    s32 *sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 temp_r0_101;
    s32 temp_r0_92;
    s32 temp_r1_21;
    s32 temp_r2_111;
    s32 temp_r2_27;
    s32 temp_r2_80;
    s32 temp_r3_65;
    s32 temp_r3_72;
    s32 temp_r4_76;
    s32 temp_r5_70;
    s32 temp_r6_68;
    s32 temp_r7_63;
    s32 var_r0_126;
    s32 var_r0_147;
    s32 var_r0_167;
    s32 var_r0_177;
    s32 var_r0_188;
    s32 var_r0_199;
    s32 var_r0_22;
    s32 var_r0_30;
    s32 var_r0_39;
    s32 var_r0_48;
    s32 var_r0_58;

    sp0 = arg2;
    sp4 = arg3;
    temp_r1_21 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    var_r0_22 = temp_r1_21;
    if (temp_r1_21 < 0) {
        var_r0_22 += 0x3F;
    }
    temp_r2_27 = var_r0_22 >> 6;
    var_r0_30 = (*(s32 *)((s8 *)(arg0) + (0xC))) * temp_r2_27;
    if (var_r0_30 < 0) {
        var_r0_30 += 0xFF;
    }
    sp8 = var_r0_30 >> 8;
    var_r0_39 = (*(s32 *)((s8 *)(arg0) + (0x10))) * temp_r2_27;
    if (var_r0_39 < 0) {
        var_r0_39 += 0xFF;
    }
    spC = var_r0_39 >> 8;
    var_r0_48 = (*(s32 *)((s8 *)(arg0) + (0x14))) * temp_r2_27;
    if (var_r0_48 < 0) {
        var_r0_48 += 0xFF;
    }
    sp10 = var_r0_48 >> 8;
    var_r0_58 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_58 < 0) {
        var_r0_58 += 0x3F;
    }
    temp_r7_63 = var_r0_58 >> 6;
    temp_r3_65 = 0 - sp8;
    temp_r6_68 = 0 - spC;
    temp_r5_70 = 0 - sp10;
    temp_r3_72 = (*(s32 *)((s8 *)(arg0) + (0)));
    temp_r4_76 = (*(s32 *)((s8 *)(arg0) + (8)));
    temp_r2_80 = (*(s32 *)((s8 *)(arg0) + (4)));
    sp14 = ((temp_r7_63 * temp_r3_72) + (temp_r6_68 * temp_r4_76)) - (temp_r5_70 * temp_r2_80);
    temp_r0_92 = ((temp_r7_63 * temp_r2_80) - (temp_r3_65 * temp_r4_76)) + (temp_r5_70 * temp_r3_72);
    temp_r0_101 = ((temp_r7_63 * temp_r4_76) + (temp_r3_65 * temp_r2_80)) - (temp_r6_68 * temp_r3_72);
    temp_r2_111 = ((sp8 * temp_r3_72) - (temp_r6_68 * temp_r2_80)) - (temp_r5_70 * temp_r4_76);
    var_r0_126 = ((temp_r2_111 * sp8) + (sp14 * temp_r7_63) + (temp_r0_92 * sp10)) - (temp_r0_101 * spC);
    if (var_r0_126 < 0) {
        var_r0_126 += 0xFF;
    }
    var_r0_147 = ((temp_r2_111 * spC) - (sp14 * sp10)) + (temp_r0_92 * temp_r7_63) + (temp_r0_101 * sp8);
    if (var_r0_147 < 0) {
        var_r0_147 += 0xFF;
    }
    var_r0_167 = (((temp_r2_111 * sp10) + (sp14 * spC)) - (temp_r0_92 * sp8)) + (temp_r0_101 * temp_r7_63);
    if (var_r0_167 < 0) {
        var_r0_167 += 0xFF;
    }
    var_r0_177 = (var_r0_126 >> 8) * (*(u16 *)((s8 *)(arg0) + (0x18)));
    if (var_r0_177 < 0) {
        var_r0_177 += 0xFFFF;
    }
    *sp0 = var_r0_177 >> 0x10;
    var_r0_188 = (*(u16 *)((s8 *)(arg0) + (0x1A))) * (var_r0_147 >> 8);
    if (var_r0_188 < 0) {
        var_r0_188 += 0xFFFF;
    }
    *sp4 = var_r0_188 >> 0x10;
    var_r0_199 = (*(u16 *)((s8 *)(arg0) + (0x1C))) * (var_r0_167 >> 8);
    if (var_r0_199 < 0) {
        var_r0_199 += 0xFFFF;
    }
    *arg4 = var_r0_199 >> 0x10;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B5A0.s\"");
#else
void sub_801B5A0(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    (*(s32 *)((s8 *)(arg0) + (0))) = arg1;
    (*(s32 *)((s8 *)(arg0) + (4))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (8))) = arg3;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = arg4;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = arg5;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = arg6;
    (*(s16 *)((s8 *)(arg0) + (0x18))) = (s16) arg7;
    (*(s16 *)((s8 *)(arg0) + (0x1A))) = (s16) arg8;
    (*(s16 *)((s8 *)(arg0) + (0x1C))) = (s16) arg9;
}
#endif

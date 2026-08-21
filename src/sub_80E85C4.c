#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E85C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E85C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E87E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8878.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8944.s\"");
#else
s32 sub_8199888(s32 *, s32);                    /* extern */

s32 sub_80E8944(s32 arg0, s32 **arg1, void *arg2, s32 arg3, s32 arg5) {
    u32 sp0;
    u32 sp4;
    u32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp34;
    s32 **sp38;
    void *sp3C;
    s32 sp40;
    s32 *temp_r1_214;
    s32 *var_r7_220;
    s32 temp_r0_208;
    s32 temp_r0_225;
    s32 temp_r2_234;
    s32 var_r5_135;
    u32 temp_r0_95;
    u32 temp_r8_104;
    u32 temp_r8_172;
    u32 var_r3_235;
    u32 var_r8_24;
    u32 var_r9_36;
    u8 temp_r0_55;
    u8 temp_r1_67;
    u8 temp_r2_129;
    u8 temp_r4_140;
    u8 temp_r4_229;
    u8 temp_r5_258;
    u8 temp_r6_255;
    u8 var_r4_52;

    sp34 = arg0;
    sp38 = arg1;
    sp3C = arg2;
    sp40 = arg3;
    if (arg2 == NULL) {
        return 0;
    }
    var_r8_24 = 0;
    sp0 = 0;
    sp8 = 0;
    sp4 = 0;
    var_r9_36 = (**sp38 & 0xF) * 4;
    (*(u8 *)((s8 *)(&sp34) + (0xD))) = 0x20U;
    spC = (s32) (*(u8 *)((s8 *)(&sp34) + (0xC)));
    sp10 = (s32) (*(u8 *)((s8 *)(&sp34) + (0xD)));
    (*(u8 *)((s8 *)(&sp34) + (0x12))) = (u8) ((*(u8 *)((s8 *)(&sp34) + (0x12))) | 0x20);
loop_3:
    var_r4_52 = (*(u8 *)((s8 *)(sp3C) + (0)));
loop_4:
    temp_r0_55 = (*(u8 *)((s8 *)(&sp34) + (0xC)));
    if (sp0 < (u32) temp_r0_55) {
        sp0 = (u32) temp_r0_55;
    }
    temp_r1_67 = 0x20 & (*(u8 *)((s8 *)(&sp34) + (0x12)));
    if (temp_r1_67 == 0) {
        (*(u8 *)((s8 *)(&sp34) + (0xC))) = temp_r1_67;
        (*(u8 *)((s8 *)(&sp34) + (0xD))) = (u8) (((s32) ((*(u8 *)((s8 *)(&sp34) + (0x10))) << 0x18) >> 0x1C) + var_r9_36 + (*(u8 *)((s8 *)(&sp34) + (0xD))));
        var_r9_36 = (**sp38 & 0xF) * 4;
        (*(u8 *)((s8 *)(&sp34) + (0x12))) = (u8) ((*(u8 *)((s8 *)(&sp34) + (0x12))) | 0x20);
    }
    temp_r0_95 = (*(u8 *)((s8 *)(&sp34) + (0xD))) + var_r9_36;
    if (var_r8_24 < temp_r0_95) {
        var_r8_24 = temp_r0_95;
    }
    switch (var_r4_52) {                            /* irregular */
    case 0x0:
        break;
    case 0xFF:
        temp_r2_129 = (*(u8 *)((s8 *)(sp3C) + (1)));
        if (!(0xE0 & temp_r2_129)) {
            var_r5_135 = 0x1F & temp_r2_129;
        } else {
            var_r5_135 = 0;
        }
        temp_r4_140 = (*(u8 *)((s8 *)(sp3C) + (2)));
        sp3C += 2;
        sub_8199888(&sp34, 1);
        if (var_r5_135 != 0x11) {
            goto block_45;
        }
        if (temp_r4_140 != 1) {
            goto block_45;
        }
        if (temp_r4_140 & arg5) {
            (*(u8 *)((s8 *)(&sp34) + (0xC))) = (u8) (*(u8 *)((s8 *)(&sp0) + (0xC)));
            (*(u8 *)((s8 *)(&sp34) + (0xD))) = (u8) (*(u8 *)((s8 *)(&sp0) + (0x10)));
            (*(u8 *)((s8 *)(&sp34) + (0x12))) = (u8) ((*(u8 *)((s8 *)(&sp34) + (0x12))) | 0x20);
            temp_r8_172 = var_r8_24 - 0x20;
            if (sp4 < sp0) {
                sp4 = sp0;
            }
            if (sp8 < temp_r8_172) {
                sp8 = temp_r8_172;
            }
            var_r8_24 = 0;
            sp0 = 0;
block_45:
            if (0 == 0) {

            } else if ((*(u8 *)((s8 *)(sp3C) + (0))) != 0) {

            } else {
                sp3C = NULL;
            }
            goto loop_3;
        }
        var_r4_52 = 0;
        goto loop_4;
    case 0x20:
        (*(u8 *)((s8 *)(&sp34) + (0xC))) = (u8) (((u32) ((u16) (*(u8 *)((s8 *)(&sp34) + (0x12))) << 0x16) >> 0x1C) + (*(u8 *)((s8 *)(&sp34) + (0xC))));
block_44:
        sp3C += 1;
        goto block_45;
    default:
        temp_r0_208 = 0xFF - var_r4_52;
        if ((temp_r0_208 <= 5) && (temp_r1_214 = sp38[temp_r0_208], (temp_r1_214 != NULL))) {
            sp3C += 1;
            var_r7_220 = temp_r1_214;
        } else {
            var_r7_220 = *sp38;
        }
        temp_r0_225 = *var_r7_220;
        temp_r4_229 = (*(u8 *)((s8 *)(sp3C) + (0)));
        temp_r2_234 = (u8) temp_r0_225 & 0xF;
        var_r3_235 = temp_r2_234 * 4;
        if (1 & (*(u8 *)((s8 *)(&sp34) + (0x12)))) {
            var_r3_235 = temp_r2_234 * 8;
        }
        if (var_r9_36 < var_r3_235) {
            var_r9_36 = var_r3_235;
        }
        temp_r6_255 = ((u32) ((*(u8 *)((s8 *)(&sp34) + (0x10))) << 0x1C) >> 0x1C) + (*(u8 *)((s8 *)(&sp34) + (0xC)));
        (*(u8 *)((s8 *)(&sp34) + (0xC))) = temp_r6_255;
        temp_r5_258 = (*(u8 *)((s8 *)(&sp34) + (0x12)));
        if (0x10 & temp_r5_258) {
            (*(u8 *)((s8 *)(&sp34) + (0xC))) = (u8) (temp_r6_255 + (((((u32) (*(u32 *)((s8 *)(&var_r7_220[temp_r4_229 >> 3]) + (4))) >> ((temp_r4_229 & 7) * 4)) & 0xF) + 1) << ((u32) (temp_r5_258 << 0x1E) >> 0x1F)));
        } else {
            (*(u8 *)((s8 *)(&sp34) + (0xC))) = (u8) (temp_r6_255 + ((((u32) (temp_r0_225 << 0x18) >> 0x1A) & 0xFC) << ((u32) (temp_r5_258 << 0x1E) >> 0x1F)));
        }
        goto block_44;
    }
    temp_r8_104 = var_r8_24 - 0x20;
    if (sp4 < sp0) {
        sp4 = sp0;
    }
    if (sp8 < temp_r8_104) {
        sp8 = temp_r8_104;
    }
    return (sp4 << 0x10) | (0xFFFF & sp8);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8B84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8C28.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

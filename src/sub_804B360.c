#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804B360 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804B360.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804D0EC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804D18C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804D2CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804D734.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804DBD0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804DDF4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804DFE8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804E0D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804E33C.s\"");
#else
s32 sub_804E6E0(void *, s32, s32);              /* extern */
s32 sub_804EA68(void *);                            /* extern */
s32 sub_804F904(void *);                        /* extern */
s32 sub_804FAF8(void *);                        /* extern */

void sub_804E33C(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_r0_101;
    s32 var_r3_104;
    u16 temp_r0_63;
    u8 temp_r0_114;
    u8 temp_r3_11;
    void *temp_r0_119;
    void *temp_r0_89;
    void *temp_r1_105;
    void *temp_r2_129;
    void *temp_r2_16;

    temp_r3_11 = (*(u8 *)((s8 *)(arg0) + (0)));
    if (0x40 & temp_r3_11) {
        temp_r2_16 = (*(void **)((s8 *)(arg0) + (0x44)));
        if ((u32) (*(u8 *)((s8 *)(temp_r2_16) + (0x21))) > 4U) {
            if (0x20 & (*(u8 *)((s8 *)(temp_r2_16) + (0x12)))) {
                (*(u8 *)((s8 *)(arg0) + (0))) = (u8) (-0x41 & temp_r3_11);
            }
        } else {
            if ((0x38 & temp_r3_11) == 0x20) {
                sub_801E150(temp_r2_16, (*(u8 *)((s8 *)(temp_r2_16) + (0x21))) + 5, 0, 0, 0);
                sub_804E6E0(arg0, arg1, arg2);
                return;
            }
            (*(s32 *)((s8 *)(arg0) + (8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (8))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
            (*(s32 *)((s8 *)(arg0) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0xC))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
            temp_r0_63 = (*(u16 *)((s8 *)(arg0) + (0x28))) + (*(u16 *)((s8 *)(arg0) + (0x2E)));
            (*(u16 *)((s8 *)(arg0) + (0x2E))) = temp_r0_63;
            if ((u32) temp_r0_63 > (u32) (*(u16 *)((s8 *)(arg0) + (0x30)))) {
                sub_804FAF8(arg0);
                return;
            }
            sub_804E6E0(arg0, arg1, arg2);
            if (((sub_804EA68(arg0) << 0x18) != 0) || (0xF & (*(u8 *)((s8 *)(arg0) + (2))))) {
                temp_r0_89 = (*(void **)((s8 *)(arg0) + (0x44)));
                sub_801E150(temp_r0_89, (*(u8 *)((s8 *)(temp_r0_89) + (0x21))) + 5, 0, 0, 0);
                temp_r0_101 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
                if (temp_r0_101 != 0) {
                    var_r3_104 = temp_r0_101;
                    temp_r1_105 = (*(void **)((s8 *)(arg0) + (0x44)));
                    if (var_r3_104 >= (s32) (*(u8 *)((s8 *)(temp_r1_105) + (0x25)))) {
                        do {
                            temp_r0_114 = (*(u8 *)((s8 *)(temp_r1_105) + (0x25)));
                            var_r3_104 -= temp_r0_114;
                        } while (var_r3_104 >= (s32) temp_r0_114);
                    }
                    temp_r0_119 = (*(void **)((s8 *)(arg0) + (0x44)));
                    sub_801E150(temp_r0_119, (*(u8 *)((s8 *)(temp_r0_119) + (0x21))), var_r3_104, 0, 0);
                }
                temp_r2_129 = (*(void **)((s8 *)(arg0) + (0x44)));
                (*(u8 *)((s8 *)(temp_r2_129) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_129) + (0x12)))) | 4);
            }
            sub_804F904(arg0);
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804E450.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804E5C4.s\"");
#else
void *sub_804E5C4(void *arg0, void *arg1) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    u32 spC;
    s32 sp10;
    s32 sp14;
    u32 sp18;
    s32 sp1C;
    s32 temp_r0_34;
    s32 temp_r0_80;
    s32 temp_r1_141;
    s32 temp_r1_84;
    s32 temp_r3_71;
    s32 temp_r4_65;
    s32 temp_r6_74;
    s32 temp_r7_68;
    s32 var_r0_19;
    s32 var_r0_26;
    s32 var_r12_76;
    s32 var_r1_35;
    s32 var_r3_104;
    s32 var_r4_102;
    s32 var_r5_103;
    s32 var_r8_87;
    u8 temp_r0_49;
    void *var_r2_55;

    if ((0x78 & (*(u8 *)((s8 *)(arg0) + (0)))) == 0x60) {
        var_r0_19 = (*(s32 *)((s8 *)(arg0) + (8)));
        if (var_r0_19 < 0) {
            var_r0_19 += 0xFF;
        }
        sp0 = var_r0_19 >> 8;
        var_r0_26 = (*(s32 *)((s8 *)(arg0) + (0xC)));
        if (var_r0_26 < 0) {
            var_r0_26 += 0xFF;
        }
        sp4 = var_r0_26 >> 8;
        temp_r0_34 = (*(s32 *)((s8 *)(arg0) + (0x14)));
        var_r1_35 = (*(s32 *)((s8 *)(arg0) + (0x10))) + temp_r0_34;
        sp1C = temp_r0_34;
        if (var_r1_35 < 0) {
            var_r1_35 += 0xFF;
        }
        sp8 = var_r1_35 >> 8;
        spC = (u16) (*(u16 *)((s8 *)(arg0) + (0x36))) >> 8;
        temp_r0_49 = (*(u8 *)((s8 *)(arg1) + (4)));
        sp10 = (s32) temp_r0_49;
        var_r2_55 = arg1 - (((*(u8 *)((s8 *)(arg1) + (6))) << 8) | (*(u8 *)((s8 *)(arg1) + (5))));
        sp14 = 0;
        if ((s32) temp_r0_49 > 0) {
            sp18 = (u32) (((u16) (*(u16 *)((s8 *)(arg0) + (0x32))) >> 8) << 0x10) >> 0x11;
loop_9:
            temp_r4_65 = (*(u8 *)((s8 *)(var_r2_55) + (0))) * 0x10;
            temp_r7_68 = temp_r4_65 + ((*(u8 *)((s8 *)(var_r2_55) + (2))) * 0x10);
            temp_r3_71 = (*(u8 *)((s8 *)(var_r2_55) + (1))) * 0x10;
            temp_r6_74 = temp_r3_71 + ((*(u8 *)((s8 *)(var_r2_55) + (3))) * 0x10);
            var_r12_76 = temp_r6_74 - 1;
            temp_r0_80 = (0x7F & (*(u8 *)((s8 *)(var_r2_55) + (4)))) * 8;
            temp_r1_84 = 0x7F & (*(u8 *)((s8 *)(var_r2_55) + (5)));
            var_r8_87 = 0x7F8;
            if (temp_r1_84 != 0x7F) {
                var_r8_87 = temp_r1_84 * 8;
            }
            if (!(3 & (*(u8 *)((s8 *)(var_r2_55) + (6))))) {
                var_r4_102 = temp_r4_65 - sp18;
                var_r5_103 = (temp_r7_68 - 1) + sp18;
                var_r3_104 = temp_r3_71 - 1;
                var_r12_76 = (temp_r6_74 - 2) + spC;
            } else {
                var_r4_102 = temp_r4_65 + 4;
                var_r5_103 = temp_r7_68 - 5;
                var_r3_104 = temp_r3_71 + 7;
            }
            if ((sp0 >= var_r4_102) && (sp0 <= var_r5_103) && (sp4 >= var_r3_104) && (sp4 <= var_r12_76) && (sp8 >= temp_r0_80) && (sp8 <= (s32) (temp_r0_80 + var_r8_87)) && ((var_r8_87 != 0) || (sp1C == 0))) {
                return var_r2_55;
            }
            temp_r1_141 = sp14 + 1;
            sp14 = temp_r1_141;
            var_r2_55 += 0xB;
            if (temp_r1_141 >= sp10) {
                goto block_24;
            }
            goto loop_9;
        }
        goto block_24;
    }
block_24:
    return NULL;
}
#endif

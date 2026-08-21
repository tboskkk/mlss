#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815B058 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815B058.s\"");
#else
void sub_815B058(u32* param_1)
{
    u8 temp;
    
    temp = *(u8*)((u8*)param_1 + 0x0C);
    if (temp <= 0x12)
    {
        void (*func_ptr)(void) = *(void(**)(void))((u32*)((u8*)param_1 + 0x00) + (temp << 2));
        func_ptr();
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815B2B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815B550.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815B820.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_815B820(void *arg0, u16 arg2) {
    void *temp_r0_122;
    void *temp_r0_45;
    void *temp_r1_132;
    void *temp_r1_55;
    void *temp_r3_105;
    void *temp_r6_67;
    void *temp_r6_81;
    void *temp_r6_93;

    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCE10;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x36))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x38))) = 0;
    (*(void **)((s8 *)(arg0) + (0x40))) = NULL;
    (*(void **)((s8 *)(arg0) + (0x3C))) = NULL;
    sub_815F97C(arg0, 0);
    temp_r0_45 = sub_8020DD0(4, 0x5008, 0, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (0x3C))) = temp_r0_45;
    sub_801E150(temp_r0_45, 0x1C, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (0x3C))));
    temp_r1_55 = (*(void **)((s8 *)(arg0) + (0x3C)));
    (*(u8 *)((s8 *)(temp_r1_55) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_55) + (0x12))) | 0x20);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x3C)))) + (0xE))) = (s16) (*(u8 *)((s8 *)(arg0) + (0x2C)));
    temp_r6_67 = (*(void **)((s8 *)(arg0) + (0x3C)));
    (*(u8 *)((s8 *)(temp_r6_67) + (0x1F))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r6_67) + (0x1F)))) | (((*(u8 *)((s8 *)(arg0) + (0x2D))) - 1) & 3));
    temp_r6_81 = (*(void **)((s8 *)(arg0) + (0x3C)));
    (*(u8 *)((s8 *)(temp_r6_81) + (0x1F))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r6_81) + (0x1F)))) | ((((*(u8 *)((s8 *)(arg0) + (0x2D))) - 1) & 3) * 4));
    temp_r6_93 = (*(void **)((s8 *)(arg0) + (0x3C)));
    (*(u8 *)((s8 *)(temp_r6_93) + (0x1F))) = (u8) ((-0x31 & (*(u8 *)((s8 *)(temp_r6_93) + (0x1F)))) | ((((*(u8 *)((s8 *)(arg0) + (0x2D))) - 1) & 3) * 0x10));
    temp_r3_105 = (*(void **)((s8 *)(arg0) + (0x3C)));
    (*(u8 *)((s8 *)(temp_r3_105) + (0x1F))) = (u8) ((0x3F & (*(u8 *)((s8 *)(temp_r3_105) + (0x1F)))) | (((*(u8 *)((s8 *)(arg0) + (0x2D))) - 1) << 6));
    temp_r0_122 = sub_8020DD0(4, 0x5008, 0, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (0x40))) = temp_r0_122;
    sub_801E150(temp_r0_122, 0x1B, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (0x40))));
    temp_r1_132 = (*(void **)((s8 *)(arg0) + (0x40)));
    (*(u8 *)((s8 *)(temp_r1_132) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_132) + (0x12))) | 0x20);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815B950.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815BB4C.s\"");
#else
s32 sub_815F3CC(void *);                        /* extern */
s32 sub_815F8F4();                              /* extern */

void *sub_815BB4C(void *arg0, u16 arg2) {
    void *temp_r0_41;
    void *temp_r0_89;
    void *temp_r1_78;
    void *temp_r1_99;
    void *temp_r2_54;
    void *temp_r2_62;
    void *temp_r2_70;

    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCDD0;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x36))) = 0;
    (*(void **)((s8 *)(arg0) + (0x40))) = NULL;
    (*(void **)((s8 *)(arg0) + (0x3C))) = NULL;
    sub_815F3CC(arg0);
    temp_r0_41 = sub_8020DD0(4, 0x5008, 0, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (0x3C))) = temp_r0_41;
    sub_801E150(temp_r0_41, 0x20, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (0x3C))));
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x3C)))) + (0xE))) = 0;
    temp_r2_54 = (*(void **)((s8 *)(arg0) + (0x3C)));
    (*(u8 *)((s8 *)(temp_r2_54) + (0x1F))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r2_54) + (0x1F)))) | 2);
    temp_r2_62 = (*(void **)((s8 *)(arg0) + (0x3C)));
    (*(u8 *)((s8 *)(temp_r2_62) + (0x1F))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r2_62) + (0x1F)))) | 8);
    temp_r2_70 = (*(void **)((s8 *)(arg0) + (0x3C)));
    (*(u8 *)((s8 *)(temp_r2_70) + (0x1F))) = (u8) ((-0x31 & (*(u8 *)((s8 *)(temp_r2_70) + (0x1F)))) | 0x20);
    temp_r1_78 = (*(void **)((s8 *)(arg0) + (0x3C)));
    (*(u8 *)((s8 *)(temp_r1_78) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_78) + (0x12))) | 0x20);
    temp_r0_89 = sub_8020DD0(4, 0x5008, 0, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (0x40))) = temp_r0_89;
    sub_801E150(temp_r0_89, 0x1B, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (0x40))));
    temp_r1_99 = (*(void **)((s8 *)(arg0) + (0x40)));
    (*(u8 *)((s8 *)(temp_r1_99) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_99) + (0x12))) | 0x20);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815BC38.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815BD94.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815C0C0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815C3DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815C660.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815C8EC.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_815C8EC(void *arg0, u16 arg2) {
    void *temp_r0_19;
    void *temp_r0_39;
    void *temp_r3_75;
    void *temp_r3_85;
    void *temp_r4_51;
    void *temp_r4_64;

    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCED0;
    (*(u16 *)((s8 *)(arg0) + (0x3C))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (0x34))) = 0;
    temp_r0_19 = arg0 + 0x24;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 0;
    (*(s8 *)((s8 *)(temp_r0_19) + (0x1C))) = 0;
    (*(s8 *)((s8 *)((temp_r0_19 + 0x1C)) + (1))) = 0;
    (*(void **)((s8 *)(arg0) + (0x38))) = NULL;
    (*(s16 *)((s8 *)(arg0) + (0x3E))) = 0;
    sub_815F97C(arg0, 0);
    temp_r0_39 = sub_8020DD0(4, 0x5008, 0, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (0x38))) = temp_r0_39;
    sub_801E150(temp_r0_39, 0x27, -1, 0, 0);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x38)))) + (0xE))) = (s16) (*(u8 *)((s8 *)(arg0) + (0x2C)));
    temp_r4_51 = (*(void **)((s8 *)(arg0) + (0x38)));
    (*(u8 *)((s8 *)(temp_r4_51) + (0x1F))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r4_51) + (0x1F)))) | (3 & (*(u8 *)((s8 *)(arg0) + (0x2D)))));
    temp_r4_64 = (*(void **)((s8 *)(arg0) + (0x38)));
    (*(u8 *)((s8 *)(temp_r4_64) + (0x1F))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r4_64) + (0x1F)))) | ((3 & (*(u8 *)((s8 *)(arg0) + (0x2D)))) * 4));
    temp_r3_75 = (*(void **)((s8 *)(arg0) + (0x38)));
    (*(u8 *)((s8 *)(temp_r3_75) + (0x1F))) = (u8) ((-0x31 & (*(u8 *)((s8 *)(temp_r3_75) + (0x1F)))) | ((3 & (*(u8 *)((s8 *)(arg0) + (0x2D)))) * 0x10));
    temp_r3_85 = (*(void **)((s8 *)(arg0) + (0x38)));
    (*(u8 *)((s8 *)(temp_r3_85) + (0x1F))) = (u8) ((0x3F & (*(u8 *)((s8 *)(temp_r3_85) + (0x1F)))) | ((*(u8 *)((s8 *)(arg0) + (0x2D))) << 6));
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815C9B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815CC60.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815CD74.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815CF80.s\"");
#else
void *sub_815FA3C(void *);                          /* extern */
s32 sub_815FA70(void *, s32);                   /* extern */
s32 sub_815FAFC(void *);                        /* extern */

s32 sub_815CF80(void *arg0, u16 arg2, s32 arg4) {
    s32 temp_r0_68;
    s32 var_r0_60;
    s8 var_r1_196;
    s8 var_r1_81;
    u16 temp_r1_131;
    u8 temp_r0_12;
    u8 temp_r1_19;
    void *temp_r0_147;
    void *temp_r0_156;
    void *temp_r0_165;
    void *temp_r0_174;
    void *var_r0_193;
    void *var_r0_78;

    temp_r0_12 = (u8) arg4;
    if (temp_r0_12 != 3) {
        if (temp_r0_12 != 4) {
            temp_r1_19 = (*(u8 *)((s8 *)(arg0) + (0x24)));
            switch (temp_r1_19) {                   /* irregular */
            case 1:
                (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
                var_r0_60 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
                if (var_r0_60 < 0) {
                    var_r0_60 += 0x3F;
                }
                temp_r0_68 = (s32) ((var_r0_60 >> 6) * 2) / 3;
                (*(u16 *)((s8 *)(arg0) + (0x14))) = (u16) temp_r0_68;
                (*(u16 *)((s8 *)(arg0) + (0x1C))) = (u16) (u8) ((*(u16 *)((s8 *)(arg0) + (0x1C))) + 1);
                if ((s32) (temp_r0_68 << 0x10) > 0) {
                    var_r0_78 = sub_815FA3C(arg0);
                    var_r1_81 = (*(u8 *)((s8 *)(var_r0_78) + (0x11))) | 0x40;
                } else {
                    var_r0_78 = sub_815FA3C(arg0);
                    var_r1_81 = -0x41 & (*(u8 *)((s8 *)(var_r0_78) + (0x11)));
                }
                (*(s8 *)((s8 *)(var_r0_78) + (0x11))) = var_r1_81;
                if ((s32) ((*(s32 *)((s8 *)((*(void **)((s8 *)(*(u32 *)0x03001020) + (0x1C98)))) + (4))) - (*(s32 *)((s8 *)(arg0) + (4)))) > 0xFFFFD800) {
                    sub_815FA70(arg0, 0x35);
                    (*(u16 *)((s8 *)(arg0) + (0x1C))) = 0U;
                    (*(u16 *)((s8 *)(arg0) + (0x20))) = 0U;
                    (*(u16 *)((s8 *)(arg0) + (0x18))) = 0xFC18U;
                    (*(u16 *)((s8 *)(arg0) + (0x14))) = 0U;
                    (*(u8 *)((s8 *)(arg0) + (0x24))) = 2U;
                }
                break;
            case 2:
                (*(u16 *)((s8 *)(arg0) + (0x14))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x1C))) + (*(u16 *)((s8 *)(arg0) + (0x14))));
                temp_r1_131 = (*(u16 *)((s8 *)(arg0) + (0x18))) + ((s16) arg2 + (*(u16 *)((s8 *)(arg0) + (0x20))));
                (*(u16 *)((s8 *)(arg0) + (0x18))) = temp_r1_131;
                (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */));
                (*(s32 *)((s8 *)(arg0) + (8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (8))) + M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */));
                if ((s32) (temp_r1_131 << 0x10) > 0) {
                    temp_r0_147 = sub_815FA3C(arg0);
                    (*(u8 *)((s8 *)(temp_r0_147) + (0x1F))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r0_147) + (0x1F)))) | 2);
                    temp_r0_156 = sub_815FA3C(arg0);
                    (*(u8 *)((s8 *)(temp_r0_156) + (0x1F))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r0_156) + (0x1F)))) | 8);
                    temp_r0_165 = sub_815FA3C(arg0);
                    (*(u8 *)((s8 *)(temp_r0_165) + (0x1F))) = (u8) ((-0x31 & (*(u8 *)((s8 *)(temp_r0_165) + (0x1F)))) | 0x20);
                    temp_r0_174 = sub_815FA3C(arg0);
                    (*(u8 *)((s8 *)(temp_r0_174) + (0x1F))) = (u8) ((0x3F & (*(u8 *)((s8 *)(temp_r0_174) + (0x1F)))) | 0x80);
                }
                if ((s32) ((*(s32 *)((s8 *)((*(void **)((s8 *)(*(void **)0x03001020) + (0x1C98)))) + (4))) - (*(s32 *)((s8 *)(arg0) + (4)))) > 0) {
                    var_r0_193 = sub_815FA3C(arg0);
                    var_r1_196 = (*(u8 *)((s8 *)(var_r0_193) + (0x11))) | 0x40;
                } else {
                    var_r0_193 = sub_815FA3C(arg0);
                    var_r1_196 = -0x41 & (*(u8 *)((s8 *)(var_r0_193) + (0x11)));
                }
                (*(s8 *)((s8 *)(var_r0_193) + (0x11))) = var_r1_196;
                break;
            }
        } else {
            sub_815FAFC(arg0);
        }
    } else {
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x34)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
        (*(u8 *)((s8 *)(arg0) + (0x24))) = 1U;
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D12C.s\"");
#else
s32 sub_815D12C(void *arg0, u16 arg2, s32 arg4) {
    s32 temp_r0_77;
    u8 temp_r0_12;

    temp_r0_12 = (u8) arg4;
    switch (temp_r0_12) {                           /* irregular */
    case 5:
        break;
    case 3:
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x34)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
        (*(u16 *)((s8 *)(arg0) + (0x18))) = 0xFE0CU;
        (*(u8 *)((s8 *)(arg0) + (0x24))) = 1U;
        break;
    case 4:
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x3C)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
        (*(u8 *)((s8 *)(arg0) + (0x24))) = 2U;
        break;
    default:
        if ((*(u8 *)((s8 *)(arg0) + (0x24))) == 1) {
            (*(u16 *)((s8 *)(arg0) + (0x14))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x1C))) + (*(u16 *)((s8 *)(arg0) + (0x14))));
            (*(u16 *)((s8 *)(arg0) + (0x18))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x18))) + ((s16) arg2 + (*(u16 *)((s8 *)(arg0) + (0x20)))));
            (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
            temp_r0_77 = (*(s32 *)((s8 *)(arg0) + (8))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
            (*(s32 *)((s8 *)(arg0) + (8))) = temp_r0_77;
            if (temp_r0_77 > (s32) (*(s32 *)((s8 *)(arg0) + (0x3C)))) {
                (*(s32 *)((s8 *)(arg0) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x38)));
                (*(s32 *)((s8 *)(arg0) + (8))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x3C)));
                (*(u16 *)((s8 *)(arg0) + (0x18))) = 0xFE0CU;
            }
        }
        break;
    }
    return 0;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8153A10 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8153A10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8153CD0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8153F5C.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */
s32 sub_8199F30();                                  /* extern */
s16 sub_81DD77C(s32, s32);                          /* extern */

void *sub_8153F5C(void *arg0, u16 arg2) {
    void *temp_r0_19;
    void *temp_r0_43;
    void *temp_r3_79;
    void *temp_r3_89;
    void *temp_r4_55;
    void *temp_r4_68;

    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC9B0;
    (*(u16 *)((s8 *)(arg0) + (0x3C))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (0x34))) = 0;
    temp_r0_19 = arg0 + 0x24;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 0;
    (*(s8 *)((s8 *)(temp_r0_19) + (0x1C))) = 0;
    (*(s8 *)((s8 *)((temp_r0_19 + 0x1C)) + (1))) = 0;
    (*(void **)((s8 *)(arg0) + (0x38))) = NULL;
    (*(s16 *)((s8 *)(arg0) + (0x3E))) = sub_81DD77C(0xFF, sub_8199F30());
    sub_815F97C(arg0, 0);
    temp_r0_43 = sub_8020DD0(4, 0x5008, 0, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (0x38))) = temp_r0_43;
    sub_801E150(temp_r0_43, 0x27, -1, 0, 0);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x38)))) + (0xE))) = (s16) (*(u8 *)((s8 *)(arg0) + (0x2C)));
    temp_r4_55 = (*(void **)((s8 *)(arg0) + (0x38)));
    (*(u8 *)((s8 *)(temp_r4_55) + (0x1F))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r4_55) + (0x1F)))) | (3 & (*(u8 *)((s8 *)(arg0) + (0x2D)))));
    temp_r4_68 = (*(void **)((s8 *)(arg0) + (0x38)));
    (*(u8 *)((s8 *)(temp_r4_68) + (0x1F))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r4_68) + (0x1F)))) | ((3 & (*(u8 *)((s8 *)(arg0) + (0x2D)))) * 4));
    temp_r3_79 = (*(void **)((s8 *)(arg0) + (0x38)));
    (*(u8 *)((s8 *)(temp_r3_79) + (0x1F))) = (u8) ((-0x31 & (*(u8 *)((s8 *)(temp_r3_79) + (0x1F)))) | ((3 & (*(u8 *)((s8 *)(arg0) + (0x2D)))) * 0x10));
    temp_r3_89 = (*(void **)((s8 *)(arg0) + (0x38)));
    (*(u8 *)((s8 *)(temp_r3_89) + (0x1F))) = (u8) ((0x3F & (*(u8 *)((s8 *)(temp_r3_89) + (0x1F)))) | ((*(u8 *)((s8 *)(arg0) + (0x2D))) << 6));
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154030.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81542DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154420.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154594.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */
void *sub_815FA3C(void *);                          /* extern */

void *sub_8154594(void *arg0, u16 arg2) {
    void *temp_r0_40;
    void *temp_r2_22;
    void *temp_r2_50;
    void *temp_r2_78;
    void *temp_r3_100;
    void *temp_r3_66;
    void *temp_r3_88;

    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC6B0;
    (*(u16 *)((s8 *)(arg0) + (0x38))) = arg2;
    sub_815F97C(arg0, 0);
    temp_r2_22 = (*(void **)((s8 *)(arg0) + (0)));
    (*(u8 *)((s8 *)(temp_r2_22) + (0x11))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r2_22) + (0x11)))) | 4);
    temp_r0_40 = sub_8020DD0(4, 0x500A, 0, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (0x34))) = temp_r0_40;
    sub_801E150(temp_r0_40, 2, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (0x34))));
    temp_r2_50 = (*(void **)((s8 *)(arg0) + (0x34)));
    (*(u8 *)((s8 *)(temp_r2_50) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_50) + (0x12))) | 0x20);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34)))) + (0))) = 0x78;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34)))) + (2))) = 0x50;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34)))) + (0xE))) = 0x13;
    temp_r3_66 = (*(void **)((s8 *)(arg0) + (0x34)));
    (*(u8 *)((s8 *)(temp_r3_66) + (0x1F))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r3_66) + (0x1F)))) | ((u32) ((*(u8 *)((s8 *)(sub_815FA3C(arg0)) + (0x1F))) << 0x1E) >> 0x1E));
    temp_r2_78 = (*(void **)((s8 *)(arg0) + (0x34)));
    (*(u8 *)((s8 *)(temp_r2_78) + (0x1F))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r2_78) + (0x1F)))) | (0xC & (*(u8 *)((s8 *)(sub_815FA3C(arg0)) + (0x1F)))));
    temp_r3_88 = (*(void **)((s8 *)(arg0) + (0x34)));
    (*(u8 *)((s8 *)(temp_r3_88) + (0x1F))) = (u8) ((-0x31 & (*(u8 *)((s8 *)(temp_r3_88) + (0x1F)))) | (0x30 & (*(u8 *)((s8 *)(sub_815FA3C(arg0)) + (0x1F)))));
    temp_r3_100 = (*(void **)((s8 *)(arg0) + (0x34)));
    (*(u8 *)((s8 *)(temp_r3_100) + (0x1F))) = (u8) ((0x3F & (*(u8 *)((s8 *)(temp_r3_100) + (0x1F)))) | (((u8) (*(u8 *)((s8 *)(sub_815FA3C(arg0)) + (0x1F))) >> 6) << 6));
    return arg0;
}
#endif

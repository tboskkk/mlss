#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8146DC8 needs.

asm_unified(".include \"asm/macros.inc\"");


extern s32 sub_813B380;

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146DC8.s\"");
#else
void sub_8146DC8(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x20E))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x20E))));
    (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) (((*(u8 *)((s8 *)(arg0) + (0x20D))) | 8) & ~0x20 & ~0x40);
    (*(s32 *)((s8 *)(arg0) + (0x20C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x20C))) & 0xFFFC7FFF);
    (*(u8 *)((s8 *)(arg0) + (0x20F))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x20F))));
    (*(s32 *)((s8 *)(arg0) + (0x20C))) = (s8) ((u8) (*(s32 *)((s8 *)(arg0) + (0x20C))) | 0x80 | 0x40 | 0x20);
    (*(u8 *)((s8 *)(arg0) + (0x20E))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x20E))));
    (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x20D))));
}
#endif

s32 sub_8047F60(void *, s32, s32, s32, s32, s32); /* extern */
extern s32 sub_8146C78;
void sub_8146E40(s32 arg0, void *arg1, s32 **arg2)
{
  int new_var2;
  s16 *new_var;
  sub_8047F60(arg1, *((s32 *) (((s8 *) arg1) + 0x1DC)), *((s32 *) (((s8 *) arg1) + 0x1E0)), (*((s32 *) (((s8 *) arg1) + 0x1E4))) + (*((s32 *) (((s8 *) arg1) + 0x1E8))), 0, 0);
  new_var = (s16 *) (((s8 *) arg1) + 0x2DC);
  new_var2 = 0x200;
  *new_var = new_var2;
  *((s16 *) (((s8 *) arg1) + 0x2DE)) = 0x3C;
  *arg2 = &sub_8146C78;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146E9C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */
extern s32 sub_8145C58;
void sub_8146F2C(s32 arg0, void *arg1, s32 **arg2)
{
  u8 new_var2;
  s32 temp_r4_12;
  s8 *new_var;
  temp_r4_12 = *((s32 *) (((s8 *) arg1) + ((0, 0x1B0))));
  new_var2 = *((u8 *) (((s8 *) (sub_81DD77C(4, sub_8199F30()) + temp_r4_12)) + 0x1E));
  *((s16 *) (((s8 *) arg1) + 0x1D4)) = (s16) new_var2;
  *((u8 *) (((s8 *) arg1) + 0x1D6)) = (u8) ((*((u8 *) (((s8 *) arg1) + 0x1D6))) | 0x10);
  new_var = (s8 *) arg1;
  *((s32 *) (((s8 *) arg1) + 0x20C)) = (s32) (((*((s32 *) (new_var + 0x20C))) & 0xFFFC7FFF) | 0x8000);
  *((u8 *) (((s8 *) arg1) + 0x20F)) = (u8) ((*((u8 *) (new_var + 0x20F))) | 4);
  new_var = (u8 *) (((s8 *) arg1) + 0x214);
  *new_var = (u8) (((-8) & (*new_var)) | 1);
  *arg2 = &sub_8145C58;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146FAC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8139AA0(void *);                        /* extern */
extern s32 sub_8146FAC;

void sub_8147010(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    sub_8139AA0(arg1);
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8146FAC;
}

s32 sub_813B650(s32);                               /* extern */
extern s32 sub_814706C;

void sub_814704C(s32 arg0, s32 arg1, s32 **arg2) {
    if ((sub_813B650(arg1) << 0x18) == 0) {
        *arg2 = &sub_814706C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814706C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81470B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81470F8.s\"");
#else
s32 sub_804761C(void *, s32);                   /* extern */
s32 sub_81387C8(void *, s32);                   /* extern */
s32 sub_8139030(void *, s32);                   /* extern */
s32 sub_8148C20(s32);                           /* extern */
extern s32 sub_813B380;
extern s32 sub_8148D40;

void sub_81470F8(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) (-0x11 & (*(u8 *)((s8 *)(arg1) + (0x33E))));
    sub_81387C8(arg1, 0);
    sub_8139030(arg1, 0);
    sub_8148C20((*(s32 *)((s8 *)(arg1) + (0x344))));
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) (-8 & (*(u8 *)((s8 *)(arg1) + (0x214))));
    (*(u8 *)((s8 *)(arg1) + (0x20C))) = (u8) (0x7F & (*(u8 *)((s8 *)(arg1) + (0x20C))) & ~0x40 & ~0x20);
    sub_804761C(arg1, 0);
    (*(u8 *)((s8 *)(arg1) + (0x20F))) = (u8) (-5 & (*(u8 *)((s8 *)(arg1) + (0x20F))));
    (*(u8 *)((s8 *)(arg1) + (0x20E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x20E))) | 4);
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8148D40;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81471A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8147440.s\"");
#else
s32 sub_804761C(void *, s32);                   /* extern */
s32 sub_80FBD44(void *, u8 *);                      /* extern */
s32 sub_813B920(void *, s32, s32, s32, s32, s32, s32); /* extern */
extern s32 sub_8148CA4;

void sub_8147440(void *arg0, void *arg1, s32 **arg2) {
    u8 spC;
    s32 temp_r1_60;
    s32 var_r1_65;
    u32 var_r0_30;
    void *temp_r0_16;
    void *temp_r2_41;
    void *temp_r6_78;

    temp_r0_16 = arg1 + 0x58;
    if ((sub_80FBD44(arg0, &spC) << 0x18) == 0) {
        var_r0_30 = (u32) ((*(u8 *)((s8 *)(arg0) + (0x208))) << 0x1E) >> 0x1F;
    } else {
        var_r0_30 = (u32) spC;
    }
    spC = (u8) var_r0_30;
    temp_r2_41 = (*(void **)((s8 *)(((spC * 4) + arg0)) + (0x28)));
    (*(s32 *)((s8 *)(arg1) + (0xC))) = (s32) (*(s32 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x344)))) + (0xC)));
    (*(s32 *)((s8 *)(arg1) + (0x10))) = (s32) (*(s32 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x344)))) + (0x10)));
    (*(s32 *)((s8 *)(arg1) + (0x14))) = (s32) (*(s32 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x344)))) + (0x14)));
    temp_r1_60 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x344)))) + (0x1E0))) - (*(s32 *)((s8 *)(temp_r2_41) + (0x10)));
    if (temp_r1_60 >= 0) {
        var_r1_65 = temp_r1_60 + 0xA000;
    } else {
        var_r1_65 = 0xA000;
    }
    (*(s32 *)((s8 *)(arg1) + (0x18))) = (s32) ((*(s32 *)((s8 *)(temp_r2_41) + (0x18))) + var_r1_65);
    temp_r6_78 = (*(void **)((s8 *)(temp_r0_16) + (0x158)));
    (*(u16 *)((s8 *)(arg1) + (0x2DC))) = (u16) (*(u16 *)((s8 *)(temp_r6_78) + (0x30)));
    (*(u16 *)((s8 *)(temp_r0_16) + (0x17A))) = (u16) (*(u16 *)((s8 *)(temp_r6_78) + (0x2E)));
    if ((sub_813B920(arg0, (*(s32 *)((s8 *)(arg1) + (0xC))), (*(s32 *)((s8 *)(arg1) + (0x10))), (*(s32 *)((s8 *)(arg1) + (0x14))), (s32) (*(u16 *)((s8 *)(arg1) + (0x27A))), 1, 0) << 0x18) != 0) {
        *arg2 = (s32 *)0x08148C61;
        return;
    }
    (*(u8 *)((s8 *)(arg1) + (0x20C))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x20C))) | 0x80 | 0x40 | 0x20);
    sub_804761C(arg1, 1);
    (*(u8 *)((s8 *)(arg1) + (0x20F))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x20F))) | 4);
    (*(u16 *)((s8 *)(temp_r0_16) + (0x17C))) = (u16) (*(u16 *)((s8 *)(temp_r6_78) + (0x32)));
    (*(u16 *)((s8 *)(arg1) + (0x23E))) = (u16) (*(u16 *)((s8 *)(temp_r6_78) + (0x34)));
    *arg2 = &sub_8148CA4;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8147590.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8144238 needs.

asm_unified(".include \"asm/macros.inc\"");






s32 sub_8047154();

s32 sub_81387C8();

extern s32 sub_813B380;
extern s32 sub_8144CD4;

int sub_8139AA0();

int sub_80FBD44();
int sub_8137A4C();
s32 sub_81382A8();
extern s32 sub_8139364;

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144238.s\"");
#else
extern s32 sub_8143E90;

void sub_8144238(void *arg1, s32 **arg2) {
    void *temp_r1_10;

    temp_r1_10 = (*(void **)((s8 *)(arg1) + (0x294)));
    if (((*(u8 *)((s8 *)(temp_r1_10) + (0x23))) == 0) && ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) <= (s32) (s8) (*(u8 *)((s8 *)(temp_r1_10) + (0x20))))) {
        *arg2 = &sub_8143E90;
    }
}
#endif

void sub_814426C(void *arg0, void *arg1, s32 **arg2)
{
  int new_var2;
  s32 *new_var;
  u8 sp0;
  void *temp_r0_29;
  if ((sub_80FBD44(arg0, &sp0) << 0x18) == 0)
  {
    sp0 = (u8) (((u32) ((*((u8 *) (((s8 *) arg0) + 0x208))) << 0x1D)) >> 0x1F);
  }
  new_var2 = 1;
  temp_r0_29 = *((void **) (((s8 *) ((sp0 * 4) + arg0)) + 0x28));
  new_var = (s32 *) (((s8 *) temp_r0_29) + 0xC);
  sub_8137A4C(arg1, 0, *new_var, *((s32 *) (((s8 *) temp_r0_29) + 0x10)));
  sub_81382A8(arg1);
  *((u8 *) (((s8 *) arg1) + 0x1D6)) = (u8) (((*((u8 *) (((s8 *) arg1) + 0x1D6))) | 2) & (~new_var2));
  *arg2 = &sub_8139364;
}

extern s32 sub_8136D00;
void sub_81442D4(s32 arg0, void *arg1)
{
  sub_81387C8(arg1, 0xF);
  *((s32 (**)(s32, void *)) (((s8 *) arg1) + 0x198)) = (s32 (*)(s32, void *)) (*((s32 (**)(s32, void *)) (((s8 *) arg1) + 0x19C)));
  *((s32 **) (((s8 *) arg1) + 0x1A0)) = &sub_8136D00;
  *((s32 **) (((s8 *) arg1) + 0x1A4)) = &sub_8136D00;
  *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) (((-8) & (*(((s8 *) arg1) + 0x214))) | 1);
  (*((s32 (**)(s32, void *)) (((s8 *) arg1) + 0x198)))(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814432C.s\"");
#else
s32 sub_81387C8(void *, s32);                   /* extern */
s32 sub_8138FD4(void *, s32);                   /* extern */
s32 sub_8139030(void *, s32);                   /* extern */
s32 sub_81435E4(s32, void *);                   /* extern */
extern s32 sub_8139420;

void sub_814432C(s32 arg0, void *arg1) {
    sub_81387C8(arg1, 0);
    sub_8139030(arg1, 0);
    sub_8138FD4(arg1, 0xB);
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_81435E4;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8139420;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_8139420;
    sub_81435E4(arg0, arg1);
}
#endif

u8 sub_8138C8C();                                   /* extern */
void sub_814437C(s32 arg0, void *arg1)
{
  int new_var2;
  int new_var3;
  s8 *new_var;
  new_var3 = 2;
  if (sub_8138C8C() == 1)
  {
    sub_81382A8(arg1);
    return;
  }
  new_var = (s8 *) arg1;
  *((u8 *) (new_var + 0x1D6)) = (u8) (((*((u8 *) (new_var + 0x1D6))) | 1) & (~new_var3));
  new_var2 = 0x40;
  *((u8 *) (new_var + 0x20D)) = (u8) ((*((u8 *) (new_var + 0x20D))) | 8);
  *((u8 *) (new_var + 0x210)) = (u8) (((*((u8 *) (new_var + 0x210))) | 8) | new_var2);
}

s32 sub_804790C(void *, s32);                   /* extern */
extern s32 sub_81434F4;
void sub_81443D0(s32 arg0, void *arg1, s32 **arg2)
{
  int new_var;
  new_var = -5;
  if (((s32) (*((s32 *) (((s8 *) arg1) + 0x18)))) <= 0)
  {
    *((s32 *) (((s8 *) arg1) + 0x18)) = 0;
    *((u8 *) (((s8 *) arg1) + 0x20E)) = (u8) (new_var & (*((u8 *) (((s8 *) arg1) + 0x20E))));
    sub_8047154(arg1, 6, 0);
    sub_804790C(arg1, 0x10);
    *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) (((-8) & (*(((s8 *) arg1) + 0x214))) | 1);
    *arg2 = &sub_81434F4;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144428.s\"");
#else
s32 sub_8047154(void *, s32, s32);              /* extern */
s32 sub_81433FC(s32, void *);                   /* extern */

void sub_8144428(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    sub_8047154(arg1, 5, 0);
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) (-8 & (*(u8 *)((s8 *)(arg1) + (0x214))));
    (*(u8 *)((s8 *)(arg1) + (0x210))) = (u8) (-9 & (*(u8 *)((s8 *)(arg1) + (0x210))) & ~0x40);
    (*(u8 *)((s8 *)(arg1) + (0x2B6))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x2B6))) | 0x40);
    sub_81433FC(arg0, arg1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814448C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144560.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81446F8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814494C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144B98.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144CD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144F4C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144FF0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145060.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145290.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145350.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81454A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81455DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814569C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81457C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814585C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81458C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8145920(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    sub_8139AA0(arg1);
    (*(s16 *)((s8 *)(arg1) + (0x1D4))) = 0;
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8144CD4;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145968.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81459FC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

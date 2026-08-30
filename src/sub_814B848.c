#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814B848 needs.

asm_unified(".include \"asm/macros.inc\"");




s32 sub_813B564();

extern s32 sub_813B380;
extern s32 sub_8148E98;

int sub_8139AA0();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B848.s\"");
#else
s32 sub_8149EF4();                              /* extern */

void sub_814B848(void *arg1, s32 (**arg2)()) {
    (*(u8 *)((s8 *)(arg1) + (0x20E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x20E))) | 4);
    *arg2 = sub_8149EF4;
    sub_8149EF4();
}
#endif

s32 sub_804761C(void *, s32);                   /* extern */
s32 sub_8047F60(void *, s32, s32, s32, s32, s32); /* extern */
extern s32 sub_814BD08;
void sub_814B86C(s32 arg0, void *arg1, s32 **arg2)
{
  *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) ((-8) & (*(((s8 *) arg1) + 0x214)));
  sub_804761C(arg1, 0);
  sub_8047F60(arg1, *((s32 *) ((0, ((s8 *) arg1) + 0x1DC))), *((s32 *) (((s8 *) arg1) + 0x1E0)), (*((s32 *) (((s8 *) arg1) + 0x1E4))) + (*((s32 *) (((s8 *) arg1) + 0x1E8))), 0, 0);
  *arg2 = &sub_814BD08;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B8C8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_813B6A0(void *);                            /* extern */
s32 sub_813B748(void *);                        /* extern */
extern s32 sub_814BD90;
void sub_814B92C(s32 arg0, void *arg1, s32 **arg2)
{
  int new_var;
  if ((*((u8 *) (((s8 *) (*((void **) (((s8 *) arg1) + 0x294)))) + 0x23))) == 2)
  {
    *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) (((-8) & (*(((s8 *) arg1) + 0x214))) | 5);
  }
  new_var = -5;
  sub_813B748(arg1);
  if ((sub_813B6A0(arg1) << 0x18) == 0)
  {
    *((u8 *) (((s8 *) arg1) + 0x1D8)) = (u8) (new_var & (*((u8 *) (((s8 *) arg1) + 0x1D8))));
    *arg2 = &sub_814BD90;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B988.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_81498DC;
void sub_814BA10(s32 arg0, void *arg1, s32 **arg2)
{
  int new_var;
  void *temp_r1_12;
  temp_r1_12 = *((void **) (((s8 *) arg1) + 0x294));
  new_var = -8;
  if (((*((u8 *) (((s8 *) temp_r1_12) + 0x23))) == 2) && (((s32) (*((s16 *) (((s8 *) temp_r1_12) + 0x2A)))) <= ((s32) ((s8) (*((u8 *) (((s8 *) temp_r1_12) + 0x20)))))))
  {
    *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) ((new_var & (*((u8 *) (((s8 *) arg1) + 0x214)))) | 5);
  }
  sub_813B564(arg1);
  if ((sub_813B6A0(arg1) << 0x18) == 0)
  {
    *arg2 = &sub_81498DC;
  }
}

s32 sub_813A5C8(void *, s32, s32);              /* extern */
s32 sub_813B6DC(void *, s32, s32, s32);         /* extern */
void sub_814BA70(s32 arg0, void *arg1, s32 **arg2)
{
  s8 *new_var;
  sub_813A5C8(arg1, 0x40, 0x200);
  sub_813B6DC(arg1, 0x6C00, 0, 1);
  new_var = (s8 *) arg1;
  *((u8 *) (0x214 + new_var)) = (u8) (((-8) & (*(new_var + 0x214))) | 4);
  *((u8 *) (((s8 *) arg1) + 0x1D6)) = (u8) (((-2) & (*(((s8 *) arg1) + 0x1D6))) | 2);
  *arg2 = (s32 *) &sub_814BA10;
}

s32 sub_81387C8(void *, s32);                   /* extern */
s32 sub_8139030(void *, s32);                   /* extern */
extern s32 sub_814979C;
void sub_814BA70(s32 arg0, void *arg1, s32 **arg2);
void sub_814BAC8(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    sub_81387C8(arg1, 0);
    sub_8139030(arg1, 0);
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x294)))) + (0x23))) = 0;
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x294)))) + (0x20))) = 0x20;
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_814979C;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = (s32 *) &sub_814BA70;
}

extern s32 sub_814BE1C;
void sub_814BB24(s32 arg0, void *arg1, s32 **arg2)
{
  int new_var;
  int new_var2;
  new_var = -8;
  if ((*((u8 *) (((s8 *) (*((void **) (0x294 + ((s8 *) arg1))))) + 0x23))) == 2)
  {
    *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) ((new_var & (*((u8 *) (((s8 *) arg1) + 0x214)))) | 5);
  }
  sub_813B748(arg1);
  new_var2 = -5;
  if ((sub_813B6A0(arg1) << 0x18) == 0)
  {
    *((u8 *) (((s8 *) arg1) + 0x1D8)) = (u8) (new_var2 & (*((u8 *) (((s8 *) arg1) + 0x1D8))));
    *arg2 = &sub_814BE1C;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BB80.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_813B564(void *);                        /* extern */
extern s32 sub_81494F4;
void sub_814BC1C(s32 arg0, void *arg1, s32 **arg2)
{
  s32 **new_var5;
  void **new_var;
  u8 new_var2;
  void *new_var6;
  s8 *new_var4;
  s32 *new_var3;
  new_var = (void **) (((s8 *) arg1) + 0x294);
  if ((*((u8 *) (((s8 *) (*new_var)) + 0x23))) == 2)
  {
    new_var2 = (u8) (((-8) & (*(new_var4 = ((s8 *) arg1) + 0x214))) | 5);
    *((u8 *) (((s8 *) arg1) + 0x214)) = new_var2;
  }
  new_var6 = arg1;
  if (1)
  {
    sub_813B564(arg1);
  }
  if ((sub_813B6A0(new_var6) << 0x18) == 0)
  {
    new_var5 = arg2;
    if (1)
    {
    }
    *new_var5 = (new_var3 = &sub_81494F4);
  }
}

void sub_814BC68(s32 arg0, void *arg1, s32 **arg2)
{
  s8 *new_var;
  s8 *new_var2;
  sub_813A5C8(arg1, 0x40, 0x200);
  sub_813B6DC(arg1, 0x6C00, 0, 1);
  new_var2 = ((s8 *) arg1) + 0x214;
  new_var = &(*((u8 *) new_var2));
  *((u8 *) new_var2) = (u8) (((-8) & (*new_var)) | 4);
  new_var = ((s8 *) arg1) + 0x1D6;
  *((u8 *) (0x1D6 + ((s8 *) arg1))) = (u8) (((-2) & (*new_var)) | 2);
  *arg2 = (s32 *) (&sub_814BC1C);
}

void sub_814BCC0(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    sub_8139AA0(arg1);
    (*(s16 *)((s8 *)(arg1) + (0x1D4))) = 0;
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8148E98;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BD08.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BD90.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BE1C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BE88.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815041C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815041C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s8 sub_8139E88(void *, void *, s32);                /* extern */
s32 sub_814EE18(void *, s32);                       /* extern */
s32 sub_815033C(void *, s32);                   /* extern */
extern s32 sub_81506B4;
extern s32 sub_81506DC;
void sub_8150498(void *arg0, void *arg1, void *arg2)
{
  u16 new_var;
  if (sub_8139E88(arg0, arg1, 0) == (-1))
  {
    sub_815033C(arg1, 1);
    return;
  }
  if ((sub_814EE18(arg1, *((s32 *) (((s8 *) arg0) + 0x200))) << 0x18) == 0)
  {
    new_var = (u16) (*((u16 *) (((s8 *) arg1) + 0x1D0)));
    *((u16 *) (((s8 *) arg1) + 0x1D2)) = new_var;
    *((s32 **) (((s8 *) arg2) + 0)) = &sub_81506DC;
    *((s32 **) (((s8 *) arg2) + 0xC)) = &sub_81506B4;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81504F4.s\"");
#else
s32 sub_8046A90(void *, s32, s32, s32, s32);    /* extern */
s32 sub_8046D18(void *);                        /* extern */
s32 sub_804761C(void *, s32);                   /* extern */
s32 sub_80479A8(void *);                        /* extern */
s32 sub_814EDAC(void *);                        /* extern */
extern s32 sub_813B380;
extern s32 sub_814EADC;

void sub_81504F4(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) (-0x11 & (*(u8 *)((s8 *)(arg1) + (0x33E))));
    sub_814EDAC(arg1);
    sub_8046A90(arg1, 2, 0, 0x10, 1);
    sub_8046D18(arg1);
    sub_80479A8(arg1);
    sub_804761C(arg1, 0);
    (*(s32 *)((s8 *)(arg1) + (0x1DC))) = (s32) (*(s32 *)((s8 *)(arg1) + (0xC)));
    (*(s32 *)((s8 *)(arg1) + (0x1E0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x10)));
    (*(s32 *)((s8 *)(arg1) + (0x1E4))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x14)));
    (*(s32 *)((s8 *)(arg1) + (0x1E8))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x18)));
    (*(u16 *)((s8 *)(arg1) + (0x1D0))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x1B0)))) + (0x18)));
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_814EADC;
}
#endif

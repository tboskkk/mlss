#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81427AC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81427AC.s\"");
#else
extern s32 sub_81417F8;

void sub_81427AC(void *arg1, s32 **arg2) {
    u16 temp_r0_21;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x294)))) + (0x12)))) {
        temp_r0_21 = (*(u16 *)((s8 *)(arg1) + (0x1D2))) - 1;
        (*(u16 *)((s8 *)(arg1) + (0x1D2))) = temp_r0_21;
        if ((temp_r0_21 << 0x10) == 0) {
            *arg2 = &sub_81417F8;
        }
    }
}
#endif

s32 sub_8139AA0(void *);                        /* extern */
extern s32 sub_813B380;
extern s32 sub_8141508;

void sub_81427E0(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    sub_8139AA0(arg1);
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8141508;
}

u8 sub_813B5B4(void *);                             /* extern */
extern s32 sub_813B1E8;
extern s32 sub_813B360;
extern s32 sub_81428FC;
void sub_814281C(s32 arg0, void *arg1, void *arg2)
{
  s32 temp_r6_12;
  u8 temp_r3_16;
  char new_var;
  temp_r6_12 = *((s32 *) (((s8 *) arg1) + 0x1B0));
  temp_r3_16 = sub_813B5B4(arg1);
  if (temp_r3_16 == 0)
  {
    *((s32 *) (((s8 *) arg1) + 0x2EC)) = (s32) ((*((s32 *) (((s8 *) arg1) + 0x14))) + (*((s32 *) (((s8 *) arg1) + 0x18))));
    *((s32 *) (((s8 *) arg1) + 0x2F4)) = (s32) temp_r3_16;
    new_var = *((u8 *) (((s8 *) ((*((u16 *) (((s8 *) arg1) + 0x1D0))) + temp_r6_12)) + 0x44));
    *((s16 *) (((s8 *) arg1) + 0x1D2)) = (s16) new_var;
    *((s32 **) (((s8 *) arg2) + 0)) = &sub_813B1E8;
    *((s32 **) (((s8 *) arg2) + 0xC)) = &sub_813B360;
    *((s32 **) (((s8 *) arg2) + 4)) = &sub_81428FC;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142880.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81428FC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814294C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81429BC.s\"");
#else
s32 sub_8199F30();                                  /* extern */
u16 sub_81DD77C(s32, s32);                          /* extern */
extern s32 sub_81407A0;

void sub_81429BC(void *arg0) {
    s32 temp_r5_11;

    temp_r5_11 = (*(s32 *)((s8 *)(arg0) + (0x1B0)));
    (*(u16 *)((s8 *)(arg0) + (0x1D0))) = sub_81DD77C(4, sub_8199F30());
    (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x20))) = (u8) (*(u8 *)((s8 *)(((*(u16 *)((s8 *)(arg0) + (0x1D0))) + temp_r5_11)) + (0x1A)));
    (*(s16 *)((s8 *)(arg0) + (0x1D2))) = (s16) (*(u8 *)((s8 *)(((*(u16 *)((s8 *)(arg0) + (0x1D0))) + (*(s32 *)((s8 *)(arg0) + (0x1B0))))) + (0x16)));
    (*(s32 **)((s8 *)(arg0) + (0x1A0))) = &sub_81407A0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142A10.s\"");
#else
s32 sub_80FBDE0(s32 *, s32, s32, s32);          /* extern */
s32 sub_8139BB0(s32 *, void *, s32, u32);   /* extern */

s32 sub_8142A10(void *arg0, s32 arg1) {
    s32 sp0;
    u8 temp_r5_14;
    u8 var_r4_15;

    temp_r5_14 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x1B4)))) + (0xB)));
    var_r4_15 = 0;
    if ((u32) temp_r5_14 > 0U) {
loop_1:
        sub_8139BB0(&sp0, arg0, 0x22, (u32) ((var_r4_15 << 0x13) + 0xC0000) >> 0x10);
        if ((sub_80FBDE0(&sp0, arg1, 0x7FFF, 0) << 0x18) != 0) {
            return 1;
        }
        var_r4_15 += 1;
        if ((u32) var_r4_15 >= (u32) temp_r5_14) {
            goto block_4;
        }
        goto loop_1;
    }
block_4:
    return 0;
}
#endif

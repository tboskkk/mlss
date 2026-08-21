#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029170 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029170.s\"");
#else
s32 sub_81165CC(s32, s32);                      /* extern */

void sub_8029170(void *arg0, s32 arg1) {
    s32 var_r1_26;
    u32 temp_r0_13;

    temp_r0_13 = (u32) ((*(u8 *)((s8 *)(arg0) + (0xFC))) << 0x19) >> 0x1C;
    switch (temp_r0_13) {                           /* irregular */
    case 1:
        sub_81165CC((*(s32 *)((s8 *)(arg0) + (0x314))), arg1);
        var_r1_26 = arg1 + 1;
block_5:
        (*(u8 *)((s8 *)(arg0) + (0xFC))) = (u8) ((-0x79 & (*(u8 *)((s8 *)(arg0) + (0xFC)))) | ((var_r1_26 & 0xF) * 8));
        return;
    case 2:
        sub_81165CC((*(s32 *)((s8 *)(arg0) + (0x314))), arg1);
        var_r1_26 = 2 - arg1;
        goto block_5;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80291C8.s\"");
#else
void sub_80291C8(void *arg0)
{
  int new_var;
  u32 temp_r0_11;
  temp_r0_11 = ((u32) ((*((u8 *) (((s8 *) arg0) + 0xFC))) << 0x19)) >> 0x1C;
  if ((((s32) temp_r0_11) <= 2) && (((s32) temp_r0_11) >= (new_var = 1)))
  {
    sub_8116610(*((s32 *) (((s8 *) arg0) + 0x314)));
  }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80291EC.s\"");
#else
s32 sub_80290E0(void *);                        /* extern */
s32 sub_8029120(void *, u16, u16);              /* extern */
s32 sub_81151E4(s32, u8, u16, u16, s32);        /* extern */

void sub_80291EC(void *arg0, u8 arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5) {
    s32 var_r0_74;
    u16 temp_r5_20;
    u16 temp_r6_25;

    temp_r5_20 = (u16) arg4;
    temp_r6_25 = (u16) arg5;
    *(s32 *)0x03000BD0 |= (arg5 << 0x10) | temp_r5_20;
    if (arg1 == 0) {
        if ((*(s32 *)((s8 *)(arg0) + (0xF0))) != 0) {
            sub_80290E0(arg0);
        }
    } else {
        sub_8029120(arg0, temp_r6_25, temp_r5_20);
    }
    (*(u16 *)((s8 *)(arg0) + (0xF4))) = temp_r5_20;
    (*(u16 *)((s8 *)((arg0 + 0xF4)) + (2))) = temp_r6_25;
    if (1 & temp_r5_20) {

    }
    var_r0_74 = 1 & temp_r5_20;
    if (var_r0_74 != 0) {
        var_r0_74 = *(s32 *)0x03000E04;
    }
    sub_81151E4((*(s32 *)((s8 *)(arg0) + (0x314))), arg1, arg3, arg2, var_r0_74);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80292A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80292EC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E3CF4 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8116620(s32);                               /* extern */
s32 sub_80E3CF4(void)
{
  unsigned long new_var;
  if (((unsigned char) 0) == (sub_8116620(*((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + 0x248))) << 0x18))
  {
    new_var = 0;
    return (double) new_var;
  }
  new_var = 1;
  return new_var;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E3D1C.s\"");
#else
s32 sub_81151E4(s32, s32, u16, s32, s32, s32, s32, s32); /* extern */

void sub_80E3D1C(void) {
    u16 var_r2_14;
    void *temp_r0_13;
    void *temp_r1_9;

    temp_r1_9 = *(void **)0x03000FD8;
    temp_r0_13 = (*(void **)((s8 *)(temp_r1_9) + (0x2D8)));
    var_r2_14 = 0;
    if (temp_r0_13 != NULL) {
        var_r2_14 = (*(u16 *)((s8 *)(temp_r0_13) + (0xA)));
    }
    sub_81151E4((*(s32 *)((s8 *)(temp_r1_9) + (0x248))), 0, var_r2_14, 0x10, 0xFFFF, 0xFFFF, 0, 0);
    *(s32 *)0x03000BD0 = -1;
}
#endif

void sub_80E3D70(void) {
    (*(s32 (**)(s32, s32, s32))0x03001034)(0, 0x06004000, 0x9000);
    (*(s32 (**)(s32, s32, s32))0x03001034)(0, 0x0600F000, 0x1000);
}

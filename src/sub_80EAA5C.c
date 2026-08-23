#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EAA5C needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_80E9C4C();

s32 sub_80EAA5C(s32 arg0, s32 arg1, s16 *arg2, s32 arg3)
{
  int new_var;
  new_var = 0x2E;
  sub_80E9C4C(arg3, arg1 + 0x18, 0, 0, (s32) (*arg2), (s32) (*((u16 *) (((s8 *) ((void *) 0x0300034C)) + new_var))));
  return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAA84.s\"");
#else
s32 sub_80E9C4C(s32, s32, s32, s32, s32, s32);  /* extern */

s32 sub_80EAA84(s32 arg0, s32 arg1, void *arg2, s32 arg3) {
    u16 temp_r2_9;
    u16 var_r2_13;

    temp_r2_9 = (*(u16 *)((s8 *)(arg2) + (4)));
    if (temp_r2_9 == 0) {
        var_r2_13 = (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)));
    } else if (temp_r2_9 == 1) {
        var_r2_13 = (*(u16 *)((s8 *)((void *)0x0300034C) + (0x28)));
    } else {
        var_r2_13 = 0;
    }
    sub_80E9C4C(arg3, arg1 + 0x18, 0, 0, M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), (s32) var_r2_13);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAACC.s\"");
#else
s32 sub_8018818();                              /* extern */

s32 sub_80EAACC(s32 arg0, s32 arg1, s32 *arg2) {
    *(u16 *)0x030003C4 = (0xFFFFFC00 & *(u16 *)0x030003C4) | (0x3FF & ~*arg2 & 0x3FF);
    sub_8018818();
    return 1;
}
#endif

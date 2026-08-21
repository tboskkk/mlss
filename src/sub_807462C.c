#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807462C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_807462C(void *arg0)
{
  u16 temp_r0_11;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) ((temp_r0_11 << 7) << 9)) <= 0)
  {
    *((s32 *) (((s8 *) arg0) + 0x4C)) = 0;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074648.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8072B68;

void sub_8074648(void *arg0) {
    s32 var_r1_18;

    if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
        var_r1_18 = 0xC;
    } else {
        var_r1_18 = 0xD;
    }
    sub_8082E1C(arg0, var_r1_18, 0, 0);
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 4;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8072B68;
}
#endif

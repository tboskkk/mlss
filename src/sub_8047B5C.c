#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047B5C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047B5C.s\"");
#else
void sub_8047B5C(void *arg0, u16 arg1)
{
  unsigned long new_var;
  new_var = *((u16 *) (((s8 *) arg0) + 0x266));
  *((u16 *) (((s8 *) arg0) + 0x268)) = (u16) new_var;
  *((u16 *) (((s8 *) arg0) + 0x266)) = arg1;
}
#endif

s32 sub_8047B78(void *arg0)
{
  s32 temp_r0_11;
  unsigned long long var_r1_12;
  int new_var;
  temp_r0_11 = 7 & (*((u8 *) (((s8 *) arg0) + 0x2B5)));
  var_r1_12 = temp_r0_11;
  new_var = 1;
  if (temp_r0_11 != 0)
  {
    var_r1_12 = new_var;
  }
  return var_r1_12;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047B98.s\"");
#else
s32 sub_804761C(void *, s32);                   /* extern */

void sub_8047B98(void *arg0, s32 arg1) {
    u8 *var_r0_39;

    (*(u8 *)((s8 *)(arg0) + (0x213))) = (u8) ((0x3F & (*(u8 *)((s8 *)(arg0) + (0x213)))) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x12))) << 0x1D) >> 0x1E) << 6));
    (*(u16 *)((s8 *)(arg0) + (0x212))) = (u16) ((0xFFFFFE7F & (*(u16 *)((s8 *)(arg0) + (0x212)))) | ((arg1 & 3) << 7));
    if (arg1 == 1) {
        var_r0_39 = (u8 *)0x083A0633;
    } else {
        var_r0_39 = (u8 *)0x083A061D;
    }
    (*(u8 **)((s8 *)(arg0) + (0x2B0))) = var_r0_39;
    (*(u8 *)((s8 *)(arg0) + (0x2B4))) = (u8) *(*(u8 **)((s8 *)(arg0) + (0x2B0)));
    sub_804761C(arg0, 0);
}
#endif

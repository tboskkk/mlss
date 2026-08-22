#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047A1C needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8047A1C(void *arg0)
{
  s32 temp_r0_11;
  unsigned long long var_r1_12;
  int new_var;
  temp_r0_11 = 0xC0 & (*((u8 *) (((s8 *) arg0) + 0x2B5)));
  var_r1_12 = temp_r0_11;
  new_var = 1;
  if (temp_r0_11 != 0)
  {
    var_r1_12 = new_var;
  }
  return var_r1_12;
}

s32 sub_8047A3C(void *arg0)
{
  s32 temp_r0_11;
  unsigned long long var_r1_12;
  int new_var;
  temp_r0_11 = 0x30 & (*((u8 *) (((s8 *) arg0) + 0x2B5)));
  var_r1_12 = temp_r0_11;
  new_var = 1;
  if (temp_r0_11 != 0)
  {
    var_r1_12 = new_var;
  }
  return var_r1_12;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047A5C.s\"");
#else
s32 sub_8047A5C(void *arg0, s32 arg1, u16 arg2, s32 arg3, s32 arg4) {
    s32 var_r3_31;
    u16 temp_r2_11;
    u16 temp_r5_13;

    temp_r2_11 = arg2;
    temp_r5_13 = (u16) arg4;
    if ((arg1 == 2) && (temp_r2_11 == 0)) {
        return 0;
    }
    (*(u16 *)((s8 *)(arg0) + (0x322))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0xC)));
    if (arg3 >= 0) {
        var_r3_31 = 1;
    } else {
        var_r3_31 = -1;
    }
    (*(s32 *)((s8 *)(arg0) + (0x328))) = (s32) ((var_r3_31 << 8) * temp_r2_11);
    if (arg1 == 1) {
        (*(s16 *)((s8 *)(arg0) + (0x324))) = (s16) (temp_r5_13 * var_r3_31);
    } else {
        (*(u16 *)((s8 *)(arg0) + (0x332))) = temp_r5_13;
    }
    (*(s32 *)((s8 *)(arg0) + (0x32C))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x330))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x2B6))) = (u8) ((-0x31 & (*(u8 *)((s8 *)(arg0) + (0x2B6)))) | ((arg1 & 3) * 0x10));
    return 1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047B5C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047B5C.s\"");
#else
u16 sub_8047B5C(u16* param_1, u16 param_2) {
    u16* puVar1;
    u16 uVar2;
    
    puVar1 = param_1 + 0x9A;
    uVar2 = *puVar1;
    *param_1 = uVar2;
    *puVar1 = param_2;
    return uVar2;
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

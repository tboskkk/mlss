#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E9BD8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9BD8.s\"");
#else
void sub_80E9BD8(u32* param_1, u32* param_2, s16 param_3, u32 param_4)
{
    u32* puVar1;
    u32 uVar2;
    
    uVar2 = (u32)param_3;
    if (0xf < uVar2) {
        if (0x34 < uVar2) {
            puVar1 = *(u32**)(0x3000FC0);
            puVar1 = puVar1 + (uVar2 - 0x35);
            *puVar1 = param_4;
        }
        else {
            puVar1 = param_1 + (uVar2 - 0x10);
            *puVar1 = param_4;
        }
    }
    else {
        puVar1 = param_2 + uVar2;
        *puVar1 = param_4;
    }
}
#endif

s32 sub_80E9C14(s32 arg0, s32 arg1, s16 arg2)
{
  s16 temp_r2_9;
  int new_var;
  s32 new_var2;
  s32 *var_r0_13;
  temp_r2_9 = arg2;
  new_var = 4;
  if (((s32) temp_r2_9) <= 0xF)
  {
    var_r0_13 = (s32 *) ((temp_r2_9 * new_var) + arg1);
    goto block_5;
  }
  if (((s32) temp_r2_9) > 0x34)
  {
    new_var2 = *((s32 *) 0x03000FC0);
    return *((s32 *) (new_var2 + ((temp_r2_9 - 0x35) * new_var)));
  }
  var_r0_13 = (s32 *) (((temp_r2_9 * new_var) + arg0) - 0x40);
  block_5:
  return *var_r0_13;

}

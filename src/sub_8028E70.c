#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8028E70 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8028E70(void *arg0)
{
  s32 temp_r0_10;
  int new_var;
  unsigned long long var_r1_11;
  temp_r0_10 = 3 & (*((u8 *) (((s8 *) arg0) + 0xF9)));
  var_r1_11 = temp_r0_10;
  new_var = 1;
  if (temp_r0_10 != 0)
  {
    var_r1_11 = new_var;
  }
  return var_r1_11;
 if (1) { } if (1) { } if (new_var) { }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/get_fobj_screen_pos.s\"");
#else
void get_fobj_screen_pos(u32* param_1, u32 param_2, u32* param_3, u32 param_4)
{
    u32* puVar1;
    s32 iVar2;
    s32 iVar3;
    u32 uVar4;
    s32 iVar5;
    s32 iVar6;
    
    puVar1 = (u32*)((u8*)param_1 + (param_2 << 2) + 0x28);
    iVar2 = *(u32*)((u8*)*puVar1 + 0xC);
    if (iVar2 < 0) {
        iVar2 += 0xFF;
    }
    iVar2 >>= 8;
    iVar3 = *(s16*)((u8*)param_1 + 0x27E);
    *(u32*)((u8*)param_3) = iVar2 - iVar3;
    iVar5 = *(u32*)((u8*)*puVar1 + 0x10);
    iVar6 = *(u32*)((u8*)*puVar1 + 0x14);
    iVar5 -= iVar6;
    iVar6 = *(u32*)((u8*)*puVar1 + 0x18);
    iVar5 -= iVar6;
    if (iVar5 < 0) {
        iVar5 += 0xFF;
    }
    iVar5 >>= 8;
    iVar3 = *(s16*)((u8*)param_1 + ((0xA0 << 2) + 0x27E));
    *(u32*)((u8*)param_4) = iVar5 - iVar3;
}
#endif

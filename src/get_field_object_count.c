#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// get_field_object_count needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/get_field_object_count.s\"");
#else
u8 get_field_object_count(u16 arg0, u8* arg1) {
    u8** ptr = (u8**)0x083D6C58;
    u8 val = ptr[arg0 >> 2][1];
    *arg1 = val >> 3;
    return *arg1;
}
#endif

u32 sub_80FB790(u32 param_1, u32 param_2)
{
  u32 new_var;
  u32 *puVar1;
  u8 *puVar2;
  u32 uVar3;
  puVar1 = (u32 *) ((param_1 << 0x10) >> 0xe);
  puVar1 = (u32 *) (((u32) puVar1) + 0x83D6C58);
  puVar2 = (u8 *) (*puVar1);
  uVar3 = (u32) (*(((u8 *) puVar2) + 1));
  uVar3 <<= 2;
  uVar3 |= ((u32) (*puVar2)) >> 6;
  uVar3 &= 0x1f;
  *((u8 *) param_2) = (u8) uVar3;
  new_var = ((u32) (*(((u8 *) puVar2) + 5))) << 8;
  uVar3 = new_var;
  uVar3 |= (u32) (*(((u8 *) puVar2) + 4));
  return ((u32) puVar2) - uVar3;
}

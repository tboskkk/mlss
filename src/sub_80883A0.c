#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80883A0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80883A0.s\"");
#else
void sub_80883A0(u16* param_1, u32 param_2)
{
  u16* puVar1;
  
  if (param_2 != 0) {
    puVar1 = param_1 + 0x3f;
    *puVar1 = 0;
    puVar1 = puVar1 + -1;
    *(u16*)puVar1 = param_2 << 1;
    puVar1 = param_1 + 0x3d;
    *(u16*)puVar1 = param_2 + (param_2 >> 0x1f);
    *(u16*)puVar1 = *(u16*)puVar1 + 0x8000;
    (*(code**)(*(u32*)0x3001038 + (int)*(u32*)0x819832C - (int)*(u32*)0x8198220))
              (param_1);
    *(u16*)(param_1 + 0x3d) = *(u16*)(param_1 + 0x3d) + 0x8000;
  }
  return;
}
#endif

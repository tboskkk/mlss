#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804FC30 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FC30.s\"");
#else
void sub_804FC30(u8* param_1)
{
  u32* puVar1;
  u8* puVar2;
  u8* puVar3;
  u32 uVar4;
  
  puVar1 = (u32*)((u8*)param_1 + 0x25C);
  if (*puVar1 == -1) {
    puVar2 = (u8*)((u8*)param_1 + 0x2B5);
    if ((*(u8*)puVar2 & 7) == 0) {
      puVar3 = (u8*)0x83A0A38;
      uVar4 = *(u8*)((u8*)param_1 + 2) >> 5;
      uVar4 = uVar4 << 2;
      uVar4 = uVar4 + ((u32)*(u8*)((u8*)param_1 + 0x26) << 0x1C) >> 0x1E;
      puVar3 = (u8*)((u8*)puVar3 + uVar4);
      uVar4 = *(u8*)puVar3 & 3;
      uVar4 = uVar4 << 4;
      *(u8*)((u8*)param_1 + 0x353) = *(u8*)((u8*)param_1 + 0x353) & 0x31 | uVar4;
    }
  }
}
#endif

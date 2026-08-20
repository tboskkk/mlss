#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F1A3C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1A3C.s\"");
#else
void sub_80F1A3C(u32* param_1, u32* param_2, u32* param_3, u32* param_4)
{
  u32 *puVar1;
  u32 *puVar2;
  u32 uVar3;
  u32 uVar4;
  u32 uVar5;
  u8 *puVar6;
  
  puVar1 = param_1;
  puVar2 = param_4;
  uVar3 = *(u32*)((u8*)param_4 + 0x0);
  if (uVar3 < 0x40) {
    uVar4 = *(u32*)((u8*)param_1 + 0x14);
    uVar5 = uVar3 << 2;
    puVar1 = (u32*)((u8*)uVar4 + uVar5);
    uVar3 = *(u32*)((u8*)puVar1 + 0x28);
  }
  puVar2 = (u32*)((u8*)param_4 + 0x4);
  uVar4 = 0xA5 << 2;
  puVar1 = (u32*)((u8*)uVar3 + uVar4);
  uVar3 = *(u32*)((u8*)puVar1 + 0x0);
  puVar6 = (u8*)uVar3 + 0x11;
  uVar4 = *puVar6;
  uVar5 = uVar4 << 0x19;
  uVar5 = uVar5 >> 0x1f;
  uVar3 = *(u32*)((u8*)puVar2 + 0x0);
  uVar5 = uVar5 ^ uVar3;
  uVar5 = uVar5 & 1;
  uVar5 = uVar5 << 6;
  uVar4 = uVar4 & 0xff;
  uVar4 = uVar4 | uVar5;
  *(u8*)puVar6 = uVar4;
}
#endif

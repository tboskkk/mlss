#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80883F0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80883F0.s\"");
#else
void sub_80883F0(u16* param_1) {
  u16* puVar1;
  u16* puVar2;
  s16 sVar3;
  s16 sVar4;
  u32 uVar5;
  
  puVar1 = param_1;
  puVar2 = param_1;
  puVar2 = puVar2 + 0x3f;
  puVar1 = puVar1 + 0x3d;
  sVar3 = *(s16*)(puVar1);
  puVar1 = puVar1 + 1;
  sVar4 = *(s16*)(puVar1);
  uVar5 = (u32)sVar3 * (u32)sVar4;
  if (uVar5 < 0x100) {
    uVar5 = uVar5 >> 8;
  }
  else {
    uVar5 = 0xFF;
  }
  puVar2 = (u16*)((u32)puVar2 & 0xFFFF);
  uVar5 = uVar5 + *(u16*)puVar2;
  *(u16*)puVar2 = uVar5;
  uVar5 = uVar5 << 0x10;
  if (uVar5 <= 0x3FFF0000) {
    *(u16*)puVar2 = uVar5 >> 0x10;
    return;
  }
  *(u16*)puVar2 = 0;
  return;
}
#endif

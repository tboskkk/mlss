#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81525C8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81525C8.s\"");
#else
void sub_81525C8(u32* param_1)
{
  u32* puVar1;
  u32* puVar2;
  u32* puVar3;
  s32 iVar4;
  u32 uVar5;
  u32 uVar6;
  u32 uVar7;
  u32 uVar8;
  u32 uVar9;
  u32 uVar10;
  u32 uVar11;
  
  puVar1 = (u32*)((u8*)param_1 + 0x1C98);
  puVar2 = (u32*)((u8*)param_1 + 0x1C9C);
  puVar3 = (u32*)((u8*)param_1 + 0x1CB8);
  uVar5 = *puVar1;
  uVar6 = *puVar2;
  iVar4 = (s32)(uVar5 - uVar6);
  uVar7 = *(u32*)((u8*)param_1 + 0x1C98);
  uVar8 = *(u32*)((u8*)param_1 + 0x1C9C);
  uVar9 = (iVar4 + (iVar4 >> 0x1f)) >> 1;
  uVar10 = uVar8 + uVar9;
  uVar11 = uVar10 + 0xFFFF8800;
  *puVar3 = uVar11;
  if (uVar11 < 0) {
    *puVar3 = 0;
  }
  else {
    uVar5 = *(u32*)((u8*)param_1 + 0x1F20);
    uVar6 = (u32)(u8)uVar5;
    uVar7 = (uVar6 << 5) + 0x083CB0F0;
    uVar8 = *(u16*)((u8*)uVar7 + 0x18);
    uVar9 = (uVar8 - 1) << 8;
    if (uVar11 < uVar9) {
      *puVar3 = uVar9;
    }
  }
  puVar1 = (u32*)((u8*)param_1 + 0x1CBC);
  uVar5 = *puVar1;
  if (uVar5 < 0) {
    *puVar1 = 0;
  }
  else {
    uVar6 = uVar5 >> 8;
    if (0x5f < uVar6) {
      *puVar1 = 0xC00000;
    }
  }
}
#endif

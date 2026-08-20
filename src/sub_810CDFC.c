#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810CDFC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CDFC.s\"");
#else
void sub_810CDFC(u32* param_1)
{
  u32* puVar1;
  s16 sVar2;
  u16 uVar3;
  u16 uVar4;
  u16 uVar5;
  u16 uVar6;
  u16 uVar7;
  u16 uVar8;
  u16 uVar9;
  u16 uVar10;
  u16 uVar11;
  s32 sVar12;
  u32* puVar13;
  
  puVar1 = (u32*)0x3000FD8;
  puVar1 = (u32*)((u32)puVar1 + ((s32)*(s16*)((u32)puVar1 + 0xA4) << 2));
  sVar2 = *(s16*)((u32)puVar1 + 0x12);
  if (sVar2 < 0x40) {
    uVar3 = 0x8;
  }
  else {
    sVar2 = *(s16*)((u32)puVar1 + 0x12);
    if (sVar2 < 0) {
      sVar2 = sVar2 + 0xFF;
    }
    uVar3 = (u16)(sVar2 >> 8);
  }
  puVar13 = (u32*)0x4000018;
  sVar12 = (s32)uVar3 - 0x7;
  uVar4 = (u16)sVar12;
  uVar5 = *(u16*)((u32)param_1 + 0x16);
  uVar6 = uVar5 - 0x6;
  uVar7 = uVar4 | (u16)(uVar6 << 0x10);
  *(u32*)puVar13 = uVar7;
  puVar13 = (u32*)0x4000048;
  *(u32*)puVar13 = 0x3F3B3F3F;
  *(u32*)((u32)puVar13 + -0x8) = 0x7FF07FF0;
  puVar13 = (u32*)0x4000044;
  uVar8 = *(u16*)0x200001A;
  uVar9 = uVar8 + 0x99;
  uVar10 = *(u16*)0x200001A;
  uVar11 = uVar10 + 0x8E;
  uVar11 = (u16)(uVar11 << 8) | uVar9;
  uVar9 = *(u16*)0x200001A;
  uVar10 = uVar9 + 0x99;
  uVar8 = *(u16*)0x200001A;
  uVar8 = uVar8 + 0x8E;
  uVar8 = (u16)(uVar8 << 8) | uVar10;
  uVar8 = uVar11 | (u16)(uVar8 << 0x10);
  *(u32*)puVar13 = uVar8;
}
#endif

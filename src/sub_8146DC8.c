#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8146DC8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146DC8.s\"");
#else
void sub_8146DC8(u32* param_1)
{
  u8* puVar1;
  u8* puVar2;
  u32 uVar3;
  
  puVar1 = (u8*)param_1 + 0x20E;
  *(u8*)puVar1 = *(u8*)puVar1 & 0xFFFFFFF9;
  puVar2 = (u8*)param_1 + 0x20D;
  *(u8*)puVar2 = (*(u8*)puVar2 | 8) & 0xDF;
  uVar3 = *(u32*)((u8*)param_1 + 0x20C);
  *(u32*)((u8*)param_1 + 0x20C) = uVar3 & 0xFFFC7FFF;
  *(u8*)((u8*)param_1 + 0x20F) = *(u8*)((u8*)param_1 + 0x20F) & 0xFFFFFFF9;
  *(u8*)((u8*)param_1 + 0x20C) = (*(u8*)((u8*)param_1 + 0x20C) | 0xE0);
  *(u8*)puVar1 = *(u8*)puVar1 & 0xFFFFFFF9;
  *(u8*)puVar2 = *(u8*)puVar2 & 0xFFFFFFF9;
}
#endif

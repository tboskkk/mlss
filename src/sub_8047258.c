#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047258 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047258.s\"");
#else
void sub_8047258(u32* param_1, u32 param_2)
{
  u32* puVar1;
  u8* puVar2;
  u8 uVar3;
  u32 uVar4;
  
  if (param_2 == 0) {
    uVar4 = param_1[0x294];
    puVar1 = (u32*)((u8*)param_1 + (uVar4 & 0xFFFFFFFC));
    puVar2 = (u8*)param_1 + ((u32)(u8)puVar1[0] * 4 + 0x220);
    uVar3 = *(u8*)((u8*)puVar1 + 0x21);
    *(u8*)puVar2 = uVar3;
    uVar4 = param_1[0x294];
    puVar1 = (u32*)((u8*)param_1 + (uVar4 & 0xFFFFFFFC));
    uVar3 = *(u8*)((u8*)puVar1 + 0x32);
    uVar4 = param_1[0x294] + 0x215;
    uVar3 = uVar3 << 0x19;
    uVar3 = uVar3 >> 0x1f;
    uVar3 = uVar3 << 3;
    uVar4 = *(u8*)uVar4 & 0xf;
    uVar3 = uVar3 | uVar4;
    *(u8*)uVar4 = uVar3;
  }
  else {
    uVar4 = param_1[0x294];
    puVar1 = (u32*)((u8*)param_1 + (uVar4 & 0xFFFFFFFC));
    puVar2 = (u8*)param_1 + ((u32)(u8)puVar1[0] * 4 + 0x1AD);
    uVar3 = *(u8*)((u8*)puVar1 + 0x21);
    *(u8*)puVar2 = uVar3;
    uVar4 = param_1[0x294] + 0x215;
    puVar1 = (u32*)((u8*)param_1 + (uVar4 & 0xFFFFFFFC));
    uVar3 = *(u8*)((u8*)puVar1 + 0x32);
    uVar4 = param_1[0x294] + 0x215;
    uVar3 = uVar3 << 0x19;
    uVar3 = uVar3 >> 0x1f;
    uVar3 = uVar3 << 4;
    uVar4 = *(u8*)uVar4 & 0xf;
    uVar3 = uVar3 | uVar4;
    *(u8*)uVar4 = uVar3;
  }
}
#endif

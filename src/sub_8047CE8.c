#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047CE8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047CE8.s\"");
#else
u32 sub_8047CE8(u8* param_1) {
  u8* puVar1;
  u32 uVar2;
  u32 uVar3;
  
  *(u8*)param_1 = 0xff;
  *(u8*)(param_1 + 0x01) = 0xff;
  *(u8*)(param_1 + 0x00) = 0xff;
  puVar1 = param_1 + 0x24;
  uVar2 = *(u16*)puVar1;
  *(u16*)puVar1 = uVar2 & 0x00000180;
  uVar3 = *(u16*)(param_1 + 0x24);
  *(u32*)(param_1 + 0x24) = uVar3 & 0x00000180;
  return uVar3 & 0x00000180;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047D44.s\"");
#else
#error "TODO: write sub_8047D44 to match asm/nonmatching/sub_8047D44.s, then delete this #error"
#endif

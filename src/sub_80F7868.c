#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7868 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7868.s\"");
#else
void sub_80F7868(u32 param_1,u32* param_2)
{
  u32 *puVar1;
  s32 iVar2;
  u32 uVar3;
  u32 uVar4;
  u32 uVar5;
  u32 uVar6;
  
  uVar3 = param_1;
  uVar6 = 1;
  uVar6 = ~uVar6;
  uVar4 = 0;
  puVar1 = (u32*)0x3000FD8;
  puVar1 = (u32*)*puVar1;
  uVar5 = (u32)(puVar1 + 0x16);
  do {
    iVar2 = uVar4 << 0x10;
    iVar2 = iVar2 >> 0x10;
    uVar4 = uVar4 + 1;
    puVar1 = (u32*)((iVar2 * 4) + uVar5);
    uVar3 = *puVar1;
    if (uVar3 != 0) {
      uVar3 = uVar3 + 0x7E;
      uVar3 = *(u8*)uVar3;
      uVar3 = uVar3 & 6;
      if (uVar3 == 4) {
        uVar3 = uVar3 + 0xF6;
        uVar3 = *(s16*)(uVar3 + (uVar4 * 2));
        if (uVar3 < param_1) {
          param_1 = uVar3;
          uVar6 = iVar2;
        }
      }
    }
    uVar3 = uVar4 << 0x10;
    uVar3 = uVar3 >> 0x10;
    uVar3 = uVar3 + 0x8000;
    uVar3 = uVar3 >> 0x10;
  } while (uVar3 <= 5);
  *param_2 = uVar6;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F78C4.s\"");
#else
void sub_80F78C4(u32 param_1)
{
  u32 *puVar1;
  u16 *puVar2;
  u32 uVar3;
  s32 sVar4;
  s32 sVar5;
  u32 uVar6;
  
  sVar5 = param_1;
  uVar6 = 1;
  sVar4 = 0;
  puVar1 = (u32 *)0x3000FD8;
  puVar1 = (u32 *)*puVar1;
  puVar1 = puVar1 + 0x16;
  do {
    uVar3 = sVar4 << 0x10;
    sVar4 = uVar3 >> 0x10;
    uVar3 = sVar4 * 4;
    puVar2 = (u16 *)(puVar1 + uVar3);
    uVar3 = (u32)*puVar2;
    if (uVar3 != 0) {
      uVar3 = uVar3 + 0x7e;
      if ((*(u8 *)uVar3 & 6) == 4) {
        uVar3 = uVar3 + 0xf6;
        sVar4 = *(s16 *)uVar3;
        if (sVar5 < sVar4) {
          sVar5 = sVar4;
          uVar6 = sVar4;
        }
      }
    }
    uVar3 = uVar6 << 0x19;
    sVar4 = uVar3 >> 0x10;
    sVar4 = sVar4 >> 0x10;
  } while (sVar4 <= 5);
  return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7920.s\"");
#else
#error "TODO: write sub_80F7920 to match asm/nonmatching/sub_80F7920.s, then delete this #error"
#endif

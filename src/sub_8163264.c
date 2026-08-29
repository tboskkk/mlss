#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163264 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8163264(struct Entity *arg0, s32 arg1, s32 arg2) {
    (*(s32 *)((s8 *)(arg0) + (0x10))) = arg1;
    (*(s32 *)((s8 *)(arg0) + (8))) = arg1;
    (*(s32 *)((s8 *)(arg0) + (0))) = arg1;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (4))) = arg2;
    arg0->unk18 = (s32) (arg1 >> 8);
    (*(s32 *)((s8 *)(arg0) + (0x1C))) = (s32) (arg2 >> 8);
    (*(s32 *)((s8 *)(arg0) + (0x24))) = 0;
}

void sub_8163280(u32* param_1, u32 param_2)
{
  u32* puVar1;
  
  puVar1 = param_1;
  if ((param_2 & 1) != 0) {
    free_heap_8018DA8(puVar1);
  }
  return;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163298.s\"");
#else
u32 sub_8163298(u32* param_1, u16 param_2) {
    *(u16*)((u8*)param_1 + 0x20) = param_2;
    *(u32*)((u8*)param_1 + 0x24) = 0;
    *(u32*)((u8*)param_1 + 0x1C) = 0;
    *(u32*)((u8*)param_1 + 0x18) = 0;
    *(u32*)((u8*)param_1 + 0x14) = 0;
    *(u32*)((u8*)param_1 + 0x10) = 0;
    *(u32*)((u8*)param_1 + 0x0C) = 0;
    *(u32*)((u8*)param_1 + 0x08) = 0;
    *(u32*)((u8*)param_1 + 0x04) = 0;
    *(u32*)((u8*)param_1 + 0x00) = 0;
    *(u32*)((u8*)param_1 + 0x2C) = 0;
    *(u32*)((u8*)param_1 + 0x28) = 0;
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81632B4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

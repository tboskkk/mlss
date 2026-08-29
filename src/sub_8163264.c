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

void sub_8163298(void *arg0, s16 arg1)
{
  int new_var2;
  s16 *new_var;
  new_var2 = 0;
  new_var = (s16 *) (((s8 *) arg0) + 0x20);
  *new_var = arg1;
  *((s32 *) (((s8 *) arg0) + 0x24)) = new_var2;
  *((s32 *) (((s8 *) arg0) + 0x1C)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x18)) = new_var2;
  *((s32 *) (((s8 *) arg0) + 0x14)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x10)) = new_var2;
  *((s32 *) (((s8 *) arg0) + 0xC)) = 0;
  *((s32 *) (((s8 *) arg0) + 8)) = new_var2;
  *((s32 *) (((s8 *) arg0) + 4)) = 0;
  *((s32 *) (((s8 *) arg0) + new_var2)) = new_var2;
  *((s32 *) (((s8 *) arg0) + 0x2C)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x28)) = new_var2;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81632B4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

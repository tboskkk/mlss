#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047EFC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047EFC.s\"");
#else
void sub_8047EFC(void *arg0, u16 arg1, s16 arg2, s16 arg3, s32 arg4) {
    u16 temp_r1_10;

    temp_r1_10 = arg1;
    (*(u16 *)((s8 *)(arg0) + (0x23E))) = temp_r1_10;
    (*(u16 *)((s8 *)(arg0) + (0x260))) = temp_r1_10;
    (*(s16 *)((s8 *)(arg0) + (0x262))) = arg2;
    (*(s16 *)((s8 *)(arg0) + (0x264))) = arg3;
    (*(s16 *)((s8 *)(arg0) + (0x266))) = (s16) arg4;
    (*(s32 *)((s8 *)(arg0) + (0x254))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x25C))) = -1;
    (*(s32 *)((s8 *)(arg0) + (0x24C))) = -1;
    (*(s32 *)((s8 *)(arg0) + (0x250))) = -1;
}
#endif

void sub_8047F60(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5)
{
  s8 *new_var;
  s8 *new_var2;
  void *temp_r1_49;
  if (arg5 == 0)
  {
    *((s32 *) (((s8 *) arg0) + 0xC)) = arg1;
    *((s32 *) (((s8 *) arg0) + 0x10)) = arg2;
    *((s32 *) (((s8 *) arg0) + 0x18)) = arg3;
  }
  else
  {
    *((s32 *) (((s8 *) arg0) + 0xC)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0xC))) + arg1);
    *((s32 *) (((s8 *) arg0) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x10))) + arg2);
    *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x18))) + ((*((s32 *) (((s8 *) arg0) + 0x14))) + arg3));
  }
  *((s32 *) (((s8 *) arg0) + 0x14)) = 0;
  if (arg4 != 0)
  {
    new_var = ((s8 *) arg0) + 0xC;
    *((s32 *) (((s8 *) arg0) + 0x34)) = (s32) (*((s32 *) new_var));
    *((s32 *) (((s8 *) arg0) + 0x38)) = (s32) (*((s32 *) (((s8 *) arg0) + 0x10)));
    *((s32 *) (((s8 *) arg0) + 0x3C)) = 0;
    *((s32 *) (((s8 *) arg0) + 0x40)) = (s32) (*((s32 *) (((s8 *) arg0) + 0x18)));
    if ((*((s32 *) (((s8 *) arg0) + 0x290))) != 0)
    {
      temp_r1_49 = *((void **) (((s8 *) arg0) + 0x338));
      new_var2 = (s8 *) (temp_r1_49 + 0x78);
      (*((s32 (**)(void *, s32)) (new_var2 + 4)))(arg0 + (*((s16 *) (((s8 *) temp_r1_49) + 0x78))), 1);
    }
  }
  *((u8 *) (((s8 *) arg0) + 0x217)) = (u8) ((*((u8 *) (((s8 *) arg0) + 0x217))) | 1);
}

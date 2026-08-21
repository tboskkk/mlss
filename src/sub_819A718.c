#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819A718 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_819A718(void *arg0) {
    (*(u16 *)((s8 *)(arg0) + (0))) = (u16) (0xF9FF & (*(u16 *)((s8 *)(arg0) + (0))));
    (*(u8 *)((s8 *)(arg0) + (0x1B))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x1A)));
}

void sub_819A72C(void *arg0, void *arg1)
{
  u16 temp_r3_18;
  u8 temp_r0_9;
  temp_r0_9 = *((u8 *) (((s8 *) arg0) + 0x1B));
  if (temp_r0_9 != 0)
  {
    *((u8 *) (((s8 *) arg0) + 0x1B)) = (u8) (temp_r0_9 - 1);
    return;
  }
  *((u8 *) (((s8 *) arg0) + 0x1B)) = (u8) (*((u8 *) (((s8 *) arg0) + 0x19)));
  ;
  if (0x200 & (*((u16 *) (((s8 *) arg0) + 0))))
  {
    *((u16 *) (((s8 *) arg0) + 0)) = (u16) (0x400 ^ (*((u16 *) (((s8 *) arg0) + 0))));
    (*((s32 (**)(void *)) (((s8 *) arg1) + 0x10)))(arg0);
    return;
  }
  *((u16 *) (((s8 *) arg0) + 0)) = (u16) (0x200 | (*((u16 *) (((s8 *) arg0) + 0))));
}

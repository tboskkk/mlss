#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807462C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_807462C(void *arg0)
{
  u16 temp_r0_11;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) ((temp_r0_11 << 7) << 9)) <= 0)
  {
    *((s32 *) (((s8 *) arg0) + 0x4C)) = 0;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074648.s\"");
#else
#error "TODO: write sub_8074648 to match asm/nonmatching/sub_8074648.s, then delete this #error"
#endif

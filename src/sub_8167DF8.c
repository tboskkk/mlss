#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8167DF8 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8167DF8(void *arg0)
{
  int new_var;
  new_var = 0x2A;
  if (8 & (*((u16 *) (((s8 *) ((void *) 0x0300034C)) + new_var))))
  {
    *((s32 *) (((s8 *) arg0) + 0x54)) = 4;
  }
}

ASM_FUNC("asm/nonmatching/sub_8167E14.s", void sub_8167E14());
ASM_FUNC("asm/nonmatching/sub_8167E30.s", void sub_8167E30(void *arg0, s32 arg2));
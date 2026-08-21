#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80290CC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_80290CC(void *arg0, s32 arg1)
{
  u8 *new_var;
  int new_var2;
  new_var = (u8 *) (((s8 *) arg0) + 0x12C);
  new_var2 = arg1 * 4;
  *new_var = (u8) ((3 & (*((u8 *) (((s8 *) arg0) + 0x12C)))) | new_var2);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80290E0.s\"");
#else
#error "TODO: write sub_80290E0 to match asm/nonmatching/sub_80290E0.s, then delete this #error"
#endif

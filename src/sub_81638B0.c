#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81638B0 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 *sub_81638B0(u32 *param_1)
{
  param_1[1] = 0;
  *param_1 = 0;
  param_1[2] = 0;
  param_1[3] = 0x08CDD0E8;
  return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81638C4.s\"");
#else
#error "TODO: write sub_81638C4 to match asm/nonmatching/sub_81638C4.s, then delete this #error"
#endif

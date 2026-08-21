#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EB048 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80EB048(s32 arg0, s32 arg1, s32 *arg2)
{
  s8 *new_var;
  s32 new_var2;
  new_var = (s8 *) (*((void **) 0x03000FB8));
  new_var2 = *arg2;
  *((s8 *) (new_var + 0x32)) = (s8) new_var2;
  return 1;
}

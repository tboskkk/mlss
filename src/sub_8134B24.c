#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8134B24 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134B24.s\"");
#else
bool32 sub_8134B24(u16 *param_1)
{
  unsigned int new_var;
  if (param_1[1] < param_1[2])
  {
    new_var = 0;
    return new_var;
  }
 new_var = 0; do { } while (new_var);
  return 1;
}
#endif

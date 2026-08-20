#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805CCC0 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_805CCC0(u32* param_1, u32 param_2)
{
  if (param_2 & 1) {
    free_heap_8018DA8(param_1);
  }
}

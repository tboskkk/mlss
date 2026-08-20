#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8199470 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_8199470(u32 param_1)
{
  u16 *ptr = (u16 *) 0x04000006;
  u8 val;
  *((u8 *) param_1) = *ptr;
  return *((u8 *) param_1);
}

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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199480.s\"");
#else
#error "TODO: write sub_8199480 to match asm/nonmatching/sub_8199480.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199498.s\"");
#else
#error "TODO: write sub_8199498 to match asm/nonmatching/sub_8199498.s, then delete this #error"
#endif

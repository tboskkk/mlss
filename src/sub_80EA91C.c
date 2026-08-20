#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA91C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA91C.s\"");
#else
u32 sub_80EA91C(u32* param1) {
    u32* r1 = param1 + 0x98 / sizeof(u32);
    *r1 = *param1;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA928.s\"");
#else
u32 sub_80EA928(u32 param_1,u8* param_2,u32* param_3) {
  u8 *puVar1;
  u32 uVar2;
  
  puVar1 = param_2 + 0xa6;
  uVar2 = *puVar1;
  *param_3 = *(param_1 + (uVar2 << 2));
  *puVar1 = uVar2 + 1;
  return 1;
}
#endif

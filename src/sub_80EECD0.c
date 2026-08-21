#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EECD0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EECD0.s\"");
#else
void sub_80EECD0(u32* param_1, u32* param_2, u32* param_3)
{
  u32* puVar1;
  u32* puVar2;
  
  puVar1 = param_1;
  puVar2 = param_2;
  param_3 = param_3;
  puVar1 = (u32*)param_3[2];
  if (puVar1 < (u32*)0xb) {
    param_3 = (u32*)((int)puVar1 * 4 + 0x80EECF0);
    param_3 = (u32*)*param_3;
    *(undefined4*)puVar2 = *param_3;
    *(undefined4*)puVar1 = *param_3;
    *(undefined4*)param_2 = *param_3;
  }
  else {
    *(undefined4*)puVar2 = 1;
  }
  return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EEE08.s\"");
#else
#error "TODO: write sub_80EEE08 to match asm/nonmatching/sub_80EEE08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EEECC.s\"");
#else
#error "TODO: write sub_80EEECC to match asm/nonmatching/sub_80EEECC.s, then delete this #error"
#endif

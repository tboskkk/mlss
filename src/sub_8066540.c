#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8066540 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8066540(void *arg0, s32 arg1, s32 arg2, s32 arg3)
{
  void *new_var;
  int new_var2;
  void *temp_r0_7;
  temp_r0_7 = arg0 + 0x84;
  new_var = arg0;
  *((s32 *) (((s8 *) new_var) + 0x84)) = arg1;
  new_var2 = 4;
  *((s32 *) (((s8 *) temp_r0_7) + new_var2)) = arg2;
  *((s32 *) (((s8 *) (temp_r0_7 + new_var2)) + new_var2)) = arg3;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066550.s\"");
#else
#error "TODO: write sub_8066550 to match asm/nonmatching/sub_8066550.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806657C.s\"");
#else
#error "TODO: write sub_806657C to match asm/nonmatching/sub_806657C.s, then delete this #error"
#endif

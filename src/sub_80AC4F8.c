#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80AC4F8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC4F8.s\"");
#else
void sub_80AC4F8(void *arg0)
{
  s32 temp_r1_16;
  s8 *new_var;
  void *temp_r0_10;
  temp_r0_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  new_var = (s8 *) (temp_r0_10 + 8);
  temp_r1_16 = 6 & (*((u8 *) (((s8 *) temp_r0_10) + 0x7E)));
  if ((temp_r1_16 == 2) || (temp_r1_16 == 4))
  {
    *((s32 **) (new_var + 0x4C)) = &sub_80AC610;
  }
  *((s32 *) (((s8 *) arg0) + 0x4C)) = 0x080AC685;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809B920 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_809BA28;
void sub_809B920(void *arg0)
{
  s8 *new_var;
  int new_var2;
  void *temp_r2_19;
  new_var2 = -7;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 3, 0x40C2, 0);
    temp_r2_19 = *((void **) (((s8 *) arg0) + 8));
    new_var = (s8 *) temp_r2_19;
    *((u8 *) (((s8 *) temp_r2_19) + 0x12)) = (u8) ((new_var2 & (*((u8 *) (new_var + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_809BA28;
  }
}

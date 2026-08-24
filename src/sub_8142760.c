#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8142760 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_813B650(void *);                            /* extern */
extern s32 sub_813B1E8;
extern s32 sub_813B360;
void sub_8141508(void *arg0, void *arg1, s32 **arg2);                       /* extern */
void sub_8142760(s32 arg0, void *arg1, void *arg2)
{
  s32 temp_r6_12;
  u8 new_var;
  temp_r6_12 = *((s32 *) (((s8 *) arg1) + 0x1B0));
  if ((sub_813B650(arg1) << 0x18) == 0)
  {
    new_var = *((u8 *) (((s8 *) ((*((u16 *) (((s8 *) arg1) + 0x1D0))) + temp_r6_12)) + 0x4E));
    *((s16 *) (((s8 *) arg1) + 0x1D2)) = (s16) new_var;
    *((s32 **) (((s8 *) arg2) + 0)) = &sub_813B1E8;
    *((s32 **) (((s8 *) arg2) + 0xC)) = &sub_813B360;
    *((s32 **) (((s8 *) arg2) + 4)) = (s32 *) &sub_8141508;
  }
}

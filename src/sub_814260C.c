#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814260C needs.

asm_unified(".include \"asm/macros.inc\"");



extern s32 sub_813B1E8;
extern s32 sub_813B360;
void sub_8141D54(void *arg0, void *arg1, s32 **arg2);                       /* extern */

int sub_813B650();

void sub_814260C(s32 arg0, void *arg1, void *arg2)
{
  s32 temp_r6_12;
  u8 new_var;
  temp_r6_12 = *((s32 *) (((s8 *) arg1) + 0x1B0));
  if ((sub_813B650(arg1) << 0x18) == 0)
  {
    new_var = *((u8 *) (((s8 *) ((*((u16 *) (((s8 *) arg1) + 0x1D0))) + temp_r6_12)) + 0x58));
    *((s16 *) (((s8 *) arg1) + 0x1D2)) = (s16) new_var;
    *((s32 **) (((s8 *) arg2) + 0)) = &sub_813B1E8;
    *((s32 **) (((s8 *) arg2) + 0xC)) = &sub_813B360;
    *((s32 **) (((s8 *) arg2) + 4)) = (s32 *) &sub_8141D54;
  }
}

s32 sub_8046A90(void *, s32, s32, s16, s32);    /* extern */
s32 sub_8046D18(void *);                        /* extern */
extern s32 sub_8142EFC;
void sub_8142658(s32 arg0, void *arg1, s32 **arg2)
{
  void *temp_r0_13;
  temp_r0_13 = *((void **) (((s8 *) arg1) + 0x1B0));
  sub_8046A90(arg1, 2, 0, *((s16 *) (((s8 *) temp_r0_13) + 0x24)), (s32) (*((u8 *) (((s8 *) temp_r0_13) + 0x26))));
  sub_8046D18(arg1);
  *((u8 *) (((s8 *) arg1) + 0x1D6)) = (u8) ((-2) & (*(((s8 *) arg1) + 0x1D6)));
  *arg2 = &sub_8142EFC;
}

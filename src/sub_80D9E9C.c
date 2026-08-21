#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80D9E9C needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_80D9F50;
void sub_80D9E9C(void *arg0)
{
  int temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_11;
  if (((s32) (temp_r0_11 << 0x10)) < 0)
  {
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80D9F50;
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80D9FB0;
void sub_80D9EBC(void *arg0)
{
  void *temp_r2_16;
  sub_8082E1C(arg0, 2, 0, 0);
  play_sfx_80195B4(0x38, -1);
  temp_r2_16 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_16) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_16) + 0x12))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80D9FB0;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DA024;
void sub_80D9EF4(void *arg0)
{
  int new_var;
  int new_var2;
  void *temp_r2_21;
  *((s16 *) (((s8 *) arg0) + 0xAC)) = 0;
  new_var2 = 0;
  sub_8082E1C(arg0, 2, new_var2, 0);
  play_sfx_80195B4(0x38, -1);
  temp_r2_21 = *((void **) (((s8 *) arg0) + 8));
  new_var = *((u8 *) (((s8 *) temp_r2_21) + 0x12));
  new_var = ((-7) & new_var) | 2;
  *((u8 *) (((s8 *) temp_r2_21) + 0x12)) = (u8) new_var;
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DA024;
}

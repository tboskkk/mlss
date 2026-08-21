#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047FDC needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8021ED8();                              /* extern */
s32 sub_8047DC8(void *, s32);                   /* extern */
void sub_8047FDC(void *arg0)
{
  u32 temp_r4_25;
  int new_var3;
  s8 *new_var;
  void *temp_r2_27;
  u32 new_var2;
  if ((*((u8 *) (((s8 *) arg0) + 0x222))) != 0xFF)
  {
    *((u8 *) (((s8 *) arg0) + 0x20F)) = (u8) ((*((u8 *) (new_var = ((s8 *) arg0) + 0x20F))) | 2);
    new_var2 = (((u32) ((*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x294)))) + 0x12))) << 0x1D)) >> 6) >> 24;
    temp_r4_25 = new_var2;
    sub_8021ED8();
    temp_r2_27 = *((void **) (((s8 *) arg0) + 0x294));
    new_var3 = temp_r4_25 * 2;
    *((u8 *) (((s8 *) temp_r2_27) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_27) + 0x12))) | new_var3);
    if (0x40 & (*((u8 *) (((s8 *) arg0) + 0x20E))))
    {
      sub_8047DC8(arg0, 0xFF);
    }
  }
}

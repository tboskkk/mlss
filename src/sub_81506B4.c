#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81506B4 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_814E8B0(s32, s32, void *);              /* extern */
s32 sub_815041C(s32, s32);                      /* extern */

void sub_81506B4(s32 arg0, s32 arg1, void *arg2) {
    sub_815041C(arg1, 0);
    (*(s32 (**)(s32, s32, void *))((s8 *)(arg2) + (0xC))) = sub_814E8B0;
    sub_814E8B0(arg0, arg1, arg2);
}

s8 sub_8139E88(s32, void *, s32);               /* extern */
s32 sub_815033C(void *, s32);                   /* extern */
void sub_81506DC(s32 arg0, void *arg1, void *arg2)
{
  u16 temp_r0_26;
  if (sub_8139E88(arg0, arg1, 0) == (-1))
  {
    sub_815033C(arg1, 1);
    return;
  }
  temp_r0_26 = (*((u16 *) (((s8 *) arg1) + 0x1D2)) = (*((u16 *) (((s8 *) arg1) + 0x1D2))) - 1);
  if ((temp_r0_26 << 0x10) == 0)
  {
    *((s32 *) (((s8 *) arg2) + 0)) = (s32) (*((s32 *) (((s8 *) arg2) + 0xC)));
  }
}

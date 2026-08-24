#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81066DC needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_807F6D0();                              /* extern */
void sub_81063A8(void *arg0);                   /* extern */
void sub_81066DC(void *arg0)
{
  void *temp_r1_18;
  s16 new_var;
  new_var = (s16) (*((u16 *) (((s8 *) arg0) + 0x10)));
  if (new_var != 0)
  {
    *((u16 *) (((s8 *) arg0) + 0x10)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0x10))) - 1);
    return;
  }
  temp_r1_18 = *((void **) 0x03000FD8);
  if (((*((s32 *) (((s8 *) temp_r1_18) + 0x27C))) | (*((s32 *) (((s8 *) temp_r1_18) + 0x280)))) == 0)
  {
    sub_807F6D0();
    *((u16 *) (((s8 *) arg0) + 0x10)) = 0x20U;
    *((s32 **) (((s8 *) arg0) + 4)) = (s32 *) &sub_81063A8;
  }
}

ASM_FUNC("asm/nonmatching/sub_8106724.s", void sub_8106724(void));
ASM_FUNC("asm/nonmatching/sub_8106790.s", void sub_8106790(void *arg0));
#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80746EC needs.

asm_unified(".include \"asm/macros.inc\"");


void sub_807470C(void *arg0);                       /* extern */
void sub_80746EC(void *arg0)
{
  unsigned int temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_11;
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_807470C;
  }
}

ASM_FUNC("asm/nonmatching/sub_807470C.s", void sub_807470C(void *arg0));
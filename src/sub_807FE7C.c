#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FE7C needs.

asm_unified(".include \"asm/macros.inc\"");


void sub_807FEB4(void *arg0);                       /* extern */
void sub_807FE7C(void *arg0)
{
  s32 *new_var2;
  void *temp_r2_16;
  s8 *new_var;
  void *temp_r3_14;
  *((u8 *) (((s8 *) arg0) + 0x79)) = (u8) ((*((u8 *) (((s8 *) arg0) + 0x79))) | 0x10);
  temp_r3_14 = *((void **) 0x03000FD8);
  new_var2 = (s32 *) &sub_807FEB4;
  temp_r2_16 = *((void **) (((s8 *) temp_r3_14) + 0x3C));
  *((void **) (((s8 *) temp_r3_14) + 0x3C)) = (void *) (*((void **) (((s8 *) temp_r2_16) + 0)));
  *((void **) (((s8 *) temp_r2_16) + 0)) = (void *) (*((void **) (((s8 *) temp_r3_14) + 0x4C)));
  *((s32 **) (((s8 *) temp_r2_16) + 4)) = new_var2;
  *((s16 *) (((s8 *) temp_r2_16) + 0x10)) = 0;
  new_var = ((s8 *) temp_r2_16) + 8;
  *((void **) (((s8 *) temp_r3_14) + 0x4C)) = temp_r2_16;
  *((void **) new_var) = arg0;
}

ASM_FUNC("asm/nonmatching/sub_807FEB4.s", void sub_807FEB4(void *arg0));
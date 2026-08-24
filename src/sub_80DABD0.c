#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DABD0 needs.

asm_unified(".include \"asm/macros.inc\"");



void sub_80DA4B8(void *arg0, s32 arg3);                       /* extern */

int sub_8082E1C();

void sub_80DABD0(void *arg0)
{
  int new_var;
  void *temp_r2_12;
  sub_8082E1C(arg0, 2, 0, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  new_var = *((u8 *) (((s8 *) temp_r2_12) + 0x12));
  new_var = ((-7) & new_var) | 2;
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) new_var;
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80DA4B8;
}

ASM_FUNC("asm/nonmatching/sub_80DABFC.s", void sub_80DABFC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80DAC80.s", void sub_80DAC80(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80DAD00.s", void sub_80DAD00(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80DAD84.s", void sub_80DAD84(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80DAE0C.s", void sub_80DAE0C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80DAE7C.s", void sub_80DAE7C(void *arg0));
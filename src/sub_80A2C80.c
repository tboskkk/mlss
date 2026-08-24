#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A2C80 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_80A2BC0;
void sub_80A2C80(void *arg0)
{
  s8 *new_var3;
  void *new_var;
  int new_var2;
  new_var3 = ((s8 *) arg0) + 0xB2;
  new_var2 = 0xFE4D;
  *((s16 *) new_var3) = new_var2;
  new_var = arg0;
  *((s32 **) (((s8 *) new_var) + 0x4C)) = &sub_80A2BC0;
}

ASM_FUNC("asm/nonmatching/sub_80A2C98.s", s32 sub_80A2C98(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80A2D2C.s", void sub_80A2D2C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80A2E7C.s", void sub_80A2E7C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80A2EFC.s", void sub_80A2EFC(void *arg0));
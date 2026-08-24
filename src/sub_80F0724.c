#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0724 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_803E9F0(s32);                               /* extern */
s32 sub_80F0724(void *arg0, void *arg1)
{
  int new_var;
  new_var = 1;
  if ((sub_803E9F0(*((s32 *) (((s8 *) arg0) + 0x14))) << 0x18) == 0)
  {
    return new_var;
  }
  if (new_var)
  {
    *((s32 *) (((s8 *) arg1) + 0)) = (s32) (*((s32 *) (((s8 *) arg1) + 0x14)));
  }
  return 0;
}

ASM_FUNC("asm/nonmatching/sub_80F0744.s", s32 sub_80F0744(void *arg0, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80F0780.s", s32 sub_80F0780(void *arg0, s32 *arg2));
ASM_FUNC("asm/nonmatching/sub_80F0794.s", s32 sub_80F0794(void *arg0, s32 *arg2));
ASM_FUNC("asm/nonmatching/sub_80F0814.s", s32 sub_80F0814(void *arg0, void *arg1, s32 *arg2));
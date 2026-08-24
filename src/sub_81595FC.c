#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81595FC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81595FC(void *arg0)
{
  s8 *new_var;
  u16 temp_r2_23;
  s8 *new_var2;
  new_var2 = (new_var = (s8 *) ((void *) 0x0300034C)) + 0x28;
  if (0x10 & (*((u16 *) new_var2)))
  {
    *((s32 *) (((s8 *) arg0) + 0x508)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x508))) + 0x400);
  }
  ;
  if (0x20 & (*((u16 *) (new_var + 0x28))))
  {
    *((s32 *) (((s8 *) arg0) + 0x508)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x508))) + 0xFFFFFC00);
  }
  if (0x80 & (*((u16 *) (new_var + 0x28))))
  {
    *((s32 *) (((s8 *) arg0) + 0x50C)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x50C))) + 0x400);
  }
  if (0x40 & (*((u16 *) (new_var + 0x28))))
  {
    *((s32 *) (((s8 *) arg0) + 0x50C)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x50C))) + 0xFFFFFC00);
  }
}

ASM_FUNC("asm/nonmatching/sub_8159674.s", void sub_8159674(void *arg0, u8 arg1));
ASM_FUNC("asm/nonmatching/sub_81596E4.s", void sub_81596E4(void *arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_8159800.s", void sub_8159800(void *arg0, void *arg1));
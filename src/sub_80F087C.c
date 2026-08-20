#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F087C needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80F087C(void *arg0, void *arg1)
{
  int new_var3;
  s8 *new_var;
  void *new_var2;
  new_var3 = 1;
  new_var = (s8 *) arg0;
  new_var2 = *((void **) (new_var + 0x14));
  if (0x10 & (*((u8 *) (((s8 *) new_var2) + 0x208))))
  {
    return 1;
  }
  *((s32 *) (((s8 *) arg1) + 0)) = (s32) (*((s32 *) (((s8 *) arg1) + 0x14)));
  if (new_var3)
  {
    return 0;
  }
}

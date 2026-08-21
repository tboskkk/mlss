#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8134B24 needs.

asm_unified(".include \"asm/macros.inc\"");

bool32 sub_8134B24(u16 *param_1)
{
  unsigned int new_var;
  if (param_1[1] < param_1[2])
  {
    new_var = 0;
    return new_var;
  }
 new_var = 0; do { } while (new_var);
  return 1;
}

s32 sub_8134AA8(void *);                        /* extern */
void sub_8134B38(void *arg0, u16 arg1, unsigned long arg2)
{
  u16 *new_var;
  int new_var2;
  u16 temp_r2_11;
  u16 var_r1_9;
  var_r1_9 = arg1;
  temp_r2_11 = arg2;
  if (((u32) var_r1_9) > 3U)
  {
    var_r1_9 = 3;
  }
  new_var = (u16 *) (((s8 *) arg0) + 4);
  new_var2 = 0;
  *((u16 *) (((s8 *) arg0) + new_var2)) = var_r1_9;
  *((s16 *) (((s8 *) arg0) + 2)) = new_var2;
  *new_var = temp_r2_11;
  if (temp_r2_11 == new_var2)
  {
    *((u16 *) (((s8 *) arg0) + 4)) = 1U;
    sub_8134AA8(arg0);
  }
}

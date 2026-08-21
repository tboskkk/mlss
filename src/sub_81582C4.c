#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81582C4 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81582C4(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x20))) = 0;
}

s32 sub_8158258(void *);                        /* extern */
void sub_81582CC(void *arg0, u16 arg1)
{
  s16 temp_r0_19;
  s32 var_r0_12;
  s32 var_r0_24;
  temp_r0_19 = (s16) arg1;
  var_r0_12 = (*((s32 *) (((s8 *) arg0) + 0x1C))) + ((s16) arg1);
  if (var_r0_12 < 0)
  {
    var_r0_12 = 0;
  }
  *((s32 *) (((s8 *) arg0) + 0x1C)) = var_r0_12;
  if (((s32) temp_r0_19) < 0)
  {
    *((s32 *) (((s8 *) arg0) + 0x24)) = 0x64;
    var_r0_24 = 1;
    goto block_6;
  }
  if (((s32) temp_r0_19) > 0)
  {
    *((s32 *) (((s8 *) arg0) + 0x24)) = 0x64;
    var_r0_24 = 2;
    block_6:
    *((s32 *) (((s8 *) arg0) + 0x20)) = var_r0_24;

  }
  sub_8158258(arg0);
}

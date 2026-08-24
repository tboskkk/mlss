#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81070B8 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8082B00();                                  /* extern */
extern s32 sub_80FD44C;
extern s32 sub_810124C;
void sub_81070B8(void *arg0)
{
  u8 temp_r2_11;
  s32 *var_r0_37;
  int new_var2;
  void *temp_r1_9;
  void *temp_r3_10;
  int new_var;
  temp_r1_9 = *((void **) 0x03000FD8);
  temp_r3_10 = *((void **) (((s8 *) temp_r1_9) + 0x7C));
  ;
  if ((*((u8 *) (((s8 *) temp_r1_9) + 0xB))) & 2)
  {
    new_var2 = 3;
    *((u8 *) (((s8 *) temp_r1_9) + 0xB)) = (u8) ((-new_var2) & (*((u8 *) (((s8 *) temp_r1_9) + 0xB))));
    return;
  }
  if ((*((s16 *) (((s8 *) temp_r3_10) + 0xF6))) != 0)
  {
    new_var = 0x7E;
    if (!(0x38 & (*((u8 *) (((s8 *) temp_r3_10) + new_var)))))
    {
 do { var_r0_37 = &sub_80FD44C; } while (0);
      goto block_7;
    }
  }
  else
    if ((sub_8082B00() << 0x18) == 0)
  {
    var_r0_37 = &sub_810124C;
    block_7:
    *((s32 **) (((s8 *) arg0) + 4)) = var_r0_37;

  }
}

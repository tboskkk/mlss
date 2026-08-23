#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8160EC4 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 * sub_8160EC4(s32 * a0) {
    *(a0 + 513) = 0;
    *(a0 + 515) = 0;
    return a0;
}

s32 process_remove(void *, s32);                /* extern */
void sub_8160EDC(void *arg0)
{
  void *temp_r0_18;
  s8 *new_var;
  void *temp_r0_42;
  void *temp_r0_56;
  void *temp_r1_27;
  void *temp_r1_65;
  void *temp_r2_24;
  void *temp_r2_43;
  void *temp_r2_62;
  new_var = (s8 *) ((void *) 0x0300034C);
  if (4 & (*((u16 *) (new_var + 0x2A))))
  {
    if (arg0 != ((void *) 0))
    {
      *((s32 *) (((s8 *) arg0) + 0x18)) = 0x08CDCFB0;
      temp_r0_18 = *((void **) (((s8 *) arg0) + 0x1C));
      if (temp_r0_18 != ((void *) 0))
      {
        process_remove(temp_r0_18, 3);
      }
      temp_r2_24 = *((void **) (((s8 *) arg0) + 0x20));
      if (((void *) 0) != temp_r2_24)
      {
        temp_r1_27 = *((void **) (((s8 *) temp_r2_24) + 4));
        (*((s32 (**)(void *, s32)) (((s8 *) temp_r1_27) + 0xC)))(temp_r2_24 + (*((s16 *) (((s8 *) temp_r1_27) + 8))), 3);
      }
      process_remove(arg0, 3);
    }
  }
  else
  {
    temp_r0_42 = *((void **) (((s8 *) arg0) + 0x20));
    temp_r2_43 = *((void **) (((s8 *) temp_r0_42) + 4));
    if (((*((s32 (**)(void *, void *)) (((s8 *) temp_r2_43) + 0x14)))(temp_r0_42 + (*((s16 *) (((s8 *) temp_r2_43) + 0x10))), arg0) != 0) && (arg0 != ((void *) 0)))
    {
      *((s32 *) (((s8 *) arg0) + 0x18)) = 0x08CDCFB0;
      temp_r0_56 = *((void **) (((s8 *) arg0) + 0x1C));
      if (temp_r0_56 != ((void *) 0))
      {
        process_remove(temp_r0_56, 3);
      }
      temp_r2_62 = *((void **) (((s8 *) arg0) + 0x20));
      if (temp_r2_62 != ((void *) 0))
      {
        temp_r1_65 = *((void **) (((s8 *) temp_r2_62) + 4));
        (*((s32 (**)(void *, s32)) (((s8 *) temp_r1_65) + 0xC)))(temp_r2_62 + (*((s16 *) (((s8 *) temp_r1_65) + 8))), 3);
      }
      process_remove(arg0, 3);
    }
  }
}

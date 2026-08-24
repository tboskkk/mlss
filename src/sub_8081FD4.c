#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8081FD4 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 process_disable(s32);                       /* extern */
s32 sub_8081FB0(void *);                        /* extern */
void sub_8081FD4(void *arg0)
{
  u8 temp_r1_12;
  int new_var3;
  void *temp_r0_9;
  s8 *new_var;
  s32 new_var2;
  temp_r0_9 = *((void **) 0x03000FD8);
  temp_r1_12 = *((u8 *) (((s8 *) temp_r0_9) + 0x2BF));
  if (0x20 & temp_r1_12)
  {
    new_var = ((s8 *) temp_r0_9) + 0x2BF;
    new_var3 = -0x21;
    new_var3 = new_var3 & temp_r1_12;
    *((u8 *) new_var) = (u8) new_var3;
    process_disable(new_var2 = *((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + 0x244)));
    *((s32 (**)(void *)) (((s8 *) arg0) + 4)) = sub_8081FB0;
    sub_8081FB0(arg0);
  }
}

s32 sprite_heap_free(s32);                      /* extern */
u8 sub_8082B00();                                   /* extern */
extern s32 sub_8081188;
void sub_808201C(void *arg0)
{
  u8 temp_r7_13;
  void *temp_r0_31;
  temp_r7_13 = sub_8082B00();
  if (temp_r7_13 == 0)
  {
    temp_r0_31 = (s8 *) (*(*((void ***) 0x03000FD8)));
    sprite_heap_free(*((s32 *) (((s8 *) (*((void **) (temp_r0_31 + 0x48)))) + 8)));
    temp_r0_31 = sub_8020DD0(0, 0x2091, 0, -1, -1, -1, -1);
    sub_801E150(temp_r0_31, 0, -1, 0, (s32) temp_r7_13);
    *(*((void ***) 0x03000FD8)) = temp_r0_31;
    *((s32 **) (((s8 *) arg0) + 4)) = &sub_8081188;
  }
}

ASM_FUNC("asm/nonmatching/sub_8082088.s", void sub_8082088(void *arg0));
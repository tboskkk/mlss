#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8091B90 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_808DD2C(void *);                        /* extern */
void sub_8091B90(void *arg0)
{
  u16 temp_r1_34;
  void *temp_r1_8;
  int new_var;
  temp_r1_8 = *((void **) (((s8 *) arg0) + 0x28));
  new_var = -5;
  if (temp_r1_8 != ((void *) 0))
  {
    *((u8 *) (((s8 *) temp_r1_8) + 0x111)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r1_8) + 0x111))));
  }
  if (0x38 & (*((u8 *) (((s8 *) arg0) + 0x76))))
  {
    sub_808DD2C(arg0);
    return;
  }
  temp_r1_34 = *((u16 *) (((s8 *) arg0) + 0xAC));
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (u16) (temp_r1_34 + 1);
  if (((s32) ((s16) temp_r1_34)) > 0x13)
  {
    sub_808DD2C(arg0);
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_808DD2C(void *);                        /* extern */
extern s32 sub_80913A4;

void sub_8091BE0(void *arg0) {
    s32 temp_r0_20;
    void *temp_r1_27;
    void *temp_r2_41;

    if (0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)))) {
        sub_808DD2C(arg0);
        return;
    }
    temp_r0_20 = (*(s32 *)((s8 *)(arg0) + (0x9C)));
    if (temp_r0_20 > 0) {
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = (s32) (temp_r0_20 - 1);
        return;
    }
    temp_r1_27 = (*(void **)((s8 *)(arg0) + (0x30)));
    (*(s32 *)((s8 *)(temp_r1_27) + (0xA0))) = 0xB400;
    (*(s32 *)((s8 *)(temp_r1_27) + (0xA4))) = 0xFFFFFE34;
    sub_8082E1C(arg0, 2, 0, 0);
    temp_r2_41 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u8 *)((s8 *)(temp_r2_41) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_41) + (0x12))) | 0x10);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80913A4;
}

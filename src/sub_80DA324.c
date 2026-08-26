#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DA324 needs.

asm_unified(".include \"asm/macros.inc\"");



void sub_80DA39C(void *arg0);

s32 sub_8082E1C();
void sub_80DA368(void *arg0);
void sub_80DA324(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        arg0->handler = (s32 *) &sub_80DA368;
    }
}

s32 sub_8087540(void *);                        /* extern */

void sub_80DA340(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 6, 0, 0);
        sub_8087540(arg0);
    }
}

void sub_80DA368(void *arg0)
{
  unsigned int temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_11;
  if (((s32) (temp_r0_11 << 0x10)) < 0)
  {
    sub_8082E1C(arg0, 6, 0, 0);
    *((u16 *) (((s8 *) arg0) + 0xAC)) = 0U;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80DA39C;
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DA3E0;
void sub_80DA39C(void *arg0)
{
  void **new_var2;
  s8 *new_var3;
  u16 temp_r0_11;
  int new_var4;
  int new_var;
  void *temp_r2_21;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (temp_r0_11 = (*((u16 *) (arg0 + 0xAC))) - 1);
  new_var4 = -7;
  new_var = 0x10;
  if (((s32) (temp_r0_11 << new_var)) < 0)
  {
    sub_8082E1C(arg0, 7, 0, 0);
    new_var3 = ((s8 *) arg0) + 0xAC;
    temp_r2_21 = *((void **) (((s8 *) arg0) + 8));
    new_var2 = &temp_r2_21;
    *((u8 *) (((s8 *) (*new_var2)) + 0x12)) = (u8) ((new_var4 & (*((u8 *) (((s8 *) (*new_var2)) + 0x12)))) | 2);
    *((u16 *) new_var3) = 0U;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DA3E0;
  }
}

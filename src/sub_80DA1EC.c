#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DA1EC needs.

asm_unified(".include \"asm/macros.inc\"");





void sub_80DA2C4(void *arg0);

s32 sub_8082E1C();
s32 sub_80DA300(void *arg0);

void sub_80DA264(void *arg0);
extern s32 sub_80D9D5C;

void sub_80DA1EC(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        arg0->handler = &sub_80D9D5C;
    }
}

void sub_80DA208(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        arg0->handler = (s32 *) &sub_80DA264;
    }
}

void sub_80DA224(void *arg0)
{
  void *temp_r2_21;
  int new_var;
  new_var = -7;
  if ((*((s32 *) (((s8 *) arg0) + 0x80))) == 0)
  {
    play_sfx_80195B4(0xAF, -1);
    sub_8082E1C(arg0, 3, 0, 0);
    temp_r2_21 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_21) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_21) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_80DA2C4);
  }
}

s32 sub_807F4FC(void *);                        /* extern */
extern s32 sub_80D9E34;
extern s32 sub_80DA324;
void sub_80DA264(void *arg0)
{
  int new_var2;
  unsigned int temp_r0_11;
  void *temp_r2_32;
  s32 **new_var;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_11;
  new_var2 = -7;
  if (((s32) (temp_r0_11 << 0x10)) < 0)
  {
    sub_807F4FC(arg0);
    new_var = (s32 **) (((s8 *) arg0) + 0x64);
    *((s32 **) (((s8 *) arg0) + 0x5C)) = &sub_80D9E34;
    *((s32 **) (((s8 *) arg0) + 0x60)) = (s32 *) &sub_80DA300;
    *new_var = (s32 *) &sub_80DA300;
    sub_8082E1C(arg0, 5, 0, 0);
    play_sfx_80195B4(0x38, -1);
    temp_r2_32 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_32) + 0x12)) = (u8) ((new_var2 & (*((u8 *) (((s8 *) temp_r2_32) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DA324;
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DA340;
void sub_80DA2C4(void *arg0)
{
  int new_var;
  void *temp_r2_19;
  new_var = -7;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 5, 0, 0);
    temp_r2_19 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_19) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_19) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DA340;
  }
}

s32 sub_8087124(s32);                               /* extern */
s32 sub_80D9F34(s32);                           /* extern */

s32 sub_80DA300(void *arg0) {
    s32 temp_r0_11;
    s32 temp_r5_9;

    temp_r5_9 = (*(s32 *)((s8 *)(arg0) + (0x28))) + 8;
    temp_r0_11 = sub_8087124(temp_r5_9);
    if (temp_r0_11 == 0) {
        sub_80D9F34(temp_r5_9);
    }
    return temp_r0_11;
}

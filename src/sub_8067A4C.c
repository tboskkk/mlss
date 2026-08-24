#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8067A4C needs.

asm_unified(".include \"asm/macros.inc\"");




s32 sub_8082E1C();

s32 sub_807C298();

extern s32 sub_80681EC;
int sub_810DD7C();

extern s32 sub_808750C;

void sub_8067A4C(struct Entity *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + 0x200);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) - (*(s32 *)((s8 *)(arg0) + (0x8C))));
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x8C))) + 0x66);
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        arg0->handler = &sub_808750C;
    }
}

ASM_FUNC("asm/nonmatching/sub_8067A84.s", void sub_8067A84(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_8067C98.s", void sub_8067C98(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8067DC8.s", void sub_8067DC8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8067E4C.s", void sub_8067E4C(void *arg0, s32 arg3));
void sub_8067E4C(void *arg0, s32 arg3);                       /* extern */
void sub_8067F94(void *arg0)
{
  s32 *var_r0_46;
  u16 *temp_r1_34;
  unsigned int temp_r0_29;
  u16 temp_r0_36;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    if ((*((s16 *) (((s8 *) arg0) + 0xAC))) != 0)
    {
      sub_8082E1C(arg0, 6, 0, 0);
      goto block_3;
    }
    goto block_6;
  }
  block_3:
  temp_r0_29 = (*((u16 *) (((s8 *) arg0) + 0xAE))) - 1;

  *((u16 *) (((s8 *) arg0) + 0xAE)) = temp_r0_29;
  if (((s32) (temp_r0_29 << 0x10)) <= 0)
  {
    temp_r1_34 = (arg0 + 0xAE) - 2;
    temp_r0_36 = (*temp_r1_34 = (*temp_r1_34) - 1);
    if (((s32) (temp_r0_36 << 0x10)) > 0)
    {
      sub_8082E1C(arg0, 7, 0, 0);
      var_r0_46 = (s32 *) &sub_8067E4C;
    }
    else
    {
      block_6:
      sub_8082E1C(arg0, 9, 0, 0);

      var_r0_46 = &sub_808750C;
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = var_r0_46;
  }
}

ASM_FUNC("asm/nonmatching/sub_806800C.s", s32 sub_806800C(void *arg0));
s32 sub_8068058(struct Entity *arg0) {
    sub_810DD7C(arg0, (*(s32 *)((s8 *)(arg0) + (0x2C))), 0xFF);
    arg0->handler = &sub_80681EC;
    return 0;
}

void sub_8068074(void *arg0)
{
  s32 temp_r1_8;
  s32 var_r0_10;
  temp_r1_8 = *((s32 *) (((s8 *) arg0) + 0x10));
  var_r0_10 = temp_r1_8 + 0xFFFFFECD;
  *((s32 *) (((s8 *) arg0) + 0x10)) = var_r0_10;
  if (var_r0_10 < 0)
  {
    var_r0_10 = temp_r1_8 - 0x34;
  }
  temp_r1_8 = var_r0_10 >> 8;
  if (((s32) temp_r1_8) <= (-0x20))
  {
    sub_807C298(arg0);
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806822C;
void sub_80680A0(void *arg0)
{
  s32 new_var;
  if ((*((s32 *) (((s8 *) arg0) + 0x80))) == 0)
  {
    sub_8082E1C(arg0, 6, 0, 0);
    new_var = *((s32 *) (((s8 *) arg0) + 0x9C));
    *((s16 *) (((s8 *) arg0) + 0xAE)) = (s16) new_var;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_806822C;
  }
}

ASM_FUNC("asm/nonmatching/sub_80680D4.s", s32 sub_80680D4(void *arg0, void *arg1));
s32 sub_807C298(void *);                        /* extern */

void sub_8068124(void *arg0) {
    s32 var_r1_11;

    var_r1_11 = (*(s32 *)((s8 *)(arg0) + (0x10))) - (*(s32 *)((s8 *)(arg0) + (0x84)));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r1_11;
    if (var_r1_11 < 0) {
        var_r1_11 += 0xFF;
    }
    if ((s32) (var_r1_11 >> 8) < -0x20) {
        sub_807C298(arg0);
    }
}

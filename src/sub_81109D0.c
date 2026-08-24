#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81109D0 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();

extern s32 sub_808750C;

void sub_81109D0(struct Entity *arg0) {
    s32 temp_r0_10;

    temp_r0_10 = (*(s32 *)((s8 *)(arg0) + (0x18))) + 0xFFFFFE00;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_10;
    if (temp_r0_10 <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        arg0->handler = &sub_808750C;
    }
}

extern s32 sub_81101BC;
void sub_81109F4(void *arg0)
{
  void *temp_r2_12;
  sub_8082E1C(arg0, 2, 0, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_12) + 0x12))) | 2);
  *((s8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0x113)) = 0;
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_81101BC;
}

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_807FB64(void *);                        /* extern */
s32 sub_80883A0(void *, s32);                   /* extern */
void sub_8110A94(void *arg0);
void sub_8110A30(struct Entity *arg0) {
    s32 temp_r0_24;
    s32 temp_r0_29;
    s32 temp_r0_37;
    void *temp_r1_18;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_80883A0(arg0, 0x20);
        temp_r1_18 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)));
        temp_r0_24 = (*(s32 *)((s8 *)(temp_r1_18) + (0xD8))) + 0x2000;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r0_24;
        (*(s32 *)((s8 *)(arg0) + (0x38))) = temp_r0_24;
        temp_r0_29 = (*(s32 *)((s8 *)(temp_r1_18) + (0xDC)));
        (*(s32 *)((s8 *)(arg0) + (0x14))) = temp_r0_29;
        (*(s32 *)((s8 *)(arg0) + (0x3C))) = temp_r0_29;
        temp_r0_37 = (*(s32 *)((s8 *)(temp_r1_18) + (0xE0))) + 0x800;
        (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_37;
        (*(s32 *)((s8 *)(arg0) + (0x40))) = temp_r0_37;
        sub_807FB64((*(void **)((s8 *)(arg0) + (8))));
        stop_sfx_80195A8(0x119);
        arg0->handler = (s32 *) &sub_8110A94;
    }
}

s32 sub_807BC90(void *);                        /* extern */
s32 sub_807F4FC(void *);                        /* extern */
u8 sub_80883F0();                                   /* extern */
s32 sub_80DF024(s32, s32, s32, s32, s32);       /* extern */
s32 sub_8110B04(void *arg0);                       /* extern */
void sub_8110B3C(void *arg0);
void sub_8110A94(void *arg0)
{
  u8 temp_r5_11;
  void *temp_r2_21;
  int new_var;
  new_var = -7;
  temp_r5_11 = sub_80883F0();
  if (temp_r5_11 == 0)
  {
    sub_8082E1C(arg0, 0x10, 0, 0);
    sub_807BC90(*((void **) (((s8 *) arg0) + 8)));
    temp_r2_21 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_21) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_21) + 0x12)))) | 2);
    sub_80DF024(0x219E, 0, 0, 0, (s32) temp_r5_11);
    sub_807F4FC(arg0);
    *((s32 **) (((s8 *) arg0) + 0x60)) = (s32 *) &sub_8110B04;
    play_sfx_80195B4(0xD5, -1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8110B3C;
  }
}

ASM_FUNC("asm/nonmatching/sub_8110B04.s", s32 sub_8110B04(void *arg0));
void sub_8110B84(void *arg0);                       /* extern */
void sub_8110B3C(void *arg0)
{
  void **new_var;
  s8 new_var3;
  void *new_var2;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 0x11, 0, 0);
    sub_80883A0(arg0, 0x10);
    new_var2 = *(new_var = &(*((void **) (((s8 *) arg0) + 0x2C))));
    new_var3 = (s8) ((*((u8 *) (((s8 *) new_var2) + 0x75))) + 1);
    *((s8 *) (((s8 *) arg0) + 0x75)) = new_var3;
    stop_sfx_80195A8(0xD5);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8110B84;
  }
}

ASM_FUNC("asm/nonmatching/sub_8110B84.s", void sub_8110B84(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8110BF8.s", void sub_8110BF8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8110C88.s", void sub_8110C88(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8110CB0.s", void sub_8110CB0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8110E30.s", void sub_8110E30(void *arg0));
#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809B960 needs.

asm_unified(".include \"asm/macros.inc\"");




s16 sub_8082D40();
s16 sub_8082D50();
s32 sub_80880C4();
s32 sub_808843C();
void sub_809C214(void *arg0);

int sub_807C298();

ASM_FUNC("asm/nonmatching/sub_809B960.s", void sub_809B960(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809B9CC.s", void sub_809B9CC(void *arg0));
void sub_809BA28(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_807C298(arg0);
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80884AC();                              /* extern */
extern s32 sub_809B89C;
void sub_809BA44(void *arg0)
{
  void *temp_r2_21;
  sub_80884AC();
  if (0x20 & (*((u8 *) (((s8 *) arg0) + 0x79))))
  {
    sub_8082E1C(arg0, 1, 0x40C2, 0);
    temp_r2_21 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_21) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_21) + 0x12))) | 2);
    play_sfx_80195B4(0x15D, -1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_809B89C;
  }
}

ASM_FUNC("asm/nonmatching/sub_809BA98.s", void sub_809BA98(void *arg0));
extern s32 sub_809B770;
void sub_809BB00(void *arg0)
{
  void *temp_r2_28;
  int new_var;
  new_var = -7;
  if (((*((s32 *) (((s8 *) arg0) + 0x9C))) == 0) || (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12)))))
  {
    play_sfx_80195B4(0x65, -1);
    sub_8082E1C(arg0, 9, 0x40BF, 0);
    temp_r2_28 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_28) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_28) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_809B770;
  }
}

ASM_FUNC("asm/nonmatching/sub_809BB50.s", void sub_809BB50(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809BC28.s", void sub_809BC28(void *arg0));
void sub_809BD98(struct Entity *arg0) {
    s32 temp_r0_20;
    s32 temp_r4_50;

    temp_r0_20 = ((s32) (sub_8082D50((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C)))) << 0x10) >> 8) + 0x10000;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r0_20;
    (*(s32 *)((s8 *)(arg0) + (0x38))) = temp_r0_20;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x7800;
    (*(s32 *)((s8 *)(arg0) + (0x40))) = 0x7800;
    (*(u8 *)((s8 *)(arg0) + (0x78))) = (u8) ((0x1F & (*(u8 *)((s8 *)(arg0) + (0x78)))) | 0x20);
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xF6))) != 0) {
        temp_r4_50 = sub_8082D50((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C)))) + 0xE0;
        sub_808843C(arg0, temp_r4_50, sub_8082D40((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C)))) + 0x5C, 0x3C, -1);
        sub_80880C4(arg0, 0x140);
    }
    play_sfx_80195B4(0x88, -1);
    play_sfx_80195B4(0x8D, -1);
    arg0->handler = (s32 *) &sub_809C214;
}

ASM_FUNC("asm/nonmatching/sub_809BE50.s", void sub_809BE50(void *arg0));
void sub_809C168(void *arg0);                       /* extern */

void sub_809BEE0(struct Entity *arg0) {
    s32 temp_r0_20;
    s32 temp_r4_42;

    temp_r0_20 = ((s32) (sub_8082D50((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C)))) << 0x10) >> 8) + 0x10000;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r0_20;
    (*(s32 *)((s8 *)(arg0) + (0x38))) = temp_r0_20;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x7800;
    (*(s32 *)((s8 *)(arg0) + (0x40))) = 0x7800;
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xF6))) != 0) {
        temp_r4_42 = sub_8082D50((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C)))) + 0xD2;
        sub_808843C(arg0, temp_r4_42, sub_8082D40((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C)))) + 0x7C, 0x3C, -1);
        sub_80880C4(arg0, 0x140);
    }
    play_sfx_80195B4(0x88, -1);
    play_sfx_80195B4(0x8D, -1);
    arg0->handler = (s32 *) &sub_809C168;
}

ASM_FUNC("asm/nonmatching/sub_809BF88.s", void sub_809BF88(void *arg0));
void sub_809C0BC(void *arg0);                       /* extern */

void sub_809C018(struct Entity *arg0) {
    s32 temp_r0_20;
    s32 temp_r4_42;

    temp_r0_20 = ((s32) (sub_8082D50((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C)))) << 0x10) >> 8) + 0x10000;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r0_20;
    (*(s32 *)((s8 *)(arg0) + (0x38))) = temp_r0_20;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x7800;
    (*(s32 *)((s8 *)(arg0) + (0x40))) = 0x7800;
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xF6))) != 0) {
        temp_r4_42 = sub_8082D50((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C)))) + 0xD9;
        sub_808843C(arg0, temp_r4_42, sub_8082D40((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C)))) + 0x6C, 0x3C, -1);
        sub_80880C4(arg0, 0xC0);
    }
    play_sfx_80195B4(0x88, -1);
    play_sfx_80195B4(0x8D, -1);
    arg0->handler = (s32 *) &sub_809C0BC;
}

ASM_FUNC("asm/nonmatching/sub_809C0BC.s", void sub_809C0BC(void *arg0));
s32 sub_8088020();                              /* extern */

void sub_809C13C(void *arg0) {
    sub_8088020();
    if ((s32) (*(*(s16 **)((s8 *)(arg0) + (8))) + (s8) (*(u8 *)((s8 *)(arg0) + (0x45)))) <= 0) {
        sub_807C298(arg0);
    }
}

ASM_FUNC("asm/nonmatching/sub_809C168.s", void sub_809C168(void *arg0));
void sub_809C1E8(void *arg0) {
    sub_8088020();
    if ((s32) (*(*(s16 **)((s8 *)(arg0) + (8))) + (s8) (*(u8 *)((s8 *)(arg0) + (0x45)))) <= 0) {
        sub_807C298(arg0);
    }
}

s16 sub_8082D40(s32);                               /* extern */
s16 sub_8082D50(s32);                               /* extern */
s32 sub_8087CE4();                              /* extern */
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
void sub_809C3C8(void *arg0);
void sub_809C214(void *arg0)
{
  int new_var2;
  void **new_var;
  s32 temp_r4_33;
  new_var = (void **) 0x03000FD8;
  sub_8087CE4();
  if (0x20 & (*((u8 *) (((s8 *) arg0) + 0x79))))
  {
    new_var2 = 0x24C;
    if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xF6))) != 0)
    {
      temp_r4_33 = sub_8082D50(*((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + new_var2))) + 0xB8;
      sub_808843C(arg0, temp_r4_33, sub_8082D40(*((s32 *) (((s8 *) (*new_var)) + 0x24C))) + 0x5C, 0x18, -1);
      sub_80880C4(arg0, 0x180);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_809C3C8;
  }
}

ASM_FUNC("asm/nonmatching/sub_809C294.s", void sub_809C294(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809C2C8.s", void sub_809C2C8(void *arg0));
void sub_809BF88(void *arg0);                       /* extern */
void sub_809C348(void *arg0)
{
  int new_var;
  void **new_var2;
  s32 temp_r4_33;
  new_var2 = (void **) 0x03000FD8;
  sub_8087CE4();
  if (0x20 & (*((u8 *) (((s8 *) arg0) + 0x79))))
  {
    new_var = 0x24C;
    if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) - -0xF6))) != 0)
    {
      temp_r4_33 = sub_8082D50(*((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + new_var))) + 0x82;
 do { sub_808843C(arg0, temp_r4_33, sub_8082D40(*((s32 *) (((s8 *) (*new_var2)) + new_var))) + 0x7C, 0xA, -1); sub_80880C4(arg0, 0x200); } while (0);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_809BF88;
  }
}

void sub_809BE50(void *arg0);                       /* extern */
void sub_809C3C8(void *arg0)
{
  s32 temp_r4_33;
  int new_var2;
  void **new_var;
  new_var = (void **) 0x03000FD8;
  sub_8087CE4();
  if (0x20 & (*((u8 *) (((s8 *) arg0) + 0x79))))
  {
    new_var2 = 0x24C;
    if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xF6))) != 0)
    {
      temp_r4_33 = sub_8082D50(*((s32 *) (((s8 *) (*new_var)) + new_var2))) + 0x90;
      sub_808843C(arg0, temp_r4_33, sub_8082D40(*((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + new_var2))) + 0x5C, 0xA, -1);
      sub_80880C4(arg0, 0x200);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_809BE50;
  }
}

void sub_809C4F8(void *arg0);                       /* extern */
void sub_809C448(void *arg0)
{
  void *temp_r2_12;
  sub_8082E1C(arg0, 0xB, 0x40BF, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_12) + 0x12))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_809C4F8;
}

ASM_FUNC("asm/nonmatching/sub_809C478.s", void sub_809C478(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809C4F8.s", void sub_809C4F8(void *arg0));
void sub_809C570(void *arg0) {
    sub_8088020();
    if ((s32) (*(*(s16 **)((s8 *)(arg0) + (8))) + (s8) (*(u8 *)((s8 *)(arg0) + (0x45)))) <= 0) {
        sub_807C298(arg0);
    }
}

ASM_FUNC("asm/nonmatching/sub_809C59C.s", void sub_809C59C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809C660.s", void sub_809C660(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_809C7DC.s", void sub_809C7DC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809C8C4.s", void sub_809C8C4(void *arg0));
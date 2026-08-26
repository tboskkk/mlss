#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8090D70 needs.

asm_unified(".include \"asm/macros.inc\"");



void sub_8090E4C(struct Entity *arg0);

s32 sub_8082E1C();
void sub_8090E20(struct Entity *arg0);

void sub_8090D70(void *arg0)
{
  int new_var;
  s32 temp_r1_18;
  u8 *temp_r2_25;
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  temp_r1_18 = (*((s32 *) (((s8 *) arg0) + 0x40))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_18;
  new_var = -8;
  if (temp_r1_18 <= ((s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)))))
  {
    temp_r2_25 = (arg0 + 0xB2) - 0x3B;
    *temp_r2_25 &= new_var;
    *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)));
    sub_8082E1C(arg0, 8, 0x204D, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_8090E20);
  }
}

void sub_8090DC8(void *arg0)
{
  int new_var2;
  s32 temp_r1_18;
  s8 *new_var;
  u8 *temp_r2_25;
  new_var = (s8 *) arg0;
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (new_var + 0x94))));
  new_var2 = -8;
  temp_r1_18 = (*((s32 *) (new_var + 0x40))) + ((s16) (*((u16 *) (new_var + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_18;
  if (temp_r1_18 <= ((s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)))))
  {
    temp_r2_25 = (arg0 + 0xB2) - 0x3B;
    *temp_r2_25 &= new_var2;
    *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) (*((s32 *) (((s8 *) (*((void **) (new_var + 0x28)))) + 0xE0)));
    sub_8082E1C(arg0, 8, 0x2000, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_8090E4C);
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8090E20(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8090E4C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x2000, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

ASM_FUNC("asm/nonmatching/sub_8090E74.s", s32 sub_8090E74(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8090F14.s", s32 sub_8090F14(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8090FB8.s", void sub_8090FB8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8091090.s", void sub_8091090(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8091174.s", void sub_8091174(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8091274.s", void sub_8091274(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80913A4.s", void sub_80913A4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8091548.s", void sub_8091548(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8091620.s", void sub_8091620(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8091708.s", void sub_8091708(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8091808.s", void sub_8091808(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8091938.s", void sub_8091938(void *arg0));
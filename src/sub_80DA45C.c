#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DA45C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_80DA480(void *arg0);
void sub_80DA45C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0;
        arg0->handler = (s32 *) &sub_80DA480;
    }
}

s32 sub_807F47C(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DA098;
void sub_80DA480(void *arg0)
{
  u16 temp_r0_11;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) (temp_r0_11 << 0x10)) < 0)
  {
    sub_807F47C(arg0);
    sub_8082E1C(arg0, 6, 0, 0);
    *((u16 *) (((s8 *) arg0) + 0xAC)) = 8U;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DA098;
  }
}

ASM_FUNC("asm/nonmatching/sub_80DA4B8.s", void sub_80DA4B8(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_80DA66C.s", void sub_80DA66C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80DA6D0.s", void sub_80DA6D0(void *arg0));
extern s32 sub_80DA9E0;
void sub_80DA8EC(void *arg0)
{
  s32 temp_r0_68;
  s32 temp_r1_60;
  s32 var_r0_16;
  s32 var_r0_31;
  var_r0_16 = (*((s16 *) (((s8 *) arg0) + 0xAE))) * 0xFD;
  if (var_r0_16 < 0)
  {
    var_r0_16 += 0xFF;
  }
  *((s16 *) (((s8 *) arg0) + 0xAE)) = (s16) (var_r0_16 >> 8);
  var_r0_31 = (*((s16 *) (((s8 *) arg0) + 0xB0))) * 0xFD;
  if (var_r0_31 < 0)
  {
    var_r0_31 += 0xFF;
  }
  *((s16 *) (((s8 *) arg0) + 0xB0)) = (s16) (var_r0_31 >> 8);
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  *((s32 *) (((s8 *) arg0) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x38))) + (*((s16 *) (((s8 *) arg0) + 0xAE))));
  *((s32 *) (((s8 *) arg0) + 0x14)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x3C))) + (*((s16 *) (((s8 *) arg0) + 0xB0))));
  temp_r1_60 = (*((s32 *) (((s8 *) arg0) + 0x40))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_60;
  var_r0_16 = (s16) (*((u16 *) (((s8 *) arg0) + 0xB2)));
  if (((s32) var_r0_16) <= 0)
  {
    temp_r0_68 = *((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0));
    if (temp_r1_60 <= temp_r0_68)
    {
      *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r0_68;
      *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DA9E0;
    }
  }
}

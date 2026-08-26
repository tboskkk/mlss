#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DA3E0 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_80DA3FC(void *arg0);
void sub_80DA3E0(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        arg0->handler = (s32 *) &sub_80DA3FC;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8086858(void *, s32);                   /* extern */
extern s32 sub_80DA300;
extern s32 sub_80DA45C;
void sub_80DA3FC(void *arg0)
{
  u16 temp_r0_11;
  void *temp_r2_25;
  s8 *new_var;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) (temp_r0_11 << 0x10)) < 0)
  {
    sub_8082E1C(arg0, 8, 0, 0);
    play_sfx_80195B4(0x83, -1);
    temp_r2_25 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_25) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_25) + 0x12))) | 2);
    sub_8086858(arg0, 0x1349);
    new_var = ((s8 *) arg0) + 0x60;
    *((s32 **) new_var) = &sub_80DA300;
    *((s32 *) (((s8 *) (temp_r2_25 = arg0)) + 0x54)) = 0;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DA45C;
  }
}

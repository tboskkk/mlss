#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A2F74 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80A2F74.s", void sub_80A2F74(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80A3048.s", void sub_80A3048(void *arg0));
s32 sub_80884AC(void *);                        /* extern */
s32 sub_810D738(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_80A3324;
void sub_80A32AC(void *arg0)
{
  s32 temp_r7_14;
  void *temp_r4_11;
  int new_var;
  int new_var2;
  void *temp_r5_13;
  temp_r4_11 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  temp_r5_13 = temp_r4_11 + 8;
  temp_r7_14 = *((s32 *) (((s8 *) arg0) + 0x2C));
  new_var = 0x100;
  sub_80884AC(temp_r5_13);
  new_var2 = -0x80;
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_11) + 0x81))))
  {
    play_sfx_80195B4(0x7E, -1);
    *((u8 *) (((s8 *) temp_r4_11) + 0xD4)) = (u8) (new_var2 & (*((u8 *) (((s8 *) temp_r4_11) + 0xD4))));
    *((s16 *) (((s8 *) temp_r4_11) + 0xD2)) = new_var;
    sub_810D738(temp_r5_13, temp_r7_14, 0, 0, 0x08052002);
    *((u16 *) (((s8 *) temp_r5_13) + 0x24)) = (u16) ((*((u16 *) (((s8 *) temp_r5_13) + 0x24))) + 1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80A3324;
  }
}

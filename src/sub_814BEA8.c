#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814BEA8 needs.

asm_unified(".include \"asm/macros.inc\"");


extern s32 sub_814998C;
extern s32 sub_814BA70;

void sub_814BEA8(s32 arg0, void *arg1, s32 **arg2)
{
  s32 *new_var2;
  s8 *new_var;
  int new_var4;
  s32 *var_r0_60;
  s32 temp_r2_33;
  u8 temp_r1_53;
  s32 *new_var3;
  new_var4 = -8;
  new_var = (s8 *) arg1;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg1) + 0x294)))) + 0x12))))
  {
    *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) (new_var4 & (*((u8 *) (new_var + 0x214))));
  }
  temp_r2_33 = (*((s32 *) (new_var + 0x18))) - (*((s16 *) (((0, new_var)) + 0x2DC)));
  *((s32 *) (new_var + 0x18)) = temp_r2_33;
  if (((*((s32 *) (new_var + 0x24))) & 0x18000) || (((s32) ((*((s32 *) (new_var + 0x14))) + temp_r2_33)) <= ((s32) (*((s32 *) (new_var + 0x2D4))))))
  {
    temp_r1_53 = *((u8 *) (new_var + 0x1D8));
    if (((temp_r1_53 << 0x1F) != ((*((s16 *) (new_var + 0x2DC))) * 0)) && (((s32) (temp_r1_53 << 0x1E)) < 0))
    {
      var_r0_60 = &sub_814998C;
    }
    else
    {
      new_var3 = &sub_814BA70;
      new_var2 = new_var3;
      var_r0_60 = new_var2;
    }
    *arg2 = var_r0_60;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BF28.s\"");
#else
s32 sub_80FBD44(s32, u8 *);                         /* extern */
s32 sub_8149AC8(s32, void *);                       /* extern */
extern s32 sub_814998C;
extern s32 sub_814BA70;

void sub_814BF28(s32 arg0, void *arg1, s32 **arg2) {
    u8 sp0;
    s32 *var_r0_31;
    void *temp_r1_55;

    (*(s32 *)((s8 *)(arg1) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x18))) - M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    if ((*(s32 *)((s8 *)(arg1) + (0x24))) & 0x18000) {
        if ((sub_8149AC8(arg0, arg1) << 0x18) != 0) {
            var_r0_31 = &sub_814998C;
        } else {
            goto block_8;
        }
        goto block_9;
    }
    if ((sub_80FBD44(arg0, &sp0) << 0x18) == 0) {
        (*(u8 *)((s8 *)(arg1) + (0x1D8))) = (u8) (-2 & (*(u8 *)((s8 *)(arg1) + (0x1D8))));
        return;
    }
    temp_r1_55 = (*(void **)((s8 *)(((sp0 * 4) + arg0)) + (0x28)));
    if ((s32) ((*(s32 *)((s8 *)(arg1) + (0x14))) + (*(s32 *)((s8 *)(arg1) + (0x18)))) <= (s32) ((*(s32 *)((s8 *)(temp_r1_55) + (0x14))) + (*(s32 *)((s8 *)(temp_r1_55) + (0x18))) + 0x2D00)) {
        if ((sub_8149AC8(arg0, arg1) << 0x18) != 0) {
            var_r0_31 = &sub_814998C;
        } else {
block_8:
            var_r0_31 = &sub_814BA70;
        }
block_9:
        *arg2 = var_r0_31;
    }
}
#endif

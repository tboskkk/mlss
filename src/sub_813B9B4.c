#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B9B4 needs.

asm_unified(".include \"asm/macros.inc\"");


s8 sub_8139F08();

void sub_813B9B4(s32 arg0, void *arg1, void *arg2)
{
  u16 temp_r0_34;
  u32 var_r0_14;
  int new_var;
  new_var = 0;
  if ((*((u16 *) (((s8 *) arg1) + 0x2DE))) == new_var)
  {
    var_r0_14 = new_var;
  }
  else
  {
    *((s32 *) (((s8 *) arg1) + 0xC)) = (s32) ((*((s32 *) (((s8 *) arg1) + 0xC))) + (*((s16 *) (((s8 *) arg1) + 0x242))));
    *((s32 *) (((s8 *) arg1) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg1) + 0x10))) + (*((s16 *) (((s8 *) arg1) + 0x244))));
    temp_r0_34 = (*((u16 *) (((s8 *) arg1) + 0x2DE)) = (*((u16 *) (((s8 *) arg1) + 0x2DE))) - 1);
    var_r0_14 = ((u32) (new_var - temp_r0_34)) >> 0x1F;
  }
  if (var_r0_14 == new_var)
  {
    *((s32 *) (((s8 *) arg2) + 0)) = (s32) (*((s32 *) (((s8 *) arg2) + 8)));
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813BA0C.s\"");
#else
s8 sub_8139F08(s32, void *, s32);               /* extern */
extern s32 sub_813B224;

void sub_813BA0C(s32 arg0, void *arg1, void *arg2) {
    s32 *var_r0_17;
    u16 temp_r0_47;
    u32 var_r0_26;

    if (sub_8139F08(arg0, arg1, 0) != -1) {
        var_r0_17 = &sub_813B224;
        goto block_7;
    }
    if ((*(u16 *)((s8 *)(arg1) + (0x2DE))) == 0) {
        var_r0_26 = 0;
    } else {
        (*(s32 *)((s8 *)(arg1) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0xC))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
        (*(s32 *)((s8 *)(arg1) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x10))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
        temp_r0_47 = (*(u16 *)((s8 *)(arg1) + (0x2DE))) - 1;
        (*(u16 *)((s8 *)(arg1) + (0x2DE))) = temp_r0_47;
        var_r0_26 = (u32) (0 - temp_r0_47) >> 0x1F;
    }
    if (var_r0_26 == 0) {
        var_r0_17 = (*(s32 **)((s8 *)(arg2) + (4)));
block_7:
        (*(s32 **)((s8 *)(arg2) + (0))) = var_r0_17;
    }
}
#endif

void sub_813BA80(s32 arg0, void *arg1, void *arg2)
{
  int new_var;
  s32 var_r0_17;
  u16 temp_r0_46;
  u32 var_r0_25;
  new_var = 0;
  if (sub_8139F08(arg0, arg1, 0) != (-1))
  {
    var_r0_17 = *((s32 *) (((s8 *) arg2) + 8));
    goto block_7;
  }
  if ((*((u16 *) (((s8 *) arg1) + 0x2DE))) == new_var)
  {
    var_r0_25 = 0;
  }
  else
  {
    *((s32 *) (((s8 *) arg1) + 0xC)) = (s32) ((*((s32 *) (((s8 *) arg1) + 0xC))) + (*((s16 *) (((s8 *) arg1) + 0x242))));
    *((s32 *) (((s8 *) arg1) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg1) + 0x10))) + (*((s16 *) (((s8 *) arg1) + 0x244))));
    temp_r0_46 = (*((u16 *) (((s8 *) arg1) + 0x2DE)) = (*((u16 *) (((s8 *) arg1) + 0x2DE))) - 1);
    var_r0_25 = ((u32) (new_var - temp_r0_46)) >> 0x1F;
  }
  if (var_r0_25 == new_var)
  {
    var_r0_17 = *((s32 *) (((s8 *) arg2) + 4));
    block_7:
    *((s32 *) (((s8 *) arg2) + 0)) = var_r0_17;

  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813BAF0.s\"");
#else
s8 sub_8139E88(s32, void *, s32);               /* extern */

void sub_813BAF0(s32 arg0, void *arg1, void *arg2) {
    s32 var_r0_17;
    u16 temp_r0_46;
    u32 var_r0_25;

    if (sub_8139E88(arg0, arg1, 0) != -1) {
        var_r0_17 = (*(s32 *)((s8 *)(arg2) + (8)));
        goto block_7;
    }
    if ((*(u16 *)((s8 *)(arg1) + (0x2DE))) == 0) {
        var_r0_25 = 0;
    } else {
        (*(s32 *)((s8 *)(arg1) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0xC))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
        (*(s32 *)((s8 *)(arg1) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x10))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
        temp_r0_46 = (*(u16 *)((s8 *)(arg1) + (0x2DE))) - 1;
        (*(u16 *)((s8 *)(arg1) + (0x2DE))) = temp_r0_46;
        var_r0_25 = (u32) (0 - temp_r0_46) >> 0x1F;
    }
    if (var_r0_25 == 0) {
        var_r0_17 = (*(s32 *)((s8 *)(arg2) + (4)));
block_7:
        (*(s32 *)((s8 *)(arg2) + (0))) = var_r0_17;
    }
}
#endif

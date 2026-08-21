#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80401F0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80401F0.s\"");
#else
void sub_80401F0(void *arg0, s32 arg1, s32 arg2, u16 arg3) {
    s32 var_r3_92;

    if (arg2 == -1) {
        (*(s32 *)((s8 *)(arg0) + (0x248))) = (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    } else {
        (*(s32 *)((s8 *)(arg0) + (0x248))) = arg2;
    }
    if (arg1 == -1) {
        (*(s32 *)((s8 *)(arg0) + (0x254))) = (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    } else {
        (*(s32 *)((s8 *)(arg0) + (0x254))) = arg1;
    }
    (*(s32 *)((s8 *)(arg0) + (0x258))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x254)));
    (*(s32 *)((s8 *)(arg0) + (0x25C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x24C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) + (*(s32 *)((s8 *)(arg0) + (0x18))));
    (*(s32 *)((s8 *)(arg0) + (0x250))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x18)));
    (*(u16 *)((s8 *)(arg0) + (0x240))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x23E)));
    if (arg3 == -1U) {
        (*(u16 *)((s8 *)(arg0) + (0x23E))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x262)));
    } else {
        (*(u16 *)((s8 *)(arg0) + (0x23E))) = arg3;
    }
    var_r3_92 = 0;
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x258))) > 0) {
        var_r3_92 = 1;
    }
    (*(u8 *)((s8 *)(arg0) + (0x213))) = (u8) ((-0x21 & (*(u8 *)((s8 *)(arg0) + (0x213)))) | (var_r3_92 << 5));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80402C4.s\"");
#else
void sub_80402C4(void *arg0)
{
  void *new_var;
  s32 temp_r1_58;
  s8 *new_var2;
  u8 temp_r5_34;
  new_var2 = ((s8 *) arg0) + 0x25C;
  if (((s32) (*((s32 *) new_var2))) >= 0)
  {
    *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x18))) + (*((s32 *) (((s8 *) arg0) + 0x258))));
    *((s32 *) (((s8 *) arg0) + 0x258)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x258))) - (*((s32 *) (((s8 *) arg0) + 0x248))));
    temp_r5_34 = 0x20 & (*((u8 *) (((s8 *) arg0) + 0x20D)));
    if (temp_r5_34 == 0)
    {
      if (((s32) (*((s32 *) (((s8 *) arg0) + 0x18)))) <= 0)
      {
        sub_8047EB8(arg0);
        *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) temp_r5_34;
        return;
      }
      goto block_7;
    }
    if (((s32) ((*((s32 *) (((s8 *) arg0) + 0x14))) + (*((s32 *) (((s8 *) arg0) + 0x18))))) <= ((s32) (*((s32 *) (((s8 *) arg0) + 0x24C)))))
    {
      sub_8047EB8(arg0);
      new_var = arg0;
      temp_r1_58 = *((s32 *) (((s8 *) arg0) + 0x14));
      if (((s32) (temp_r1_58 + (*((s32 *) (((s8 *) arg0) + 0x18))))) < 0)
      {
        *((s32 *) (((s8 *) new_var) + 0x18)) = (s32) (0 - temp_r1_58);
      }
    }
    else
    {
      block_7:
      *((s32 *) new_var2) = (s32) ((*((s32 *) new_var2)) + 1);

    }
  }
}
#endif

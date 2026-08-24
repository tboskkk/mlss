#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819AC14 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_819AC14(s32 arg0)
{
  s32 temp_r1_28;
  s32 var_r4_37;
  u32 temp_r4_16;
  u8 temp_r3_15;
  void *temp_r2_12;
  s32 new_var;
  new_var = *((s32 *) 0x03007FF0);
  temp_r2_12 = (void *) (new_var + (arg0 * 0xC));
  temp_r3_15 = *((u8 *) (((s8 *) temp_r2_12) + 0x4D2));
  temp_r4_16 = temp_r3_15 >> 4;
  if (!(0xF & temp_r3_15))
  {
    return temp_r4_16;
  }
  temp_r1_28 = 7 & temp_r3_15;
  if (temp_r3_15 & 8)
  {
    var_r4_37 = temp_r4_16 + (((s32) (*((u8 *) (((s8 *) temp_r2_12) + 0x4CD)))) / temp_r1_28);
    if (var_r4_37 > 0xF)
    {
      var_r4_37 = 0xF;
    }
  }
  else
  {
    var_r4_37 = temp_r4_16;
    var_r4_37 = var_r4_37 - (((s32) (*((u8 *) (((s8 *) temp_r2_12) + 0x4CD)))) / temp_r1_28);
    if (var_r4_37 < 0)
    {
      var_r4_37 = 0;
    }
  }
  return (u32) ((u8) var_r4_37);
}

ASM_FUNC("asm/nonmatching/sub_819AC84.s", void sub_819AC84(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_819AF18.s", void sub_819AF18(void));
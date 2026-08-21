#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA9B8 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80EA9B8(s32 arg0, s32 *arg1, void *arg2)
{
  s32 temp_r0_14;
  s32 var_r2_11;
  s8 *new_var;
  s32 var_r3_12;
  u16 temp_r5_10;
  new_var = (s8 *) ((void *) 0x0300034C);
  temp_r5_10 = *((u16 *) (new_var + 0x2E));
  var_r2_11 = *((s32 *) (((s8 *) arg2) + 8));
  var_r3_12 = var_r2_11;
  temp_r0_14 = (*((s32 *) (((s8 *) arg2) + 4))) + 0xB;
  switch (temp_r0_14)
  {
    case 11:
      var_r2_11 = 0;
      break;

    case 12:
      var_r2_11 = ~var_r2_11;
      var_r3_12 = var_r2_11;
      break;

  }

  if ((*((s32 *) (((s8 *) arg2) + 0))) & 1)
  {
    if ((var_r3_12 & temp_r5_10) != var_r2_11)
    {
      if (!var_r3_12)
      {
      }
      goto block_9;
    }
  }
  else
    if ((var_r3_12 & temp_r5_10) == var_r2_11)
  {
    block_9:
    *arg1 = *((s32 *) (((s8 *) arg2) + 0xC));

  }
  return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAA04.s\"");
#else
#error "TODO: write sub_80EAA04 to match asm/nonmatching/sub_80EAA04.s, then delete this #error"
#endif

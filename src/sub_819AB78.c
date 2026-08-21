#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819AB78 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_819AB78(void *arg0)
{
  s32 temp_r4_16;
  u32 temp_r3_13;
  u8 temp_r0_22;
  u8 var_r1_21;
  temp_r3_13 = ((u32) (0x01000000 << (3 & (*((u8 *) (((s8 *) arg0) + 0x12)))))) >> 0x18;
  temp_r4_16 = 0x10;
  var_r1_21 = (*((u8 *) 0x04000081)) & (~(temp_r3_13 | temp_r4_16));
  temp_r4_16 = temp_r3_13 * temp_r4_16;
  var_r1_21 = (*((u8 *) 0x04000081)) & (~(temp_r3_13 | temp_r4_16));
  temp_r0_22 = *((u8 *) (((s8 *) arg0) + 0xE));
  if (((u32) temp_r0_22) <= 0x80U)
  {
    var_r1_21 |= temp_r3_13;
  }
  if (((u32) temp_r0_22) > 0x7EU)
  {
    var_r1_21 |= temp_r4_16;
  }
  *((u8 *) 0x04000081) = var_r1_21;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819ABB8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

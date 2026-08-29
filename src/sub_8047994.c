#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047994 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8047994(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) (0x3F & (*(u8 *)((s8 *)(arg0) + (0x2B5))));
}

u8 *sub_80479A8(u8 *a0)
{
  unsigned long long new_var;
  new_var = -49;
  *(a0 + 693) = new_var & (*(a0 + 693));
  return a0 + 693;
}

s32 sub_80479BC(void *arg0)
{
  int new_var;
  unsigned int new_var2;
  s32 temp_r0_11;
  s32 var_r1_12;
  new_var2 = *((u8 *) (((s8 *) arg0) + 0x2B6));
 do { temp_r0_11 = 0x30 & (*((u8 *) (((s8 *) arg0) + 0x2B6))); var_r1_12 = temp_r0_11; } while (0);
  if ((unsigned char) ((0x30 & new_var2) != 0))
  {
    if (1)
    {
    }
    new_var = 1;
    var_r1_12 = new_var;
  }
  return var_r1_12;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80479DC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80479FC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

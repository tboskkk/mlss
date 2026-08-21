#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80746EC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80746EC.s\"");
#else
void sub_80746EC(void *arg0)
{
  u16 temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_807470C;
  }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807470C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

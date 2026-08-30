#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8150DE8 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8150DE8(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = arg1;
}

s32 sub_8150DEC(void *arg0) {
    return (*(s32 *)((s8 *)(arg0) + (0x34)));
}

void sub_8150DF0(void *arg0, s32 arg1)
{
  s32 *new_var2;
  int new_var3;
  void *new_var;
  new_var3 = 4 | (*((u16 *) (((s8 *) arg0) + 0x2C)));
  new_var2 = &arg1;
  *((u16 *) (((s8 *) arg0) + 0x2C)) = (u16) new_var3;
  *((s32 *) (((s8 *) arg0) + 0x38)) = arg1;
  new_var = arg0;
  *((s32 *) (((s8 *) arg0) + 0x3C)) = (s32) (((s32) ((*new_var2) - (*((s32 *) (((s8 *) new_var) + 0x34))))) / 10);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150E12.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

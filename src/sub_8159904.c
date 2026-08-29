#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8159904 needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_8159904(u32* param_1, u32 param_2) {
    u32* puVar1;
    
    puVar1 = param_1 + 0x14B;
    *puVar1 = param_2;
    return puVar1;
}

void sub_8159910(void *arg0, s32 arg1)
{
  long new_var;
  new_var = (u16) (4 | (*((u16 *) (((s8 *) arg0) + 0x528))));
  *((u16 *) (((s8 *) arg0) + 0x528)) = new_var;
  *((s32 *) (((s8 *) arg0) + 0x534)) = arg1;
  *((s32 *) (((s8 *) arg0) + 0x538)) = (s32) (((s32) (arg1 - (*((s32 *) (((s8 *) arg0) + 0x530))))) / 10);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159948.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

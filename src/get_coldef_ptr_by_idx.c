#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// get_coldef_ptr_by_idx needs.

asm_unified(".include \"asm/macros.inc\"");

s32 get_coldef_ptr_by_idx(void *arg0, s32 arg1)
{
  s32 new_var;
  new_var = arg1 << 0x18;
  return (*((s32 *) (((s8 *) arg0) + 0xA0))) + (((u32) new_var) >> 0x16);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/get_coldef_ptr_by_xz.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

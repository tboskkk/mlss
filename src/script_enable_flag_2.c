#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_enable_flag_2 needs.

asm_unified(".include \"asm/macros.inc\"");

void script_enable_flag_2(void *arg2)
{
  int new_var2;
  s8 *new_var;
  new_var2 = 2 | (*((u16 *) (new_var + 0xA0)));
  *((u16 *) (new_var + 0xA0)) = (u16) new_var2;
  new_var = arg2;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F04F8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

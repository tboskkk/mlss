#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029910 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8029910(void)
{
    u32 *r4 = (u32 *)0x03000D80;
    
    if (r4[0] != 0)
        ((void (*)(void))r4[0])();
    
    if (r4[1] != 0)
        ((void (*)(void))r4[1])();
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029934.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

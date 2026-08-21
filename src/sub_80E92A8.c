#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E92A8 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_80E92A8(u32* param_1) {
    return *param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E92AC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

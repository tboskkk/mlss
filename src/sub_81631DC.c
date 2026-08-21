#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81631DC needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_81631DC(void *arg0) {
    s32 var_r1_7;

    var_r1_7 = 0;
    if ((*(s32 *)((s8 *)(arg0) + (0x24))) == 0) {
        var_r1_7 = 1;
    }
    return var_r1_7;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81631F0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

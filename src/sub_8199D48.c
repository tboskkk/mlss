#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8199D48 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8199D48(s32 * a0, s32 a1) {
    a0[1] = ((s32 *)*(s32 *)50335856)[a1];
    return 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199D5C.s\"");
#else
u32 sub_8199D5C(u32* param_1, u8 param_2, u8 param_3, u32 param_4) {
    u32 temp;
    
    temp = param_1[2];
    param_1[3] = param_2;
    param_1[4] = param_3;
    param_1[2] = param_4;
    param_1[5] &= 0xFFFFFFDF;
    
    return temp;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199D78.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

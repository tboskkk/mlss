#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8136688 needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_8136688(u32* param_1, u32* param_2) {
    param_1[0] = param_2[0];
    param_1[1] = param_2[1];
    param_1[2] = param_2[2];
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136698.s\"");
#else
void sub_8136698(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x10))) = 0x08CDC480;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81366B8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

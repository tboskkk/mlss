#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082C20 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8082C20(void *arg0, s32 *arg1, s32 *arg2, s32 *arg3) {
    *arg1 -= (*(s16 *)((s8 *)(arg0) + (0x774)));
    *arg2 -= (*(s16 *)((s8 *)(arg0) + (0x776)));
    *arg3 += 0x1F0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082C58.s\"");
#else
void sub_8082C58(s32 arg0, s32 *arg1, s32 *arg2, s32 *arg3) {
    s32 temp_r4_10;

    temp_r4_10 = *arg2;
    *arg1 -= M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
    *arg2 = (temp_r4_10 - *arg3) - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    *arg3 = 0x1F0 - temp_r4_10;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082C9C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

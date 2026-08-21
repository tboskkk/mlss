#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082C20 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082C20.s\"");
#else
void sub_8082C20(s32 arg0, s32 *arg1, s32 *arg2, s32 *arg3) {
    *arg1 -= M2C_ERROR(/* unknown instruction: ldsh $r5, ($mem_loc_fictive_) */);
    *arg2 -= M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    *arg3 += 0x1F0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082C58.s\"");
#else
#error "TODO: write sub_8082C58 to match asm/nonmatching/sub_8082C58.s, then delete this #error"
#endif

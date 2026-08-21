#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803C508 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C508.s\"");
#else
s32 sub_803C508(void *arg0) {
    if (((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) <= 0xC) && ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) <= 0xC)) {
        return 0;
    }
    return 1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158308 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158308.s\"");
#else
s32 sub_8158308(s32 arg0) {
    return M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
}
#endif

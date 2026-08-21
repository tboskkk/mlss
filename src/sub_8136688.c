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
#error "TODO: write sub_8136698 to match asm/nonmatching/sub_8136698.s, then delete this #error"
#endif

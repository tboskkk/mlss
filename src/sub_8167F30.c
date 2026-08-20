#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8167F30 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167F30.s\"");
#else
u32* sub_8167F30(u32* param_1) {
    param_1[0x1B] = 0;
    param_1[0x1D] = 0;
    return param_1;
}
#endif

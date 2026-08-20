#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801B75C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B75C.s\"");
#else
u32* sub_801B75C(u32* param_1) {
    *param_1 = 0;
    *(param_1 + 1) = 0;
    *(param_1 + 2) = 0;
    *(param_1 + 3) = 0;
    return param_1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801B748 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B748.s\"");
#else
u32* sub_801B748(u32* param_1, u32 param_2, u16 param_3, s16 param_4) {
    *param_1 = param_2;
    *(param_1 + 1) = param_3;
    *(param_1 + 2) = param_4;
    *(param_1 + 3) = 0xFFFF0000;
    return param_1;
}
#endif

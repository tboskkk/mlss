#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163264 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163264.s\"");
#else
u32* sub_8163264(u32* param_1, u32 param_2, u32 param_3) {
    *param_1 = param_2;
    *(param_1 + 1) = param_2;
    *(param_1 + 2) = param_2;
    *(param_1 + 4) = param_3;
    *(param_1 + 3) = param_3;
    *(param_1 + 1) = param_3;
    *(param_1 + 5) = param_2 >> 8;
    *(param_1 + 6) = param_3 >> 8;
    *(param_1 + 9) = 0;
    return param_1;
}
#endif

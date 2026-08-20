#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163B5C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163B5C.s\"");
#else
u32* sub_8163B5C(u32* param_1, u32 param_2) {
    *param_1 = param_2;
    return param_1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815EA08 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EA08.s\"");
#else
u32* sub_815EA08(u32* param_1) {
    *param_1 = 0x08CDCF50;
    *(param_1 + 1) = 0;
    return param_1;
}
#endif

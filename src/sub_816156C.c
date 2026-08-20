#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816156C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816156C.s\"");
#else
u32* sub_816156C(u32* param_1) {
    *param_1 = 0;
    param_1[1] = 0x08CDD060;
    return param_1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8160EC4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160EC4.s\"");
#else
u32* sub_8160EC4(u32* param_1) {
    u32* puVar1;
    
    puVar1 = param_1 + 0x201;
    *puVar1 = 0;
    puVar1 = param_1 + 0x203;
    *puVar1 = 0;
    return param_1;
}
#endif

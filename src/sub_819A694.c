#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819A694 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819A694.s\"");
#else
u32 sub_819A694(u32* param_1) {
    u32 temp;
    
    temp = *param_1 & 0xCFFF;
    *param_1 = temp;
    *(param_1 + 0x17) = *(param_1 + 0x16);
    
    return temp;
}
#endif

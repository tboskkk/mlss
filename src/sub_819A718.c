#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819A718 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819A718.s\"");
#else
u32 sub_819A718(u32* param_1) {
    u32 temp;
    
    temp = *param_1 & 0xF9FF;
    *param_1 = temp;
    *(param_1 + 0x1B/4) = *(param_1 + 0x1A/4);
    
    return temp;
}
#endif

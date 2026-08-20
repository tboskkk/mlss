#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8171F44 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171F44.s\"");
#else
u32 sub_8171F44(u32* param_1) {
    param_1[0x1B] = 0xB4;
    param_1[0x1C] = 0;
    return (u32)param_1;
}
#endif

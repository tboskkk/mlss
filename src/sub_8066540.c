#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8066540 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066540.s\"");
#else
u32* sub_8066540(u32* param_1, u32 param_2, u32 param_3, u32 param_4) {
    u32* puVar1;
    
    puVar1 = param_1;
    puVar1[0x21] = param_2;
    puVar1[0x22] = param_3;
    puVar1[0x23] = param_4;
    return puVar1;
}
#endif

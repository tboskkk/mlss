#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816AFF0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816AFF0.s\"");
#else
u32* sub_816AFF0(u32* param_1) {
    u32* puVar1;
    
    puVar1 = param_1 + 0x49;
    *puVar1 = *puVar1 | 0x8;
    return puVar1;
}
#endif

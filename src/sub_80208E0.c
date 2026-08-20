#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80208E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80208E0.s\"");
#else
u32* sub_80208E0(u32* param_1) {
    u32* puVar1;
    u32* puVar2;
    
    puVar1 = param_1 + 0x12;
    *puVar1 = 1;
    puVar2 = param_1 + 0x14;
    *(puVar1 + 1) = *puVar2;
    *(puVar1 + 2) = *(param_1 + 0x13);
    *(puVar1 + 3) = 0;
    return puVar1;
}
#endif

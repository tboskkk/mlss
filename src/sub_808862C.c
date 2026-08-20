#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808862C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808862C.s\"");
#else
u32* sub_808862C(u32* param_1) {
    u32* puVar1;
    
    puVar1 = param_1 + 0x13;
    *(param_1 + 0x14) = *puVar1;
    *(param_1 + 0x13) = 0x080886BD;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808863C.s\"");
#else
u32* sub_808863C(u32* param_1) {
    u32* puVar1;
    
    puVar1 = param_1 + 0x13;
    *param_1 = *puVar1;
    param_1[0x13] = (u32)sub_80886E0;
    return param_1;
}
#endif

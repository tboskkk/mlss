#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082D24 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082D24.s\"");
#else
u16* sub_8082D24(u16* param_1, u16 param_2, u16 param_3) {
    u16* puVar1;
    
    puVar1 = param_1 + 0x77A;
    *puVar1 = param_2;
    param_1 = param_1 + 0x77A;
    *param_1 = param_3;
    return param_1;
}
#endif

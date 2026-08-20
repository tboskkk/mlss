#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163BA0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163BA0.s\"");
#else
u32 sub_8163BA0(u32 param_1) {
    u16 *ptr;
    u16 val;
    
    ptr = (u16 *)0x0300102C;
    val = ptr[0];
    param_1 &= val;
    param_1 = (param_1 ^ val) & val;
    return param_1 >> 31;
}
#endif

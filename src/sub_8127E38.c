#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8127E38 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127E38.s\"");
#else
u32 sub_8127E38(u32 param_1) {
    u32 *ptr = (u32 *)0x02000008;
    u32 var = *ptr;
    u32 var2 = var & 0x0C;
    var2 <<= 0x0C;
    param_1 -= var2;
    param_1 <<= 0x11;
    param_1 >>= 0x16;
    return param_1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8160E4C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160E4C.s\"");
#else
u32 sub_8160E4C(u32 param_1) {
    u32 *reg = (u32 *)0x040000D4;
    reg[0] = param_1;
    param_1 += 0x810;
    param_1 = *(u32 *)param_1;
    reg[1] = param_1;
    reg[2] = 0x84000200;
    return reg[2];
}
#endif

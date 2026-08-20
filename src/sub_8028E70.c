#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8028E70 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028E70.s\"");
#else
u32 sub_8028E70(u32 param_1) {
    u8 temp;
    temp = *(u8*)(param_1 + 0xF9);
    temp &= 3;
    if (temp == 0) {
        temp = 1;
    }
    return temp;
}
#endif

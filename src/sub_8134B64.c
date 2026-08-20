#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8134B64 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134B64.s\"");
#else
u32 sub_8134B64(u32 param_1) {
    *(u16*)param_1 = 0;
    *(u16*)(param_1 + 2) = 0;
    *(u16*)(param_1 + 4) = 0x10;
    return param_1;
}
#endif

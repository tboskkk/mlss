#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158E10 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158E10.s\"");
#else
u32 sub_8158E10(u32 param_1) {
    *(u16*)(param_1 + 0x14) = 0;
    return 0;
}
#endif

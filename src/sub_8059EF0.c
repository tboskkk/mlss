#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8059EF0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059EF0.s\"");
#else
u32* sub_8059EF0(u32 param_1) {
    return (u32*)((param_1 << 16) >> 14) + 0x083AF418;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FB7E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB7E0.s\"");
#else
u32* sub_80FB7E0(u32 param_1) {
    return (u32*)((param_1 << 16) >> 14) + 0x083D7458;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB7F0.s\"");
#else
u32 sub_80FB7F0(u32 param_1) {
    return ((u32*)0x0851FA00)[(param_1 << 16) >> 14];
}
#endif

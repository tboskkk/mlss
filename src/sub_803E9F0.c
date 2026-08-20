#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803E9F0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803E9F0.s\"");
#else
u32 sub_803E9F0(u32 param_1) {
    u32 *ptr = (u32*)((u32)param_1 + 0x291);
    return (*ptr & 1);
}
#endif

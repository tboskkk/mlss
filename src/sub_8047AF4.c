#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047AF4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047AF4.s\"");
#else
u32 sub_8047AF4(u32 param_1) {
    return ((param_1 + 0x2B5) & 0xFF) >> 3 & 1;
}
#endif

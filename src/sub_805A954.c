#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805A954 needs.

asm_unified(".include \"asm/macros.inc\"");

u16* sub_805A954(u16* param_1, u16 param_2, u16 param_3) {
    param_1[0x10] = param_2;
    param_1[0x11] = param_3;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805A95C.s\"");
#else
#error "TODO: write sub_805A95C to match asm/nonmatching/sub_805A95C.s, then delete this #error"
#endif

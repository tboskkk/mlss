#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EB048 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EB048.s\"");
#else
u32 sub_80EB048(u32 param_1,u32 param_2) {
    *(u8*)(*(u32*)0x03000FB8 + 0x32) = param_1;
    return 1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8136470 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136470.s\"");
#else
u32* sub_8136470(u32* param_1) {
    *(u32*)((u8*)param_1 + 0x00) = 0;
    *(u32*)((u8*)param_1 + 0x04) = 0;
    *(u32*)((u8*)param_1 + 0x08) = 0;
    return param_1;
}
#endif

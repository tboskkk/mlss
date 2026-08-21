#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8199F24 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_8199F24(u32 param_1) {
    *(u32*)0x03001074 = param_1;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199F30.s\"");
#else
#error "TODO: write sub_8199F30 to match asm/nonmatching/sub_8199F30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819A138.s\"");
#else
#error "TODO: write sub_819A138 to match asm/nonmatching/sub_819A138.s, then delete this #error"
#endif

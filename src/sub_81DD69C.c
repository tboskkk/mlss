#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DD69C needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_81DD69C(u32* param_1) {
    u32* puVar1;
    
    puVar1 = (u32*)0x08CDD0D0;
    param_1[0x0C/4] = (u32)puVar1;
    param_1[0x04/4] = 0;
    param_1[0x00/4] = 0;
    param_1[0x08/4] = 0;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DD6B0.s\"");
#else
#error "TODO: write sub_81DD6B0 to match asm/nonmatching/sub_81DD6B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DD710.s\"");
#else
#error "TODO: write sub_81DD710 to match asm/nonmatching/sub_81DD710.s, then delete this #error"
#endif

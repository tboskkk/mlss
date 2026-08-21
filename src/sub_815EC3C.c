#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815EC3C needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_815EC3C(u32 param_1) {
    u8* puVar1;
    u8* puVar2;
    
    puVar1 = *(u8**)(param_1 + 0xC);
    puVar2 = puVar1 + 0x12;
    *puVar2 = *puVar2 | 0x20;
    *(u8*)(param_1 + 0x1A) = 0;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EC4C.s\"");
#else
#error "TODO: write sub_815EC4C to match asm/nonmatching/sub_815EC4C.s, then delete this #error"
#endif

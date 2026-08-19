#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_17 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_17(void) {
    return;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018A4C.s\"");
#else
u32 sub_8018A4C(u32 param_1) {
    u32* puVar1;
    
    puVar1 = (u32*)0x0300034C;
    puVar1[0x24/4] = param_1;
    puVar1 = (u32*)((u32)puVar1 + 0x889);
    *(((u8*)puVar1) + 0) |= 1;
    return param_1;
}
#endif

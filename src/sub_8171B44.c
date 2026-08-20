#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8171B44 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171B44.s\"");
#else
u32 sub_8171B44(u32 param_1) {
    u16* puVar1;
    u32 uVar2;
    
    puVar1 = (u16*)0x0300034C;
    uVar2 = *puVar1;
    if ((uVar2 & 0x8) != 0) {
        *(u32*)((char*)param_1 + 0x44) = 4;
    }
    return param_1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA904 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA904.s\"");
#else
u32 sub_80EA904(u32 param_1) {
    u8* puVar1;
    u32 uVar2;
    
    puVar1 = (u8*)(param_1 + 0xA6);
    *puVar1 = *puVar1 - 1;
    uVar2 = (u32)*puVar1;
    *(u32*)(param_1 + (uVar2 << 2)) = 0;
    return 1;
}
#endif

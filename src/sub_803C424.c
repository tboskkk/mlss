#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803C424 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C424.s\"");
#else
u32* sub_803C424(u32* param_1) {
    u32* puVar1;
    u32* puVar2;
    
    puVar1 = param_1 + 0x81;
    puVar2 = param_1 + 0x80;
    *(u16*)(puVar2 + 1) = 0xB2;
    *(u16*)(puVar1 + 1) = 0xB2;
    return puVar1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C440.s\"");
#else
#error "TODO: write sub_803C440 to match asm/nonmatching/sub_803C440.s, then delete this #error"
#endif

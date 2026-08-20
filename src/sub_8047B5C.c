#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047B5C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047B5C.s\"");
#else
u16 sub_8047B5C(u16* param_1, u16 param_2) {
    u16* puVar1;
    u16 uVar2;
    
    puVar1 = param_1 + 0x9A;
    uVar2 = *puVar1;
    *param_1 = uVar2;
    *puVar1 = param_2;
    return uVar2;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047B78.s\"");
#else
#error "TODO: write sub_8047B78 to match asm/nonmatching/sub_8047B78.s, then delete this #error"
#endif

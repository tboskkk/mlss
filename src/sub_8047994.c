#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047994 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047994.s\"");
#else
u32 sub_8047994(u32 param_1) {
    u32 *ptr;
    
    ptr = (u32*)((u32)param_1 + 0x2B5);
    *ptr = (*ptr & 0x3F);
    
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80479A8.s\"");
#else
u32 sub_80479A8(u32 param_1) {
    u32* ptr = (u32*)((u8*)param_1 + 0x2B5);
    *ptr = (*ptr & 0xFFFFFFCF);
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80479BC.s\"");
#else
#error "TODO: write sub_80479BC to match asm/nonmatching/sub_80479BC.s, then delete this #error"
#endif

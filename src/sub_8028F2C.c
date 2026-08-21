#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8028F2C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028F2C.s\"");
#else
u8 sub_8028F2C(u8 param_1) {
    u8 *ptr = (u8*)((uintptr_t)param_1 + 0x12D);
    *ptr |= 0x20;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028F40.s\"");
#else
u32 sub_8028F40(u32 param_1) {
    u32* puVar1;
    
    puVar1 = (u32*)((u32)param_1 + 0x12D);
    *puVar1 = (*puVar1 & 0xFFFFFFEF) | 0x10;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/make_btl_8028F54.s\"");
#else
#error "TODO: write make_btl_8028F54 to match asm/nonmatching/make_btl_8028F54.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028FBC.s\"");
#else
#error "TODO: write sub_8028FBC to match asm/nonmatching/sub_8028FBC.s, then delete this #error"
#endif

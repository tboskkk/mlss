#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029060 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029060.s\"");
#else
u8 sub_8029060(u8 param_1) {
    u8* puVar1;
    
    puVar1 = &param_1;
    *puVar1 = *puVar1 | 2;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029070.s\"");
#else
u8 sub_8029070(u8 arg0) {
    u16 temp = 0x96 << 1;
    arg0 += temp;
    arg0 |= 0x01;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029080.s\"");
#else
#error "TODO: write sub_8029080 to match asm/nonmatching/sub_8029080.s, then delete this #error"
#endif

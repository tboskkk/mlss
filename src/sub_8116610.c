#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8116610 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8116610.s\"");
#else
u16 sub_8116610(u16* param_1) {
    u16 temp;
    
    temp = param_1[0x1A];
    param_1[0x22] = temp;
    param_1[0x1A] = 0;
    
    return temp;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8116620.s\"");
#else
#error "TODO: write sub_8116620 to match asm/nonmatching/sub_8116620.s, then delete this #error"
#endif

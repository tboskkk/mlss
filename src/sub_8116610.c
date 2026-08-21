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
s32 sub_8116620(void *arg0) {
    if ((*(u16 *)((s8 *)(arg0) + (0x44))) != 0) {
        return 4;
    }
    if ((*(u16 *)((s8 *)(arg0) + (0x34))) == 0) {
        return 0;
    }
    if (!(4 & (*(u8 *)((s8 *)(arg0) + (0x32))))) {
        return 1;
    }
    return 2;
}
#endif

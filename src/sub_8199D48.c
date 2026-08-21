#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8199D48 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199D48.s\"");
#else
u32 sub_8199D48(u32 arg0, u32 arg1) {
    u32 *ptr = (u32 *)0x03001070;
    ptr = (u32 *)((u8 *)ptr + arg1 * 4);
    arg0 = *ptr;
    *(u32 *)(arg0 + 4) = arg0;
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199D5C.s\"");
#else
u32 sub_8199D5C(u32* param_1, u8 param_2, u8 param_3, u32 param_4) {
    u32 temp;
    
    temp = param_1[2];
    param_1[3] = param_2;
    param_1[4] = param_3;
    param_1[2] = param_4;
    param_1[5] &= 0xFFFFFFDF;
    
    return temp;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199D78.s\"");
#else
#error "TODO: write sub_8199D78 to match asm/nonmatching/sub_8199D78.s, then delete this #error"
#endif

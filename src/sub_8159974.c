#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8159974 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159974.s\"");
#else
u16 sub_8159974(u16 param_1) {
    u16 *ptr = &param_1;
    *ptr |= 0x01;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159984.s\"");
#else
u16* sub_8159984(u16* param_1, u16 param_2) {
    u16* puVar1;
    
    puVar1 = param_1 + 0xA3 * 0x03;
    *puVar1 = 1;
    puVar1 = param_1 + 0x514;
    *puVar1 = param_2;
    return param_1;
}
#endif

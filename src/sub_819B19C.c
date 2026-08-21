#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819B19C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B19C.s\"");
#else
u8 sub_819B19C(u8 param_1) {
    u8* puVar1;
    
    puVar1 = *(u8**)(0x03007FF0);
    puVar1 = puVar1 + 0x494 + param_1;
    *puVar1 = *puVar1 | 1;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B1B8.s\"");
#else
#error "TODO: write sub_819B1B8 to match asm/nonmatching/sub_819B1B8.s, then delete this #error"
#endif

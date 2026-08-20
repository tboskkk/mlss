#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163BB8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163BB8.s\"");
#else
u32 sub_8163BB8(void) {
    *(u16*)0x0300102C = 0;
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163BC4.s\"");
#else
#error "TODO: write sub_8163BC4 to match asm/nonmatching/sub_8163BC4.s, then delete this #error"
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810D260 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D260.s\"");
#else
u32 sub_810D260(u32 r0, u32 r1) {
    u32 r2 = r1;
    u32 r1_copy = 0;
    
    while (r0 != 0) {
        r0 >>= 4;
        r1_copy += 4;
    }
    
    return r2 + r1_copy;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80290CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80290CC.s\"");
#else
u8 sub_80290CC(u8* a, u32 b) {
    u32 r2 = 0x96 << 1;
    a += r2;
    b <<= 2;
    u8 r3 = *a;
    u8 r2_new = (r3 & 3) | b;
    *a = r2_new;
    return r2_new;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// _negdi2 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/_negdi2.s\"");
#else
s64 _negdi2(s64 x) {
    s32 r1 = (s32)(x >> 32);
    s32 r0 = (s32)x;
    s32 r2;
    s32 r3;
    s32 r4;
    
    r2 = -r0;
    r3 = r2;
    r1 = -r1;
    if (r2 == 0) {
        r1--;
    }
    r4 = r1;
    r1 = r4;
    r0 = r3;
    return ((s64)r1 << 32) | (r0 & 0xFFFFFFFF);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/abort.s\"");
#else
void abort(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    M2C_ERROR(/* unknown instruction: swi 0xab */);
}
#endif

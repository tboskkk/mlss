#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804FB14 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FB14.s\"");
#else
u32* sub_804FB14(u32* param_1) {
    param_1[0x06] = param_1[0x02];
    param_1[0x07] = param_1[0x03];
    param_1[0x08] = param_1[0x04];
    param_1[0x09] = param_1[0x05];
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FB28.s\"");
#else
u32 sub_804FB28(u32 r0, u32 r1) {
    u32 r2 = 0x07;
    r1 &= r2;
    u8 r3 = *(u8*)r0;
    r2 = 0x08;
    r2 = -r2;
    r2 &= r3;
    r2 |= r1;
    *(u8*)r0 = r2;
    return r0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FB3C.s\"");
#else
#error "TODO: write sub_804FB3C to match asm/nonmatching/sub_804FB3C.s, then delete this #error"
#endif

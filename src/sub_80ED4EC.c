#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80ED4EC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED4EC.s\"");
#else
void sub_80ED4EC(u32 r0, u32 r1, u32 r2)
{
    u32 *r5;
    u32 *r3;
    u32 r0_2;
    
    r3 = (u32*)r0;
    r5 = (u32*)r2;
    r0_2 = *r5;
    if (r0_2 <= 4)
    {
        u32 *r1_2;
        r1_2 = (u32*)0x080ED508;
        r0_2 <<= 2;
        r0_2 += (u32)r1_2;
        r0_2 = *(u32*)r0_2;
        ((void(*)())r0_2)();
    }
    else
    {
        *(u32*)r3 = 1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED6A8.s\"");
#else
#error "TODO: write sub_80ED6A8 to match asm/nonmatching/sub_80ED6A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED750.s\"");
#else
#error "TODO: write sub_80ED750 to match asm/nonmatching/sub_80ED750.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED7D4.s\"");
#else
#error "TODO: write sub_80ED7D4 to match asm/nonmatching/sub_80ED7D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED86C.s\"");
#else
#error "TODO: write sub_80ED86C to match asm/nonmatching/sub_80ED86C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED90C.s\"");
#else
#error "TODO: write sub_80ED90C to match asm/nonmatching/sub_80ED90C.s, then delete this #error"
#endif

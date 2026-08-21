#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801AA70 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AA70.s\"");
#else
void sub_801AA70(s32 r0, u32 r1, u32 r2, u32 r3)
{
    s32 r4;
    s32 r5;
    
    r4 = r0;
    r5 = r1;
    if ((r0 - 2) <= 4)
    {
        r0 = *(u32*)((r0 << 2) + 0x0801AA8C);
        (*(void(**)(void))r0)();
    }
    r0 = r3;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801ABE8.s\"");
#else
#error "TODO: write sub_801ABE8 to match asm/nonmatching/sub_801ABE8.s, then delete this #error"
#endif

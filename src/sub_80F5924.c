#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F5924 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F5924.s\"");
#else
void sub_80F5924(u32 r0, u32 r1, u32 r2)
{
    u32* r4;
    u32 r3;
    
    r3 = r1;
    r4 = (u32*)r2;
    r0 = *r4;
    if (r0 <= 5)
    {
        r0 <<= 2;
        r0 += 0x080F5944;
        r0 = *(u32*)r0;
        ((void(*)())r0)();
    }
    else
    {
        r0 = 1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F5A9C.s\"");
#else
#error "TODO: write sub_80F5A9C to match asm/nonmatching/sub_80F5A9C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F5B5C.s\"");
#else
#error "TODO: write sub_80F5B5C to match asm/nonmatching/sub_80F5B5C.s, then delete this #error"
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0724 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0724.s\"");
#else
void sub_80F0724(void* p0, void* p1)
{
    u32 r4;
    u32 r0;
    
    r4 = (u32)p1;
    r0 = *(u32*)((u8*)p0 + 0x14);
    sub_803E9F0(r0);
    r0 <<= 0x18;
    if (r0 == 0)
    {
        *(u32*)((u8*)p1) = *(u32*)((u8*)p1 + 0x14);
        return;
    }
    else
    {
        return;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0744.s\"");
#else
#error "TODO: write sub_80F0744 to match asm/nonmatching/sub_80F0744.s, then delete this #error"
#endif

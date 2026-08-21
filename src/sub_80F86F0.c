#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F86F0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F86F0.s\"");
#else
void sub_80F86F0(u32* p1, u32 p2, u32* p3)
{
    u32 r4 = p2;
    u32 r5 = 0;
    u32 r3 = *(u32*)((u8*)p3);
    if (r3 > 7)
    {
        u32 r1 = *(u32*)(0x03000FDC);
        r1 += r3 * 0xD0;
        r1 += 0xC0 << 2;
        r4 = r1;
    }
    else
    {
        u32 r0 = *(u32*)(0x03000FD8);
        r0 += 0x58;
        r0 += r3 << 2;
        r4 = *(u32*)((u8*)r0);
        r4 += 0x08;
    }
    r4 += 0x94;
    if (*(u32*)((u8*)r4) == 0)
        r5 = 1;
    if (r5 != *(u32*)((u8*)p3 + 0x04))
        *(u32*)((u8*)p1) = *(u32*)((u8*)p3 + 0x08);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8740.s\"");
#else
#error "TODO: write sub_80F8740 to match asm/nonmatching/sub_80F8740.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F87C0.s\"");
#else
#error "TODO: write sub_80F87C0 to match asm/nonmatching/sub_80F87C0.s, then delete this #error"
#endif

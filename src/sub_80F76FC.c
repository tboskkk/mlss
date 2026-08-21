#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F76FC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F76FC.s\"");
#else
void sub_80F76FC(u16 r0, u16 r1, u16 r2, u16 r3)
{
    u16 r4 = r1;
    u16 r5 = r2;
    u16 r6 = *(u32*)(0x03000FD8 + (r3 << 2) + 0x58);
    u16 r2_2;
    u16 r1_2;

    if (r3 > 7)
    {
        r2_2 = *(u32*)0x03000FDC;
        r1_2 = (r3 * 0xD0) + r2_2;
        r6 = (r1_2 << 2) + 0xC0;
    }

    *(u32*)(r6 + 0x84) = (r4 << 8);
    *(u32*)(r6 + 0x88) = (r5 << 8);
    *(u32*)(r6 + 0x8C) = (r3 << 8);

    u8 r1_3 = *(u8*)(r6 + 0x79);
    *(u8*)(r6 + 0x79) = (r1_3 & 0xDF) | ((r6 & 1) << 5);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7770.s\"");
#else
#error "TODO: write sub_80F7770 to match asm/nonmatching/sub_80F7770.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F77AC.s\"");
#else
#error "TODO: write sub_80F77AC to match asm/nonmatching/sub_80F77AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7804.s\"");
#else
#error "TODO: write sub_80F7804 to match asm/nonmatching/sub_80F7804.s, then delete this #error"
#endif

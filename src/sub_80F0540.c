#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0540 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0540.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F056C.s\"");
#else
void sub_80F056C(u32* p0, u32 p1, u32* p2)
{
    u32* r4;
    u32* r5;
    u32* r6;
    u32 r0;
    u32 r1;
    u32 r2;
    u32 r3;
    
    r5 = p0;
    r3 = p2;
    r2 = (u32*)0x03000FD0;
    r1 = *(u32*)r3;
    r0 = 0x2C * r1;
    r1 = 0xC8 << 2;
    r0 += r1;
    r1 = *(u32*)r2;
    r4 = r1 + r0;
    r1 = *(u32*)r3;
    r2 = 0x01;
    r0 = r1 & r2;
    r0 <<= 0x04;
    r0 += 0x0C;
    r6 = r4 + r0;
    r0 = 0x02;
    r1 &= r0;
    if (r1 == 0)
    {
        r0 = *(u32*)((u8*)r5 + 0x14);
        r5 = (u32*)0x0000010B;
        r1 = r0 + r5;
        r0 = *(u32*)r3;
        r1 = *(u8*)r1;
        if (r0 < r1)
        {
            r0 = r0 & 0x02;
            r0 <<= 0x01;
            r1 = *(u8*)(r4 + 0x0B);
            r0 |= r1 & 0x03;
            *(u8*)(r4 + 0x0B) = r0;
        }
        *(u8*)(r6 + 0x0C) = 0xFF;
    }
    else
    {
        r0 = *(u32*)r3;
        r1 = *(u32*)((u8*)r5 + 0x14);
        r0 <<= 0x02;
        r0 += r1;
        r0 = *(u32*)(r0 + 0x28);
        *(u32*)(r4) = r0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F05DC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0618.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0678.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F06EC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0704.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

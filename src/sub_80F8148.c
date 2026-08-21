#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8148 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8148.s\"");
#else
void sub_80F8148(u32* p0, u16* p1, u32* p2)
{
    u32* r0;
    u32* r3;
    u16 r1;
    u8* r4;
    u32 r12;
    
    r0 = (u32*)0x03000FD8;
    r3 = (u32*)((u8*)r0 + *(u32*)((u8*)p2 + 0x00));
    r1 = *(u16*)((u8*)p1 + 0xFD);
    r1 <<= 0x1C;
    r1 >>= 0x1A;
    r3 = (u32*)((u8*)r3 + 0x58);
    r3 = (u32*)((u8*)r3 + r1);
    r12 = *(u32*)((u8*)r3 + 0x00);
    r1 = *(u16*)((u8*)p2 + 0x00);
    r0 = (u32*)((u8*)r12 + 0xD0);
    *(u16*)((u8*)r0 + 0x00) = r1;
    r1 = *(u16*)((u8*)p2 + 0x02);
    r4 = (u8*)r12 + 0xD4;
    r1 &= 0x7F;
    r3 = (u8*)r4;
    r0 = *(u8*)r3;
    r0 -= 0xFF;
    r0 &= r0;
    r0 |= r1;
    *(u8*)r3 = r0;
    r1 = *(u16*)((u8*)p2 + 0x04);
    r0 = (u32*)((u8*)r12 + 0xD2);
    *(u16*)((u8*)r0 + 0x00) = r1;
    r0 = *(u8*)r4;
    r0 |= 0x80;
    *(u8*)r4 = r0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8198.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

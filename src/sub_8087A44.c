#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8087A44 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087A44.s\"");
#else
void sub_8087A44(u16* p0, u16* p1, s32 p2, s32 p3)
{
    s32 r7;
    s32 r0;
    s32 r3;
    s32 r6;
    u32 r5;
    u32 r4;
    s32 r1;

    r7 = p2;
    r0 = p3;
    if (r7 < 0)
        r0 = r7 + 3;
    r7 = r0 >> 2;
    r0 = p3;
    if (r0 < 0)
        r0 = r0 + 3;
    r3 = r0 >> 2;
    if (r7 != 0 || r3 != 0)
    {
        r5 = *(u32*)0x03001038;
        r0 = r7 * r7;
        r1 = r3 * r3;
        r0 += r1;
        *(u32*)(sp + 0) = r3;
        r1 = *(u32*)0x0819832C;
        r4 = r1 - *(u32*)0x08198220;
        r1 = *(u32*)(r5 + 0);
        r2 = r1 + r4;
        r1 = *(u32*)(sp + 0x20);
        r0 = r7 * r1;
        r1 = r0;
        r0 = *(u32*)r2;
        r6 = r0;
        *(u16*)((u8*)p0) = r0;
        r2 = *(u32*)(r5 + 0);
        r2 += r4;
        r3 = *(u32*)(sp + 0);
        r1 = *(u32*)(sp + 0x20);
        r0 = r3 * r1;
        r1 = r6;
        r0 = *(u32*)r2;
        *(u16*)((u8*)p1) = r0;
        r0 = r6;
    }
    else
    {
        *(u16*)((u8*)p0) = 0;
        *(u16*)((u8*)p1) = 0;
        r0 = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087AE0.s\"");
#else
extern void sub_8086F0C();

void sub_8087AE0(u32* p0)
{
    u32* r0;
    u32* r2;
    u32* r3;
    u8 r1;
    u32 r4;
    
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)((u8*)r0 + 0x0);
    r2 = (u32*)((u8*)r0 + 0x70);
    r3 = (u32*)((u8*)r0 + 0x74);
    
    r0 = (u32*)((u8*)r2 + 0x7E);
    r1 = *(u8*)r0;
    r4 = 0x06;
    r0 = (u32*)((u8*)r2 + 0x81);
    r1 = *(u8*)r0;
    r1 |= 0x04;
    *(u8*)r0 = r1;
    
    r0 = (u32*)((u8*)r3 + 0x7E);
    r1 = *(u8*)r0;
    r0 = (u32*)((u8*)r3 + 0x81);
    r1 = *(u8*)r0;
    r1 |= 0x04;
    *(u8*)r0 = r1;
    
    *(u32*)((u8*)p0 + 0x04) = (u32)sub_8086F0C;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087B34.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

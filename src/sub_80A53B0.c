#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A53B0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A53B0.s\"");
#else
extern void sub_80A5428();

void sub_80A53B0(u32* p0)
{
    u32* r0;
    u32* r4;
    u8 r1;
    u32 r2;
    u32* r5;

    r5 = p0;
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)*(r0);
    r4 = (u32*)*(r0 + 0x70 / 4);
    r0 = (u32*)*(r4 + 0x10 / 4);
    r1 = *(r0 + 0x12);
    if ((r1 & 0x08) == 0)
        goto _080A540C;
    r0 = r4;
    r0 += 0x7E / 4;
    r0 = (u32*)*(r0);
    r1 = *(r0 + 0x00);
    r1 &= 0x06;
    if (r1 == 0x02)
        goto _080A53D8;
    if (r1 != 0x04)
        goto _080A5408;
_080A53D8:
    r2 = (u32*)0x03001038;
    r0 = (u32*)0x0819832C;
    r1 = (u32*)0x08198220;
    r0 -= r1;
    r2 = (u32*)*(r2);
    r2 += r0;
    r0 = 0x80 << 7;
    r1 = 0x0F;
    ((void(*)(u32, u32))r2)(r0, r1);
    r2 = r4;
    r2 += 0x82 / 4;
    *(u16*)r2 = (u16)r0;
    r0 = r4;
    r0 += 0x86 / 4;
    *(u16*)r0 = 0x00;
    r2 -= 1;
    r1 = *(r2);
    r0 = -0x21;
    r0 &= r1;
    *(r2) = r0;
_080A5408:
    *(u32*)((u8*)r5 + 0x4C) = (u32)sub_80A5428;
_080A540C:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5428.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A54E4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A56DC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

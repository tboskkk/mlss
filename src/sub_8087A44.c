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

extern s32 sub_8086F0C;

void sub_8087AE0(void *arg0) {
    void *temp_r0_9;
    void *temp_r2_10;
    void *temp_r3_11;

    temp_r0_9 = *(void **)0x03000FD8;
    temp_r2_10 = (*(void **)((s8 *)(temp_r0_9) + (0x70)));
    temp_r3_11 = (*(void **)((s8 *)(temp_r0_9) + (0x74)));
    if ((6 & (*(u8 *)((s8 *)(temp_r2_10) + (0x7E)))) == 2) {
        (*(u8 *)((s8 *)(temp_r2_10) + (0x81))) = (u8) ((*(u8 *)((s8 *)(temp_r2_10) + (0x81))) | 4);
    }
    if ((6 & (*(u8 *)((s8 *)(temp_r3_11) + (0x7E)))) == 2) {
        (*(u8 *)((s8 *)(temp_r3_11) + (0x81))) = (u8) ((*(u8 *)((s8 *)(temp_r3_11) + (0x81))) | 4);
    }
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8086F0C;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087B34.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

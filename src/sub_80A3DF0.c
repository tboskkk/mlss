#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A3DF0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3DF0.s\"");
#else
extern void sub_80A3E68();

void sub_80A3DF0(void* p0) {
    u32* r0;
    u32* r4;
    u8 r1;
    u32* r2;
    u32 r0_2;
    u16 r0_3;
    u8 r1_2;
    u32 r0_4;
    u8 r1_3;
    
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)((u8*)r0 + 0x0);
    r4 = (u32*)((u8*)r0 + 0x74);
    r0 = (u32*)((u8*)r4 + 0x10);
    r1 = *(u8*)((u8*)r0 + 0x12);
    if ((r1 & 0x08) == 0) {
        goto _080A3E4C;
    }
    r0 = (u32*)((u8*)r4 + 0x7E);
    r0_2 = *(u8*)((u8*)r0 + 0x0);
    r1_2 = r0_2 & 0x06;
    if (r1_2 == 0x02) {
        goto _080A3E18;
    }
    if (r1_2 != 0x04) {
        goto _080A3E48;
    }
_080A3E18:
    r2 = (u32*)0x03001038;
    r0 = (u32*)0x0819832C;
    r1 = (u32*)0x08198220;
    r0_3 = (u32)((u8*)r0 - (u8*)r1);
    r2 = (u32*)((u8*)r2 + r0_3);
    r0_4 = 0x80 << 7;
    r1_3 = 0x04;
    ((void(*)(u32, u32))r2)(r0_4, r1_3);
    r2 = (u32*)((u8*)r4 + 0x82);
    *(u16*)((u8*)r2 + 0x0) = r0_4;
    r0 = (u32*)((u8*)r4 + 0x86);
    *(u16*)((u8*)r0 + 0x0) = 0x0;
    r2 = (u32*)((u8*)r4 + 0x81);
    r1_3 = *(u8*)((u8*)r2 + 0x0);
    r0_4 = 0x21;
    r0_4 = -r0_4;
    r0_4 &= r1_3;
    *(u8*)((u8*)r2 + 0x0) = r0_4;
_080A3E48:
    *(u32*)((u8*)p0 + 0x4C) = (u32)&sub_80A3E68;
_080A3E4C:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3E68.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3F3C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A4198.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

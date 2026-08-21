#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A68AC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A68AC.s\"");
#else
extern void sub_80A6924();

void sub_80A68AC(void* p0) {
    u32* r0;
    u32* r4;
    u8 r1;
    u32* r2;
    u16 r0_2;
    u16 r1_2;
    u8 r1_3;
    u32 r0_3;
    u32 r2_2;
    u8 r1_4;
    u8 r0_4;
    
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)((u8*)r0 + 0x00);
    r4 = (u32*)((u8*)r0 + 0x74);
    r0 = (u32*)((u8*)r4 + 0x10);
    r1 = *(u8*)((u8*)r0 + 0x12);
    r0_2 = 0x08;
    r0_2 &= r1;
    if (r0_2 == 0) {
        goto _080A6908;
    }
    r0 = (u32*)((u8*)r4 + 0x7E);
    r0_3 = *(u8*)((u8*)r0 + 0x00);
    r1_2 = 0x06;
    r1_2 &= r0_3;
    if (r1_2 == 0x02) {
        goto _080A68D4;
    }
    if (r1_2 != 0x04) {
        goto _080A6904;
    }
_080A68D4:
    r2 = (u32*)0x03001038;
    r0 = (u32*)0x0819832C;
    r1 = (u32*)0x08198220;
    r0_4 = *(u32*)((u8*)r0 + 0x00) - *(u32*)((u8*)r1 + 0x00);
    r2_2 = *(u32*)((u8*)r2 + 0x00) + r0_4;
    r0_2 = 0x80;
    r0_2 <<= 7;
    r1_3 = 0x12;
    r0_2 = (*(u32(*)(u32, u16))r2_2)(r0_2, r1_3);
    r2 = (u32*)((u8*)r4 + 0x82);
    *(u16*)((u8*)r2 + 0x00) = r0_2;
    r0 = (u32*)((u8*)r4 + 0x86);
    *(u16*)((u8*)r0 + 0x00) = 0x00;
    r2 = (u32*)((u8*)r4 + 0x81);
    r1_4 = *(u8*)((u8*)r2 + 0x00);
    r0_2 = 0x21;
    r0_2 = -r0_2;
    r0_2 &= r1_4;
    *(u8*)((u8*)r2 + 0x00) = r0_2;
_080A6904:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_80A6924;
_080A6908:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A6924.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A69E0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A6BD8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A6C44.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A6CB0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A6D44.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A6F78.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F52B4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F52B4.s\"");
#else
void sub_80F52B4(u32* p0, u32* p1, u32* p2)
{
    u32* r4 = *(u32**)((u8*)p2 + 0x08);
    if (r4 != 0x1F)
    {
        u32* r0 = *(u32**)0x03000FD8;
        u32* r1 = r0 + 0x58/4;
        r1 += *(u32*)((u8*)p2) >> 2;
        u32* r3 = *r1;
        u32 r0_2 = r3 + 0x7E;
        u8 r1_2 = *(u8*)r0_2;
        u8 r0_3 = r1_2 & 6;
        if (r0_3 == 6)
            return;
        u32 r0_4 = (u32)r4 - 8;
        if (r0_4 > 0x11)
            return;
        r0_4 <<= 2;
        u32* r1_3 = *(u32**)(0x080F5304 + r0_4);
        r0 = *r1_3;
        __asm volatile("mov pc, %0" :: "r"(r0));
    }
    else
    {
        u32* r0 = *(u32**)0x03000FD8;
        u32 r1_2 = *(u32*)((u8*)p2 + 0x04);
        *(u16*)((u8*)r0 + 0x18) = (u16)r1_2;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F53E0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F5478.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_use_ability.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F571C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

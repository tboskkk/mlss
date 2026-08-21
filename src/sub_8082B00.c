#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082B00 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082B00.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082B20.s\"");
#else
void sub_8082B20(void* p0)
{
    u32* r7 = (u32*)((u8*)p0 + (*(u32*)((u8*)p0 + 0x778) << 3));
    u32* r6 = (u32*)((u8*)p0 + (*(u32*)((u8*)p0 + 0x774) << 3) - 4);
    if (*(u32*)r7 != *(u32*)r6)
    {
        s16 r1 = *(u16*)r7;
        s16 r0 = *(u16*)r6;
        s16 r2 = *(u16*)((u8*)p0 + 0x77A);
        s16 r0_2 = *(u16*)((u8*)p0 + 0x776);
        r1 -= r0;
        r2 -= r0_2;
        r1 <<= 16;
        r1 >>= 16;
        r2 <<= 16;
        r2 >>= 16;
        sub_805A954(r1, r2);
        *(u16*)r6 = *(u16*)r7;
        *(u16*)r5 = *(u16*)r4;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082B6C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

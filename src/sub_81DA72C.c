#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DA72C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA72C.s\"");
#else
void sub_81DA72C(u32 r0, u32 r1, s16 r2)
{
    u32 r4;
    u32 r5;
    u16 r6;
    u16 r3;
    
    r2 <<= 16;
    r2 >>= 16;
    
    r4 = 0x04000208;
    r3 = *(u16*)r4;
    r6 = r3;
    *(u16*)r4 = 0;
    
    r5 = 0x04000204;
    r4 = *(u16*)r5;
    r4 &= 0xF8FF;
    
    r3 = 0x03001BD0;
    r3 = *(u32*)r3;
    r3 = *(u16*)(r3 + 6);
    r4 |= r3;
    *(u16*)r5 = r4;
    
    r3 = 0x040000D4;
    *(u32*)r3 = r0;
    
    r0 = 0x040000D8;
    *(u32*)r0 = r1;
    
    r1 = 0x040000DC;
    r0 = 0x80000000;
    r2 |= r0;
    *(u32*)r1 = r2;
    
    r1 += 2;
    r0 = 0x8000;
    r0 += r0;
    r2 = *(u16*)r1;
    r0 &= r2;
    if (r0 != 0)
    {
        r2 = 0x040000DE;
        r0 = 0x8000;
        r1 = r0;
        do
        {
            r0 = *(u16*)r2;
            r0 &= r1;
        } while (r0 != 0);
    }
    
    r0 = 0x04000208;
    *(u16*)r0 = r6;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA7AC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA85C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA870.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA9D0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

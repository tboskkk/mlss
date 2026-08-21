#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EDAB0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EDAB0.s\"");
#else
void sub_80EDAB0(u32* p0, u32* p1, u32* p2)
{
    u32* r6 = p0;
    u32* r7 = p1;
    u32* r2 = p2;
    u32* r0 = (u32*)((u8*)r2 + 0x00);
    u32* r1 = *(u32*)((u8*)r6 + 0x14);
    u32* r0_2 = (u32*)((u8*)r1 + ((*(u32*)((u8*)r0) << 2) & 0xFFFFFFFC));
    u32* r3 = *(u32*)((u8*)r0_2 + 0x28);
    u32* r5 = (u32*)((u8*)r3 + 0x58);
    u32* r0_3 = *(u32*)((u8*)r2 + 0x00);
    u32* r0_4 = (u32*)((*(u32*)((u8*)r0_3) >> 1) & 0x7FFFFFFF);
    if ((*(u32*)((u8*)r0_4) > 5))
    {
        u32* r0_5 = *(u32*)((u8*)r2 + 0x04);
        *(u32*)((u8*)r7) = *(u32*)((u8*)r0_5);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EDBC4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EDD48.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EDEB4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EDF90.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

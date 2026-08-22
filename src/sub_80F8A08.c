#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8A08 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8A08.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8A28.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment.

   The previous draft here was TRUNCATED mid-expression -- an unbalanced
   brace, which swallows the rest of the translation unit and makes agbcc
   report the failure at 'end of input' or against some innocent later
   function. That mis-attribution is why unblock_files.py could never
   clear it: it blames the guard block containing the reported line. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8A90.s\"");
#else
void sub_80F8A90(u32* p0, u32* p2)
{
    u32 r1;
    u32 r0;
    u32 r2;

    r1 = *(u32*)((u8*)p2 + 0x04);
    r1 <<= 8;
    r0 = *(u32*)((u8*)p0 + 0x2C);
    r0 += r1;
    r2 = *(u32*)((u8*)p2);
    if (r2 == 0)
    {
        r1 = 0xF4 << 3;
        r2 = r0 + r1;
        r1 = *(u16*)(r2);
        r0 = 4 | r1;
    }
    else if (r2 == 1)
    {
        r1 = 0xF4 << 3;
        r2 = r0 + r1;
        r1 = *(u16*)(r2);
        r0 = 0xFFFFFFFB & r1;
    }
    *(u16*)(r2) = (u16)r0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/ybai_script_update_80F8ACC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

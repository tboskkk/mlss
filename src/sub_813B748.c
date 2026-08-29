#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B748 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B748.s\"");
#else
void sub_813B748(void* p0)
{
    u16* ptr = (u16*)((u8*)p0 + 0x2DE);
    if (*ptr == 0)
    {
        return;
    }
    else
    {
        s16 val1 = *(s16*)((u8*)p0 + 0x242);
        *(u32*)((u8*)p0 + 0x0C) += val1;
        s16 val2 = *(s16*)((u8*)p0 + 0x244);
        *(u32*)((u8*)p0 + 0x10) += val2;
        *ptr -= 1;
        u16 temp = *ptr;
        if ((temp ^ (temp >> 15)) & 1)
            temp = ~temp + 1;
        return;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B798.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B844.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

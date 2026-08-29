#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B4C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B4C4.s\"");
#else
void sub_813B4C4(void* p0)
{
    u32* ptr = (u32*)((u8*)p0 + 0x0C);
    u32* ptr2 = (u32*)((u8*)p0 + 0x10);
    u16* ptr3 = (u16*)((u8*)p0 + 0x00);
    u16 val = *ptr3;
    if (val == 0)
    {
        return;
    }
    u16* ptr4 = (u16*)((u8*)p0 + 0x242);
    s16 val2 = *(s16*)((u8*)ptr4 + 0x00);
    *ptr += val2;
    u16* ptr5 = (u16*)((u8*)p0 + 0x242);
    s16 val3 = *(s16*)((u8*)ptr5 + 0x00);
    *ptr2 += val3;
    *ptr3 = val - 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B514.s\"");
#else
void sub_813B514(void* p0)
{
    u16* ptr = (u16*)((u8*)p0 + 0x2DE);
    if (*ptr == 0)
    {
        return;
    }
    else
    {
        u16* ptr2 = (u16*)((u8*)p0 + 0x242);
        s16 val1 = *(s16*)((u8*)ptr2 + 0x0);
        *(u32*)((u8*)p0 + 0x0C) += val1;
        u16* ptr3 = (u16*)((u8*)p0 + 0x244);
        s16 val2 = *(s16*)((u8*)ptr3 + 0x0);
        *(u32*)((u8*)p0 + 0x10) += val2;
        (*ptr)--;
        if ((*ptr) < 0)
        {
            return;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B564.s\"");
#else
void sub_813B564(void* p0)
{
    u32* ptr = (u32*)((u8*)p0 + 0x0C);
    u32* ptr2 = (u32*)((u8*)p0 + 0x10);
    u16* ptr3 = (u16*)((u8*)p0 + 0x00);
    u16 val = *ptr3;
    if (val == 0)
    {
        return;
    }
    else
    {
        u16* ptr4 = (u16*)((u8*)p0 + 0x242);
        s16 val2 = *(s16*)((u8*)ptr4 + 0x00);
        *ptr += val2;
        u16* ptr5 = (u16*)((u8*)p0 + 0x242);
        s16 val3 = *(s16*)((u8*)ptr5 + 0x00);
        *ptr2 += val3;
        *ptr3 = val - 1;
        if ((val - 1) < 0)
        {
            return;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B5B4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B614.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

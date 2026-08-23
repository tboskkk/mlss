#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81507EC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81507EC(s32 arg0, void *arg1) {
    (*(s32 *)((s8 *)(arg1) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0xC))) + (*(s16 *)((s8 *)(arg1) + (0x242))));
    (*(s32 *)((s8 *)(arg1) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x10))) + (*(s16 *)((s8 *)(arg1) + (0x244))));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150810.s\"");
#else
extern void sub_81507A8();

void sub_8150810(u8* p1, u8* p2)
{
    u32* r3 = (u32*)((u8*)p1 + 0x18);
    if (*(u32*)((u8*)p1 + 0x18) > 0xFF)
    {
        *(u32*)((u8*)p1 + 0x248) = *(u32*)((u8*)p1 + 0x2C8);
        *(u32*)((u8*)p2) = (u32)sub_81507A8;
    }
    else
    {
        s16 r1 = *(s16*)((u8*)p1 + 0x242);
        *(u32*)((u8*)p1 + 0x0C) += r1;
        r1 = *(s16*)((u8*)p1 + 0x244);
        *(u32*)((u8*)p1 + 0x10) += r1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815085C.s\"");
#else
void sub_815085C(u32 r0)
{
    if (r0 > 4)
        return;
    
    u32* ptr = (u32*)0x08150874;
    ptr += r0;
    r0 = *ptr;
    ((void(*)())r0)();
}
#endif

u8 sub_80E99E0(u16);                                /* extern */

u8 sub_8150A00(s32 arg0) {
    return sub_80E99E0((u16) (arg0 + 0x1B90));
}

s32 sub_80E9A6C(u16, u8);                       /* extern */

void sub_8150A1C(s32 arg0, u8 arg1) {
    sub_80E9A6C((u16) (arg0 + 0x1B90), arg1);
}

void sub_8150A38(void) {
    sub_8021FD4();
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150A44.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150AC8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

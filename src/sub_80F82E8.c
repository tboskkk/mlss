#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F82E8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F82E8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F83A0.s\"");
#else
extern void sub_81054D4();

void sub_80F83A0(void* p0, void* p1, void* p2) {
    u32* r3 = (u32*)0x03000FD8;
    u32* r0 = (u32*)((u8*)r3 + (*(u32*)((u8*)p2) << 2) + 0xB6);
    u32* r4 = (u32*)*(u32*)((u8*)r0);
    u32* r2 = (u32*)((u8*)p1);
    u32 r1 = *(u32*)((u8*)r2) ^ 1;
    u32 r5 = (u32)r3;
    if ((r1 & 1) == 0) {
        r1 = 0;
    } else {
        if (*(u32*)((u8*)p2) & 2) {
            r1 = 1;
        } else {
            r1 = 2;
        }
    }
    u8* r4_5 = (u8*)r4 + 5;
    *(u8*)r4_5 = (*(u8*)r4_5 & 0xFC) | r1;
    u32* r1_2 = (u32*)((u8*)r5);
    *(u32*)((u8*)r1_2 + 0x24) = (u32)sub_81054D4;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F83F0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8438.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_80E9C4C(s32, s32, s32, s32, s32, s32); /* extern */
s32 sub_80F6B44(void *, s16, s32);                  /* extern */

s32 sub_80F84AC(void *arg0, s32 arg1, void *arg2, s32 arg3) {
    sub_80E9C4C(arg3, arg1 + 0x18, (*(s32 *)((s8 *)(arg0) + (0x2C))) + 0x1794, arg1 + 0xA8, (s32) (*(s16 *)((s8 *)(arg2) + (0))), sub_80F6B44(arg0, (*(s16 *)((s8 *)(arg2) + (4))), (*(s32 *)((s8 *)(arg2) + (8)))));
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F84F8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F857C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

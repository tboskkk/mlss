#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8008 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8008.s\"");
#else
void sub_80F8008(u32* p0, u32* p1, u32* p2)
{
    u32* r3;
    u32* r1;
    u32 r0;
    u32 r12;
    
    r3 = p2;
    r1 = (u32*)0x03000FD8;
    r1 = (u32*)((u8*)r1 + 0x58);
    r0 = *(u32*)((u8*)r3 + 0x04);
    r1 = (u32*)((u8*)r1 + (r0 << 2));
    r1 = *(u32**)r1;
    r12 = (u32)r1;
    r0 = *(u32*)r3;
    if (r0 == 0)
    {
        r1 = (u32*)((u8*)r12 + 0xD8);
        r0 = *(u32*)((u8*)r3 + 0x04);
        r0 <<= 8;
        *(u32*)((u8*)r1 + 0x00) = r0;
        r1 = (u32*)((u8*)r1 + 0x04);
        r0 = *(u32*)((u8*)r3 + 0x08);
        r0 <<= 8;
        *(u32*)((u8*)r1 + 0x00) = r0;
        r1 = (u32*)((u8*)r1 + 0x04);
        r0 = *(u32*)((u8*)r3 + 0x0C);
        r0 <<= 8;
        *(u32*)((u8*)r1 + 0x00) = r0;
    }
    else if (r0 == 1)
    {
        r1 = (u32*)((u8*)r12 + 0xD8);
        r0 = *(u32*)((u8*)r3 + 0x04);
        r0 <<= 8;
        r1 = (u32*)((u8*)r1 + 0x00);
        *(u32*)((u8*)r1 + 0x00) += r0;
        r1 = (u32*)((u8*)r1 + 0x04);
        r0 = *(u32*)((u8*)r3 + 0x0C);
        r0 <<= 8;
        *(u32*)((u8*)r1 + 0x00) += r0;
        r1 = (u32*)((u8*)r1 + 0x04);
        r0 = *(u32*)((u8*)r3 + 0x08);
        r0 <<= 8;
        *(u32*)((u8*)r1 + 0x00) += r0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8074.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_807C1C8(s32, s32);                      /* extern */

s32 sub_80F80B4(s32 arg0, s32 arg1, void *arg2) {
    sub_807C1C8((*(s32 *)((s8 *)(arg2) + (0))), (*(s32 *)((s8 *)(arg2) + (4))));
    return 1;
}

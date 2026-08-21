#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F6EF8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F6EF8.s\"");
#else
extern void sub_80FFEFC();

void sub_80F6EF8(void)
{
    u32* r2;
    u32* r0;
    u16* r1;
    u32 r3;
    
    r0 = (u32*)0x03000FD8;
    r2 = (u32*)*r0;
    r0 = &r2[0xC4 >> 2];
    if (*r0 == 0)
        goto _080F6F5E;
    r1 = (u16*)((u8*)r0 + 0x10);
    r0 = &r2[(0xBF << 2) + ((s16)*r1 << 2)];
    if (*r0 == 0)
        goto _080F6F5E;
    r0 = &r2[0x7C >> 2];
    r3 = *(u32*)((u8*)r0 + 0x34);
    if (r3 == 0)
        goto _080F6F40;
    r0 = &r2[0x24 >> 2];
    if (*r0 != (u32)sub_80FFEFC)
        goto _080F6F5E;
    r0 = (u32*)((u8*)r3 + 0x28);
    r0 = (u32*)((u8*)r0 + 0xF4);
    r0 = (u32*)((u8*)r0 + 0x11);
    goto _080F6F6C;
_080F6F40:
    r0 = (u32*)((u8*)r0 + 0x9C);
    if (*(u32*)r0 != 5)
        goto _080F6F4E;
    r0 = (u32*)0x10;
    goto _080F6F6C;
_080F6F4E:
    r0 = &r2[0xD1 << 2];
    if (*(u32*)r0 & 0x80)
        goto _080F6F5E;
_080F6F5E:
    r0 = (u32*)-1;
    goto _080F6F6C;
_080F6F64:
    r0 = &r2[0x2BF];
    r0 = (u32*)(*(u8*)r0 >> 6);
_080F6F6C:
    {
        u32 temp = *(u32*)((u8*)&r1 + 4);
        r1 = (u16*)temp;
        r1 = (u16*)temp;
        __asm__ volatile("" : "=r"(r1) : "r"(r1));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F6F74.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7068.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F746C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

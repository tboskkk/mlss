#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8138FD4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8138FD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8138FF0.s\"");
#else
u32 sub_8138FF0(u32 p0, s16 p1)
{
    u32 r2;
    u32 r3;
    u32 r0;
    u32 r1;

    r2 = 0x100;
    r3 = p0 + r2;
    r2 = 0xB0;
    r0 = p0 + r2;
    r1 = p1 << 16;
    r1 >>= 15;
    r2 = *(u32*)(r0);
    r2 += r1;
    r0 = 0;
    r0 = *(s8*)(r2 + r0);
    r0 <<= 4;
    r0 += 8;
    *(u16*)((u8*)p0 + 0x100 + 0x3C) = r0;
    r2 += 1;
    r0 = 0;
    r0 = *(s8*)(r2 + r0);
    r0 <<= 4;
    r0 += 8;
    *(u16*)((u8*)p0 + 0x100 + 0x38) = r0;
    r2 += 1;
    r0 = 0;
    r0 = *(s8*)(r2 + r0);
    r0 <<= 4;
    r0 += 8;
    *(u16*)((u8*)p0 + 0x100 + 0x3E) = r0;
    r0 = 1;
    r0 = *(s8*)(r2 + r0);
    r0 <<= 4;
    r0 += 8;
    *(u16*)((u8*)p0 + 0x100 + 0x3A) = r0;
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139030.s\"");
#else
u32 sub_8139030(u32 p0, s16 p1) {
    u32 r2;
    u32 r3;
    u32 r0;
    u32 r1;
    
    r2 = 0x100;
    r3 = p0 + r2;
    r2 = 0xB4;
    r0 = p0 + r2;
    r1 = p1 << 0x10;
    r1 = r1 >> 0xF;
    r2 = *(u32*)(r0 + 0x0);
    r2 = r2 + r1;
    r1 = 0x0;
    r0 = *(s16*)(r2 + r1);
    r0 = r0 << 0x4;
    r0 = r0 + 0x8;
    *(u16*)(r3 + 0x3C) = r0;
    r2 = r2 + 0x2;
    r1 = 0x0;
    r0 = *(s16*)(r2 + r1);
    r0 = r0 << 0x4;
    r0 = r0 + 0x8;
    *(u16*)(r3 + 0x38) = r0;
    r2 = r2 + 0x2;
    r1 = 0x0;
    r0 = *(s16*)(r2 + r1);
    r0 = r0 << 0x4;
    r0 = r0 + 0x8;
    *(u16*)(r3 + 0x3E) = r0;
    r1 = 0x2;
    r0 = *(s16*)(r2 + r1);
    r0 = r0 << 0x4;
    r0 = r0 + 0x8;
    *(u16*)(r3 + 0x3A) = r0;
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139070.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

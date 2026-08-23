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
void sub_8139030(void *arg0, s32 arg1) {
    void *temp_r2_14;
    void *temp_r2_20;

    temp_r2_14 = (*(s32 *)((s8 *)(arg0) + (0x1B4))) + ((s32) (arg1 << 0x10) >> 0xF);
    (*(s16 *)((s8 *)(arg0) + (0x13C))) = (s16) (((*(s16 *)((s8 *)(temp_r2_14) + (0))) * 0x10) + 8);
    temp_r2_20 = temp_r2_14 + 2;
    (*(s16 *)((s8 *)(arg0) + (0x138))) = (s16) (((*(s16 *)((s8 *)(temp_r2_14) + (2))) * 0x10) + 8);
    (*(s16 *)((s8 *)(arg0) + (0x13E))) = (s16) (((*(s16 *)((s8 *)(temp_r2_20) + (2))) * 0x10) + 8);
    (*(s16 *)((s8 *)(arg0) + (0x13A))) = (s16) (((*(s16 *)((s8 *)((temp_r2_20 + 2)) + (2))) * 0x10) + 8);
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

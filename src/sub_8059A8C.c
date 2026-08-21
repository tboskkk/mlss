#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8059A8C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059A8C.s\"");
#else
void sub_8059A8C(u32 p0, u32 p1, u32 p2, u32 p3)
{
    u32 r4;
    u32 r5;
    u32 r6;
    u32 r0;
    u32 r1;
    u32 r2;
    u32 r3;

    r6 = *(u32*)((u8*)p0 + 0x74);
    r5 = *(u32*)((u8*)p0 + 0x68);
    r4 = r6;
    r1 = p1 << 0x10;
    r5 <<= 0x10;
    r6 = r4;
    r3 = 0xF;
    r1 >>= 0x6;
    r3 &= p2;
    r4 = r3 << 0x6;
    r4 += r1;
    r3 = r3 & 0xF;
    r2 = (r3 << 0x1);
    r4 += r2;
    r4 <<= 0x10;
    r3 <<= 0x1;
    r3 += 0x1;
    r3 <<= 0x5;
    r1 += r3;
    r1 += r2;
    r1 <<= 0x10;
    r2 = p0 + 0x7C;
    r2 = *(u16*)((u8*)r2);
    r2 <<= 0x1C;
    r2 >>= 0x10;
    r4 >>= 0xF;
    r4 += r5;
    r5 >>= 0xD;
    r5 += r6;
    r0 = *(u16*)((u8*)r5);
    r0 += r2;
    *(u16*)((u8*)r4) = r0;
    r0 = *(u16*)((u8*)r5 + 0x2);
    r0 += r2;
    *(u16*)((u8*)r4 + 0x2) = r0;
    r1 >>= 0xF;
    r1 += r5;
    r0 = *(u16*)((u8*)r5 + 0x4);
    r0 += r2;
    *(u16*)((u8*)r1) = r0;
    r0 = *(u16*)((u8*)r5 + 0x6);
    r2 += r0;
    *(u16*)((u8*)r1 + 0x2) = r2;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059AF4.s\"");
#else
#error "TODO: write sub_8059AF4 to match asm/nonmatching/sub_8059AF4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059D04.s\"");
#else
#error "TODO: write sub_8059D04 to match asm/nonmatching/sub_8059D04.s, then delete this #error"
#endif

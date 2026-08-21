#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E9310 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9310.s\"");
#else
#error "TODO: write sub_80E9310 to match asm/nonmatching/sub_80E9310.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9330.s\"");
#else
void sub_80E9330(u32* p0, u32 p1)
{
    u32 r2;
    u8* r3;
    u32 r0;
    u8 r1;

    r2 = p1 << 16;
    r2 >>= 16;
    r3 = *(u32**)((u8*)p0 + 0x04);
    r0 = 0xD9 << 1;
    r0 += r3;
    r1 = *(u8*)((u8*)r0 + 0x00);
    r1 >>= r2;
    r1 ^= 0x01;
    r1 &= 0x01;
    if (r1 != 0)
    {
        r0 = r2 * 0x4C;
        r0 += r3;
        r3 = (u8*)r0;
        r3 += 0x42;
        r1 = *(u8*)((u8*)r3 + 0x00);
        if ((r1 & 0x04) != 0)
        {
            r1 = -(0x05);
            r1 &= r1;
            *(u8*)((u8*)r3 + 0x00) = r1;
        }
        else
        {
            r0 = r1 << 19;
            r0 >>= 19;
            r0 += 0x01;
            r0 &= 0x0F;
            r0 <<= 3;
            r1 = -(0x79);
            r1 &= r1;
            r1 |= r0;
            *(u8*)((u8*)r3 + 0x00) = r1;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9384.s\"");
#else
#error "TODO: write sub_80E9384 to match asm/nonmatching/sub_80E9384.s, then delete this #error"
#endif

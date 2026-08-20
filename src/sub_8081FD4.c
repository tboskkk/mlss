#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8081FD4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081FD4.s\"");
#else
extern void sub_8081FB0();

void sub_8081FD4(void* p0)
{
    u32* r3;
    u32 r0;
    u32 r1;
    u32 r2;
    u8 r1_2;
    u32 r0_2;
    u32 r1_3;
    
    r3 = (u32*)0x03000FD8;
    r0 = *r3;
    r1 = 0x000002BF;
    r2 = r0 + r1;
    r1_2 = *(u8*)r2;
    if ((r1_2 & 0x20) != 0)
    {
        r0_2 = ~(0x21);
        r1_3 = r1_2 & r0_2;
        *(u8*)r2 = (u8)r1_3;
        r0_2 = *r3;
        r1_3 = 0x91;
        r1_3 <<= 2;
        r0_2 += r1_3;
        r0_2 = *(u32*)r0_2;
        process_disable(r0_2);
        *(u32*)((u8*)p0 + 0x04) = (u32)sub_8081FB0;
        _call_via_r1(p0);
    }
}
#endif

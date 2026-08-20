#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805A900 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805A900.s\"");
#else
void sub_805A900(u32* p0)
{
    u32* r4 = (u32*)0x08A2711C;
    u32* r3 = (u32*)0x083AFC5C;
    u16 r2 = *(u16*)((u8*)p0 + 0x1E);
    u32 r1 = (r2 * 3) * 4;
    r1 += (u32)r3;
    r1 = *(u8*)(r1 + 1);
    u32* r2_ptr = (u32*)0x083AFEC0;
    r1 <<= 2;
    r1 += (u32)r2_ptr;
    r1 = *(u16*)(r1 + 0);
    r1 <<= 2;
    r1 += (u32)r4;
    r1 = *(u32*)(r1 + 0);
    r4 = r1 + r4;
    u32 r2_var = 0;
    u32* r3_ptr = *(u32**)((u8*)p0 + 0x44);
    u32 r5 = 0x000003FF;
    
    do
    {
        u32 r0 = r2_var << 1;
        u16* r1_ptr = (u16*)((u8*)r3_ptr + r0);
        u16 r0_val = *(u16*)((u8*)r4 + r0);
        *(u16*)(r1_ptr) = r0_val;
        r2_var++;
    } while (r2_var <= r5);
}
#endif

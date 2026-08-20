#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801A6B0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801A6B0.s\"");
#else
void sub_801A6B0(void)
{
    u32 *r4;
    u16 *r3;
    u16 *r2;
    u32 r0;
    u16 r1;
    u8 *r5;
    u32 r6;
    
    r0 = 0x0300034C;
    r1 = 0x00000888;
    r0 += r1;
    r1 = *(u8*)r0;
    r0 = 0x06;
    r0 &= r1;
    if (r0 != 0x02)
        goto _0801A720;
    
    r2 = (u16*)0x03000D18;
    r1 = *(u8*)r2;
    r0 = 0x02;
    r0 = -r0;
    r0 &= r1;
    r1 = 0x0F;
    r1 = -r1;
    r0 &= r1;
    r1 = 0x22;
    r1 = -r1;
    r0 &= r1;
    *(u8*)r2 = r0;
    
    r4 = (u32*)0x04000208;
    r6 = 0x00;
    *(u16*)r4 = r6;
    
    r3 = (u16*)0x04000200;
    r1 = *(u16*)r3;
    r0 = 0x0000FFBF;
    r0 &= r1;
    *(u16*)r3 = r0;
    
    r2 = (u16*)0x04000202;
    r0 = *(u16*)r2;
    r1 = 0x40;
    r0 |= r1;
    *(u16*)r2 = r0;
    
    r5 = (u8*)0x04000208;
    r6 = 0x01;
    *(u16*)r4 = r6;
    *(u16*)r4 = r6;
    r1 = *(u16*)r3;
    r0 = 0x0000FF7F;
    r0 &= r1;
    *(u16*)r3 = r0;
    
    r0 = *(u16*)r2;
    r1 = 0x80;
    r0 |= r1;
    *(u16*)r2 = r0;
    
    *(u16*)r4 = r6;
    *(u16*)r4 = r6;
    
    r1 = (u16*)0x04000128;
    r2 = 0x80;
    r2 <<= 6;
    r0 = r2 + 0x0;
    *(u16*)r1 = r0;
    
    r1 -= 0x1C;
    r0 = 0x80;
    r0 <<= 8;
    *(u32*)r1 = r0;
    
    *(u16*)r4 = r6;
    
_0801A720:
    return;
}
#endif

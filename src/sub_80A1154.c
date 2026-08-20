#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A1154 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A1154.s\"");
#else
extern void sub_80A11AC();

void sub_80A1154(u32* p0) {
    u32* r0;
    u32* r3;
    u8 r1;
    u8 r0_2;
    u16 r0_3;
    u8 r1_2;
    u8 r0_4;
    
    r0 = (u32*)0x03000FD8;
    r0 = *(u32**)r0;
    r3 = *(u32**)(r0 + 0x70 / 4);
    r0 = *(u32**)(r3 + 0x10 / 4);
    r1 = *(u8*)(r0 + 0x12);
    
    if ((r1 & 0x08) == 0) {
        goto _080A119E;
    }
    
    r0 = r3 + 0x7E / 4;
    r0_2 = *(u8*)r0;
    
    if ((r0_2 & 0x06) == 0x02) {
        goto _080A117C;
    }
    
    if ((r0_2 & 0x06) != 0x04) {
        goto _080A119A;
    }
    
_080A117C:
    r0 = r3 + 0x82 / 4;
    r0_3 = 0x8000;
    *(u16*)r0 = r0_3;
    
    r0 = r3 + 0x86 / 4;
    *(u16*)r0 = 0;
    
    r2 = r3 + 0x81 / 4;
    r1_2 = *(u8*)r2;
    r0_4 = 0x21;
    r0_4 = -r0_4;
    r0_4 &= r1_2;
    *(u8*)r2 = r0_4;
    
_080A119A:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_80A11AC;
    
_080A119E:
    return;
}
#endif

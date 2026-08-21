#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80B35C8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B35C8.s\"");
#else
extern void sub_80B9504();

void sub_80B35C8(void* p0)
{
    u32* r0;
    u32* r1;
    u32* r4;
    u32* r5;
    u32* r2;
    u32* r6;
    u32 r3;
    u16 r0_2;
    u16 r1_2;
    u8 r0_3;
    
    r6 = (u32*)p0;
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)((u8*)r0 + 0x0);
    r0 = (u32*)((u8*)r0 + 0x0);
    r1 = (u32*)((u8*)r0 + 0x70);
    r4 = (u32*)((u8*)r0 + 0x74);
    r5 = (u32*)((u8*)r1 + 0x54);
    
    if (*r5 == 0)
    {
        r0 = (u32*)((u8*)r4 + 0x7E);
        r0_2 = *(u8*)r0;
        r1_2 = r0_2 & 0x06;
        if (r1_2 == 0x02)
        {
            r2 = (u32*)0x03001038;
            r0 = (u32*)0x0819832C;
            r1 = (u32*)0x08198220;
            r0_3 = *(u8*)((u8*)r0 - (u8*)r1);
            r2 = (u32*)((u8*)r2 + 0x0);
            r2 = (u32*)((u8*)r2 + (u8*)r0_3);
            r0_3 = 0x80 << 7;
            r1_2 = 0x10;
            r3 = *(u32*)((u8*)r2 + 0x0);
            r0_3 = *(u16*)r3;
            r1 = (u32*)((u8*)r4 + 0x82);
            *(u16*)r1 = r0_3;
            r0 = (u32*)((u8*)r4 + 0x86);
            *(u16*)r0 = *r5;
            r2 = (u32*)((u8*)r4 + 0x81);
            r0_2 = *(u8*)r2;
            r0_2 = ~0x21 & r0_2;
            *(u8*)r2 = r0_2;
        }
        else if (r1_2 == 0x04)
        {
            // do nothing
        }
    }
    *(u32*)((u8*)r6 + 0x4C) = (u32)sub_80B9504;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B363C.s\"");
#else
#error "TODO: write sub_80B363C to match asm/nonmatching/sub_80B363C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B36BC.s\"");
#else
#error "TODO: write sub_80B36BC to match asm/nonmatching/sub_80B36BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B37CC.s\"");
#else
#error "TODO: write sub_80B37CC to match asm/nonmatching/sub_80B37CC.s, then delete this #error"
#endif

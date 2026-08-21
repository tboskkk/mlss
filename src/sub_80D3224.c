#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80D3224 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D3224.s\"");
#else
extern void sub_80D3298();

void sub_80D3224(void* p0)
{
    u32* r0;
    u32* r1;
    u32* r4;
    u32* r5;
    u32* r6;
    
    r6 = (u32*)p0;
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)*(r0);
    r1 = (u32*)*(r0 + 0x70/4);
    r4 = (u32*)*(r0 + 0x74/4);
    r5 = (u32*)*(r1 + 0x54/4);
    
    if (r5 == 0)
        return;
        
    r0 = (u32*)((u8*)r4 + 0x7E);
    r0 = (u32*)(*(u8*)r0 & 0x06);
    
    if ((*(u8*)r0 & 0x06) == 0x02)
    {
        r0 = (u32*)0x0819832C;
        r1 = (u32*)0x08198220;
        r0 = (u32*)(r0 - r1);
        r1 = (u32*)0x03001038;
        r1 = (u32*)*(r1);
        r1 = (u32*)((u8*)r1 + r0);
        r0 = (u32*)0x8000;
        r0 = (u32*)(r0 << 7);
        r1 = (u32*)*(r1);
        r0 = (u32*)*(r1)(r0, 0x10);
        *(u16*)((u8*)r4 + 0x82) = (u16)r0;
        *(u16*)((u8*)r4 + 0x86) = (u16)r5;
        r1 = (u32*)((u8*)r4 + 0x81);
        r0 = (u32*)(*(u8*)r1 & 0x21);
        *(u8*)r1 = (u8)(~r0);
    }
    
    *(u32*)((u8*)r6 + 0x4C) = (u32)sub_80D3298;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D3298.s\"");
#else
#error "TODO: write sub_80D3298 to match asm/nonmatching/sub_80D3298.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D33FC.s\"");
#else
#error "TODO: write sub_80D33FC to match asm/nonmatching/sub_80D33FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D3B78.s\"");
#else
#error "TODO: write sub_80D3B78 to match asm/nonmatching/sub_80D3B78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D3C80.s\"");
#else
#error "TODO: write sub_80D3C80 to match asm/nonmatching/sub_80D3C80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D3DD4.s\"");
#else
#error "TODO: write sub_80D3DD4 to match asm/nonmatching/sub_80D3DD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D3FD4.s\"");
#else
#error "TODO: write sub_80D3FD4 to match asm/nonmatching/sub_80D3FD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D405C.s\"");
#else
#error "TODO: write sub_80D405C to match asm/nonmatching/sub_80D405C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D41DC.s\"");
#else
#error "TODO: write sub_80D41DC to match asm/nonmatching/sub_80D41DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D48D8.s\"");
#else
#error "TODO: write sub_80D48D8 to match asm/nonmatching/sub_80D48D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D5150.s\"");
#else
#error "TODO: write sub_80D5150 to match asm/nonmatching/sub_80D5150.s, then delete this #error"
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80C8A7C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C8A7C.s\"");
#else
extern void sub_80C8AF0();

void sub_80C8A7C(u32* p0)
{
    u32* r0;
    u32* r1;
    u32* r4;
    u32* r5;
    u8* r2;
    u16 r1_2;
    u16 r0_2;
    u16 r0_3;
    u16 r1_3;
    u16 r0_4;
    
    r0 = (u32*)0x03000FD8;
    r0 = *(u32**)r0;
    r1 = (u32*)((u8*)r0 + 0x70);
    r4 = (u32*)((u8*)r0 + 0x74);
    r5 = (u32*)((u8*)r1 + 0x54);
    
    if (*(u32**)r5 == 0)
    {
        r0 = (u32*)((u8*)r4 + 0x7E);
        r0_2 = *(u8*)r0;
        r1_2 = r0_2 & 0x06;
        if (r1_2 == 0x02)
            goto _080C8AA0;
        if (r1_2 != 0x04)
            goto _080C8AD0;
_080C8AA0:
        r2 = (u8*)0x03001038;
        r0 = (u32*)0x0819832C;
        r1 = (u32*)0x08198220;
        r0_3 = *(u32*)r0 - *(u32*)r1;
        r2 = *(u8**)r2;
        r2 = (u8*)((u8*)r2 + r0_3);
        r0_4 = 0x80 << 7;
        r1_3 = 0x10;
        (*(void(*)(u32, u32))r2)(r0_4, r1_3);
        *(u16*)((u8*)r4 + 0x82) = r0;
        *(u16*)((u8*)r4 + 0x86) = *(u16*)r5;
        r1 = (u16*)((u8*)r4 + 0x81);
        r0_2 = *(u8*)r1;
        r0_2 = ~0x21 & r0_2;
        *(u8*)r1 = r0_2;
    }
_080C8AD0:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_80C8AF0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C8AF0.s\"");
#else
#error "TODO: write sub_80C8AF0 to match asm/nonmatching/sub_80C8AF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C8BA0.s\"");
#else
#error "TODO: write sub_80C8BA0 to match asm/nonmatching/sub_80C8BA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C8C64.s\"");
#else
#error "TODO: write sub_80C8C64 to match asm/nonmatching/sub_80C8C64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C92E8.s\"");
#else
#error "TODO: write sub_80C92E8 to match asm/nonmatching/sub_80C92E8.s, then delete this #error"
#endif

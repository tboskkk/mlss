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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B41A4.s\"");
#else
#error "TODO: write sub_80B41A4 to match asm/nonmatching/sub_80B41A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B428C.s\"");
#else
#error "TODO: write sub_80B428C to match asm/nonmatching/sub_80B428C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B440C.s\"");
#else
#error "TODO: write sub_80B440C to match asm/nonmatching/sub_80B440C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B4D7C.s\"");
#else
#error "TODO: write sub_80B4D7C to match asm/nonmatching/sub_80B4D7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B4E78.s\"");
#else
#error "TODO: write sub_80B4E78 to match asm/nonmatching/sub_80B4E78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B4FEC.s\"");
#else
#error "TODO: write sub_80B4FEC to match asm/nonmatching/sub_80B4FEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B516C.s\"");
#else
#error "TODO: write sub_80B516C to match asm/nonmatching/sub_80B516C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B5A38.s\"");
#else
#error "TODO: write sub_80B5A38 to match asm/nonmatching/sub_80B5A38.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B62D8.s\"");
#else
#error "TODO: write sub_80B62D8 to match asm/nonmatching/sub_80B62D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B63F8.s\"");
#else
#error "TODO: write sub_80B63F8 to match asm/nonmatching/sub_80B63F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B64A0.s\"");
#else
#error "TODO: write sub_80B64A0 to match asm/nonmatching/sub_80B64A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B6564.s\"");
#else
#error "TODO: write sub_80B6564 to match asm/nonmatching/sub_80B6564.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B6D78.s\"");
#else
#error "TODO: write sub_80B6D78 to match asm/nonmatching/sub_80B6D78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B6EB0.s\"");
#else
#error "TODO: write sub_80B6EB0 to match asm/nonmatching/sub_80B6EB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B6FC8.s\"");
#else
#error "TODO: write sub_80B6FC8 to match asm/nonmatching/sub_80B6FC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B7118.s\"");
#else
#error "TODO: write sub_80B7118 to match asm/nonmatching/sub_80B7118.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B77FC.s\"");
#else
#error "TODO: write sub_80B77FC to match asm/nonmatching/sub_80B77FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B7980.s\"");
#else
#error "TODO: write sub_80B7980 to match asm/nonmatching/sub_80B7980.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B7A3C.s\"");
#else
#error "TODO: write sub_80B7A3C to match asm/nonmatching/sub_80B7A3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B7C40.s\"");
#else
#error "TODO: write sub_80B7C40 to match asm/nonmatching/sub_80B7C40.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B7DB0.s\"");
#else
#error "TODO: write sub_80B7DB0 to match asm/nonmatching/sub_80B7DB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B85D4.s\"");
#else
#error "TODO: write sub_80B85D4 to match asm/nonmatching/sub_80B85D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B869C.s\"");
#else
#error "TODO: write sub_80B869C to match asm/nonmatching/sub_80B869C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B87B4.s\"");
#else
#error "TODO: write sub_80B87B4 to match asm/nonmatching/sub_80B87B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B89A4.s\"");
#else
#error "TODO: write sub_80B89A4 to match asm/nonmatching/sub_80B89A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B91D0.s\"");
#else
#error "TODO: write sub_80B91D0 to match asm/nonmatching/sub_80B91D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B9298.s\"");
#else
#error "TODO: write sub_80B9298 to match asm/nonmatching/sub_80B9298.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B93B0.s\"");
#else
#error "TODO: write sub_80B93B0 to match asm/nonmatching/sub_80B93B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B9420.s\"");
#else
#error "TODO: write sub_80B9420 to match asm/nonmatching/sub_80B9420.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B9490.s\"");
#else
#error "TODO: write sub_80B9490 to match asm/nonmatching/sub_80B9490.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B9504.s\"");
#else
#error "TODO: write sub_80B9504 to match asm/nonmatching/sub_80B9504.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B956C.s\"");
#else
#error "TODO: write sub_80B956C to match asm/nonmatching/sub_80B956C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B95D8.s\"");
#else
#error "TODO: write sub_80B95D8 to match asm/nonmatching/sub_80B95D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B9624.s\"");
#else
#error "TODO: write sub_80B9624 to match asm/nonmatching/sub_80B9624.s, then delete this #error"
#endif

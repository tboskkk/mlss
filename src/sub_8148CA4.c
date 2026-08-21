#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8148CA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148CA4.s\"");
#else
void sub_8148CA4(u32* p1, u32* p2)
{
    u32* r3 = p1;
    u32* r4 = p2;
    s16 r5;
    u32 r0;
    u16 r1;
    
    r3 = (u32*)((u8*)r3 + 0x0);
    r4 = (u32*)((u8*)r4 + 0x0);
    r0 = 0xB7 << 2;
    r3 = (u32*)((u8*)r3 + r0);
    r5 = 0x00;
    r1 = *(s16*)((u8*)r3 + r5);
    r0 = *(u32*)((u8*)r3 + 0x18);
    r0 = r0 - r1;
    *(u32*)((u8*)r3 + 0x18) = r0;
    r1 = 0xD1 << 2;
    r0 = (u32*)((u8*)r3 + r1);
    r1 = *(u32*)((u8*)r0 + 0x00);
    r0 = (u32*)((u8*)r1 + 0x52);
    r0 = *(u16*)((u8*)r0 + 0x00);
    r5 = 0xDD << 1;
    r1 = (u32*)((u8*)r1 + r5);
    *(u16*)((u8*)r1 + 0x00) = r0;
    r1 = 0xE9 << 1;
    r0 = (u32*)((u8*)r3 + r1);
    r0 = *(u16*)((u8*)r0 + 0x00);
    r5 = *(u16*)((u8*)r3 + 0x2DC);
    r0 = r0 + r5;
    *(u16*)((u8*)r3 + 0x2DC) = r0;
    r0 = *(u32*)((u8*)r3 + 0x18);
    if (r0 > 0)
    {
        goto _08148CEC;
    }
    r0 = 0x00;
    *(u32*)((u8*)r3 + 0x18) = r0;
    *(u32*)((u8*)r4 + 0x00) = (u32)0x08148C61;
_08148CEC:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148CF8.s\"");
#else
#error "TODO: write sub_8148CF8 to match asm/nonmatching/sub_8148CF8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148D40.s\"");
#else
#error "TODO: write sub_8148D40 to match asm/nonmatching/sub_8148D40.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148DA4.s\"");
#else
#error "TODO: write sub_8148DA4 to match asm/nonmatching/sub_8148DA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148E2C.s\"");
#else
#error "TODO: write sub_8148E2C to match asm/nonmatching/sub_8148E2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148E98.s\"");
#else
#error "TODO: write sub_8148E98 to match asm/nonmatching/sub_8148E98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148FCC.s\"");
#else
#error "TODO: write sub_8148FCC to match asm/nonmatching/sub_8148FCC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81490EC.s\"");
#else
#error "TODO: write sub_81490EC to match asm/nonmatching/sub_81490EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8149458.s\"");
#else
#error "TODO: write sub_8149458 to match asm/nonmatching/sub_8149458.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81494F4.s\"");
#else
#error "TODO: write sub_81494F4 to match asm/nonmatching/sub_81494F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81495A4.s\"");
#else
#error "TODO: write sub_81495A4 to match asm/nonmatching/sub_81495A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8149660.s\"");
#else
#error "TODO: write sub_8149660 to match asm/nonmatching/sub_8149660.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814979C.s\"");
#else
#error "TODO: write sub_814979C to match asm/nonmatching/sub_814979C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81498DC.s\"");
#else
#error "TODO: write sub_81498DC to match asm/nonmatching/sub_81498DC.s, then delete this #error"
#endif

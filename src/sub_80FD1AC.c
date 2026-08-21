#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FD1AC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FD1AC.s\"");
#else
extern void sub_80FDA34();
extern void sub_81071B8();
extern void sub_80FD39C();

void sub_80FD1AC(void* p0) {
    u32* r3;
    u32* r0;
    u16 r1;
    u16 r2;
    u16 r4;
    
    r3 = *(u32**)0x03000FD8;
    r0 = (u32*)((u8*)r3 + 0x7C);
    r0 = (u32*)((u8*)r0 + 0xEC);
    r1 = *(s16*)r0;
    if (r1 < 0) {
        r1 = *(u8*)((u8*)r3 + 0x0C);
        r2 = 0x80;
        if ((r1 & r2) != 0) {
            r0 = (u32*)((u8*)r3 + 0x80);
            r1 = *(u16*)((u8*)r0 + 0x00);
            r2 = 0x8F;
            r2 <<= 1;
            r1 += r2;
            r0 = (u32*)((u8*)r0 + 0x04);
            r0 = *(u32**)r0;
            r0 += r2;
            r1 = *(u16*)((u8*)r1 + 0x00);
            r0 = *(u16*)((u8*)r0 + 0x00);
            r1 |= r0;
            r2 -= 0x1E;
            r1 &= r2;
            if (r1 != 0) {
                goto _080FD210;
            }
            r0 = *(u32**)0x03000FDC;
            r0 = (u32*)((u8*)r0 + 0x8E58);
            *(u32*)((u8*)p0 + 0x04) = *(u32*)((u8*)p0 + 0x04);
            *(u32**)p0 = (u32*)sub_80FDA34;
            goto _080FD22C;
        }
    }
_080FD210:
    *(u16*)((u8*)p0 + 0x12) = 0x02;
    *(u16*)((u8*)p0 + 0x14) = 0x02;
    *(u32**)p0 = (u32*)sub_81071B8;
    r0 = *(u32**)0x03000FDC;
    r0 = (u32*)((u8*)r0 + 0x8E58);
    *(u32**)r0 = (u32*)sub_80FD39C;
    r4 = *(u16*)((u8*)p0 + 0x12);
    r1 = *(u16*)((u8*)p0 + 0x14);
    r0 = (u32*)((u8*)p0 + 0x04);
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r0 = (u32*)sub_80FDA34;
    *(u32**)r
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FD244.s\"");
#else
#error "TODO: write sub_80FD244 to match asm/nonmatching/sub_80FD244.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FD39C.s\"");
#else
#error "TODO: write sub_80FD39C to match asm/nonmatching/sub_80FD39C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FD44C.s\"");
#else
#error "TODO: write sub_80FD44C to match asm/nonmatching/sub_80FD44C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FD6D4.s\"");
#else
#error "TODO: write sub_80FD6D4 to match asm/nonmatching/sub_80FD6D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FD828.s\"");
#else
#error "TODO: write sub_80FD828 to match asm/nonmatching/sub_80FD828.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FD8BC.s\"");
#else
#error "TODO: write sub_80FD8BC to match asm/nonmatching/sub_80FD8BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FD960.s\"");
#else
#error "TODO: write sub_80FD960 to match asm/nonmatching/sub_80FD960.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FDA34.s\"");
#else
#error "TODO: write sub_80FDA34 to match asm/nonmatching/sub_80FDA34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FDAFC.s\"");
#else
#error "TODO: write sub_80FDAFC to match asm/nonmatching/sub_80FDAFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FDBB0.s\"");
#else
#error "TODO: write sub_80FDBB0 to match asm/nonmatching/sub_80FDBB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FDC3C.s\"");
#else
#error "TODO: write sub_80FDC3C to match asm/nonmatching/sub_80FDC3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FE2FC.s\"");
#else
#error "TODO: write sub_80FE2FC to match asm/nonmatching/sub_80FE2FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FE4A4.s\"");
#else
#error "TODO: write sub_80FE4A4 to match asm/nonmatching/sub_80FE4A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FE5F8.s\"");
#else
#error "TODO: write sub_80FE5F8 to match asm/nonmatching/sub_80FE5F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FE9A0.s\"");
#else
#error "TODO: write sub_80FE9A0 to match asm/nonmatching/sub_80FE9A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FEB64.s\"");
#else
#error "TODO: write sub_80FEB64 to match asm/nonmatching/sub_80FEB64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FECE8.s\"");
#else
#error "TODO: write sub_80FECE8 to match asm/nonmatching/sub_80FECE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FEF14.s\"");
#else
#error "TODO: write sub_80FEF14 to match asm/nonmatching/sub_80FEF14.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FF410.s\"");
#else
#error "TODO: write sub_80FF410 to match asm/nonmatching/sub_80FF410.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FFB70.s\"");
#else
#error "TODO: write sub_80FFB70 to match asm/nonmatching/sub_80FFB70.s, then delete this #error"
#endif

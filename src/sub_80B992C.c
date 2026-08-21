#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80B992C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B992C.s\"");
#else
extern void sub_80C0BE4();

void sub_80B992C(u32* p0) {
    u32* r0;
    u32* r4;
    u32* r5;
    u32* r6;
    
    r6 = p0;
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)*(r0);
    r4 = (u32*)r0[0x70/4];
    r0 = (u32*)r0[0x74/4];
    r5 = (u32*)r0[0x54/4];
    
    if (r5 != 0) {
        return;
    }
    
    r0 = (u32*)(r4 + 0x7E/4);
    r0 = (u32*)*(u8*)r0;
    r1 = 0x06 & r0;
    if (r1 == 0x02) {
        goto _080B9950;
    }
    if (r1 != 0x04) {
        goto _080B9980;
    }
_080B9950:
    r2 = (u32*)0x03001038;
    r0 = (u32*)0x0819832C;
    r1 = (u32*)0x08198220;
    r0 = r0 - r1;
    r2 = (u32*)*(r2);
    r2 = r2 + r0;
    r0 = 0x80 << 7;
    r1 = 0x10;
    (*(void(*)())r2)(r0, r1); // Call via r2
    r1 = (u32*)(r4 + 0x82/4);
    *(u16*)r1 = (u16)r0;
    r0 = (u32*)(r4 + 0x86/4);
    *(u16*)r0 = (u16)r5;
    r2 = (u32*)(r4 + 0x81/4);
    r1 = *(u8*)r2;
    r0 = 0x21;
    r0 = -r0;
    r0 = r0 & r1;
    *(u8*)r2 = (u8)r0;
_080B9980:
    *(u32*)((u8*)r6 + 0x4C) = (u32)sub_80C0BE4;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B99A0.s\"");
#else
#error "TODO: write sub_80B99A0 to match asm/nonmatching/sub_80B99A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B9A58.s\"");
#else
#error "TODO: write sub_80B9A58 to match asm/nonmatching/sub_80B9A58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BA0F0.s\"");
#else
#error "TODO: write sub_80BA0F0 to match asm/nonmatching/sub_80BA0F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BA190.s\"");
#else
#error "TODO: write sub_80BA190 to match asm/nonmatching/sub_80BA190.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BA27C.s\"");
#else
#error "TODO: write sub_80BA27C to match asm/nonmatching/sub_80BA27C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BA37C.s\"");
#else
#error "TODO: write sub_80BA37C to match asm/nonmatching/sub_80BA37C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BA44C.s\"");
#else
#error "TODO: write sub_80BA44C to match asm/nonmatching/sub_80BA44C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BA63C.s\"");
#else
#error "TODO: write sub_80BA63C to match asm/nonmatching/sub_80BA63C.s, then delete this #error"
#endif

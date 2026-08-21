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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BA6F8.s\"");
#else
#error "TODO: write sub_80BA6F8 to match asm/nonmatching/sub_80BA6F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BA818.s\"");
#else
#error "TODO: write sub_80BA818 to match asm/nonmatching/sub_80BA818.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BB168.s\"");
#else
#error "TODO: write sub_80BB168 to match asm/nonmatching/sub_80BB168.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BB294.s\"");
#else
#error "TODO: write sub_80BB294 to match asm/nonmatching/sub_80BB294.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BB368.s\"");
#else
#error "TODO: write sub_80BB368 to match asm/nonmatching/sub_80BB368.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BB458.s\"");
#else
#error "TODO: write sub_80BB458 to match asm/nonmatching/sub_80BB458.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BB584.s\"");
#else
#error "TODO: write sub_80BB584 to match asm/nonmatching/sub_80BB584.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BB688.s\"");
#else
#error "TODO: write sub_80BB688 to match asm/nonmatching/sub_80BB688.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BB798.s\"");
#else
#error "TODO: write sub_80BB798 to match asm/nonmatching/sub_80BB798.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BB8D8.s\"");
#else
#error "TODO: write sub_80BB8D8 to match asm/nonmatching/sub_80BB8D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BBEF8.s\"");
#else
#error "TODO: write sub_80BBEF8 to match asm/nonmatching/sub_80BBEF8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BC044.s\"");
#else
#error "TODO: write sub_80BC044 to match asm/nonmatching/sub_80BC044.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BC234.s\"");
#else
#error "TODO: write sub_80BC234 to match asm/nonmatching/sub_80BC234.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BC2CC.s\"");
#else
#error "TODO: write sub_80BC2CC to match asm/nonmatching/sub_80BC2CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BC37C.s\"");
#else
#error "TODO: write sub_80BC37C to match asm/nonmatching/sub_80BC37C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BC408.s\"");
#else
#error "TODO: write sub_80BC408 to match asm/nonmatching/sub_80BC408.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BC4EC.s\"");
#else
#error "TODO: write sub_80BC4EC to match asm/nonmatching/sub_80BC4EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BCC0C.s\"");
#else
#error "TODO: write sub_80BCC0C to match asm/nonmatching/sub_80BCC0C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BCCD8.s\"");
#else
#error "TODO: write sub_80BCCD8 to match asm/nonmatching/sub_80BCCD8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BCDC8.s\"");
#else
#error "TODO: write sub_80BCDC8 to match asm/nonmatching/sub_80BCDC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BCE58.s\"");
#else
#error "TODO: write sub_80BCE58 to match asm/nonmatching/sub_80BCE58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BCF60.s\"");
#else
#error "TODO: write sub_80BCF60 to match asm/nonmatching/sub_80BCF60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BD074.s\"");
#else
#error "TODO: write sub_80BD074 to match asm/nonmatching/sub_80BD074.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BD194.s\"");
#else
#error "TODO: write sub_80BD194 to match asm/nonmatching/sub_80BD194.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BD2AC.s\"");
#else
#error "TODO: write sub_80BD2AC to match asm/nonmatching/sub_80BD2AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BD374.s\"");
#else
#error "TODO: write sub_80BD374 to match asm/nonmatching/sub_80BD374.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BD864.s\"");
#else
#error "TODO: write sub_80BD864 to match asm/nonmatching/sub_80BD864.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BD8F4.s\"");
#else
#error "TODO: write sub_80BD8F4 to match asm/nonmatching/sub_80BD8F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BD9FC.s\"");
#else
#error "TODO: write sub_80BD9FC to match asm/nonmatching/sub_80BD9FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BDB10.s\"");
#else
#error "TODO: write sub_80BDB10 to match asm/nonmatching/sub_80BDB10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BDC44.s\"");
#else
#error "TODO: write sub_80BDC44 to match asm/nonmatching/sub_80BDC44.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BDE5C.s\"");
#else
#error "TODO: write sub_80BDE5C to match asm/nonmatching/sub_80BDE5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BE4B8.s\"");
#else
#error "TODO: write sub_80BE4B8 to match asm/nonmatching/sub_80BE4B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BE590.s\"");
#else
#error "TODO: write sub_80BE590 to match asm/nonmatching/sub_80BE590.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BE620.s\"");
#else
#error "TODO: write sub_80BE620 to match asm/nonmatching/sub_80BE620.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BE728.s\"");
#else
#error "TODO: write sub_80BE728 to match asm/nonmatching/sub_80BE728.s, then delete this #error"
#endif

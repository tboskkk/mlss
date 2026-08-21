#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80D7410 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D7410.s\"");
#else
extern void sub_80D7488();

void sub_80D7410(void* p0) {
    u32* r0;
    u32* r4;
    u8 r1;
    u32* r2;
    u32 r0_2;
    u8 r0_3;
    u16 r0_4;
    u16 r1_2;
    u16 r0_5;
    u8 r1_3;
    u8 r0_6;
    
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)*(r0);
    r4 = (u32*)*(r0 + 0x74 / 4);
    r0 = (u32*)*(r4 + 0x10 / 4);
    r1 = *(r0 + 0x12);
    if ((r1 & 0x08) == 0) {
        goto _080D746C;
    }
    r0 = (u32*)((u8*)r4 + 0x7E);
    r0_3 = *(r0);
    r1_2 = r0_3 & 0x06;
    if (r1_2 == 0x02) {
        goto _080D7438;
    }
    if (r1_2 != 0x04) {
        goto _080D7468;
    }
_080D7438:
    r2 = (u32*)0x03001038;
    r0 = (u32*)0x0819832C;
    r1 = (u32*)0x08198220;
    r0_2 = r0 - r1;
    r2 = (u32*)*(r2);
    r2 = (u32*)((u8*)r2 + r0_2);
    r0_4 = 0x80 << 7;
    r1_2 = 0x10;
    r0_5 = ((u16 (*)(u32, u32))r2)(r0_4, r1_2);
    r2 = (u32*)((u8*)r4 + 0x82);
    *(u16*)r2 = r0_5;
    r0 = (u32*)((u8*)r4 + 0x86);
    *(u16*)r0 = 0x0000;
    r2 = (u32*)((u8*)r4 + 0x81);
    r1_3 = *(u8*)r2;
    r0_6 = 0x21;
    r0_6 = -r0_6;
    r1_3 = r0_6 & r1_3;
    *(u8*)r2 = r1_3;
_080D7468:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_80D7488;
_080D746C:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D7488.s\"");
#else
#error "TODO: write sub_80D7488 to match asm/nonmatching/sub_80D7488.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D7688.s\"");
#else
#error "TODO: write sub_80D7688 to match asm/nonmatching/sub_80D7688.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D7774.s\"");
#else
#error "TODO: write sub_80D7774 to match asm/nonmatching/sub_80D7774.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D782C.s\"");
#else
#error "TODO: write sub_80D782C to match asm/nonmatching/sub_80D782C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D7928.s\"");
#else
#error "TODO: write sub_80D7928 to match asm/nonmatching/sub_80D7928.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8048.s\"");
#else
#error "TODO: write sub_80D8048 to match asm/nonmatching/sub_80D8048.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8180.s\"");
#else
#error "TODO: write sub_80D8180 to match asm/nonmatching/sub_80D8180.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8238.s\"");
#else
#error "TODO: write sub_80D8238 to match asm/nonmatching/sub_80D8238.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8438.s\"");
#else
#error "TODO: write sub_80D8438 to match asm/nonmatching/sub_80D8438.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D85D4.s\"");
#else
#error "TODO: write sub_80D85D4 to match asm/nonmatching/sub_80D85D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D86B0.s\"");
#else
#error "TODO: write sub_80D86B0 to match asm/nonmatching/sub_80D86B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8798.s\"");
#else
#error "TODO: write sub_80D8798 to match asm/nonmatching/sub_80D8798.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D885C.s\"");
#else
#error "TODO: write sub_80D885C to match asm/nonmatching/sub_80D885C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8A54.s\"");
#else
#error "TODO: write sub_80D8A54 to match asm/nonmatching/sub_80D8A54.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8C68.s\"");
#else
#error "TODO: write sub_80D8C68 to match asm/nonmatching/sub_80D8C68.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8CC0.s\"");
#else
#error "TODO: write sub_80D8CC0 to match asm/nonmatching/sub_80D8CC0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8D18.s\"");
#else
#error "TODO: write sub_80D8D18 to match asm/nonmatching/sub_80D8D18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8D58.s\"");
#else
#error "TODO: write sub_80D8D58 to match asm/nonmatching/sub_80D8D58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8DC4.s\"");
#else
#error "TODO: write sub_80D8DC4 to match asm/nonmatching/sub_80D8DC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8E5C.s\"");
#else
#error "TODO: write sub_80D8E5C to match asm/nonmatching/sub_80D8E5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8EE4.s\"");
#else
#error "TODO: write sub_80D8EE4 to match asm/nonmatching/sub_80D8EE4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8F68.s\"");
#else
#error "TODO: write sub_80D8F68 to match asm/nonmatching/sub_80D8F68.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8FA0.s\"");
#else
#error "TODO: write sub_80D8FA0 to match asm/nonmatching/sub_80D8FA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9018.s\"");
#else
#error "TODO: write sub_80D9018 to match asm/nonmatching/sub_80D9018.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D909C.s\"");
#else
#error "TODO: write sub_80D909C to match asm/nonmatching/sub_80D909C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D90BC.s\"");
#else
#error "TODO: write sub_80D90BC to match asm/nonmatching/sub_80D90BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D90DC.s\"");
#else
#error "TODO: write sub_80D90DC to match asm/nonmatching/sub_80D90DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D92B0.s\"");
#else
#error "TODO: write sub_80D92B0 to match asm/nonmatching/sub_80D92B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9378.s\"");
#else
#error "TODO: write sub_80D9378 to match asm/nonmatching/sub_80D9378.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9420.s\"");
#else
#error "TODO: write sub_80D9420 to match asm/nonmatching/sub_80D9420.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D94B8.s\"");
#else
#error "TODO: write sub_80D94B8 to match asm/nonmatching/sub_80D94B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D952C.s\"");
#else
#error "TODO: write sub_80D952C to match asm/nonmatching/sub_80D952C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D95A4.s\"");
#else
#error "TODO: write sub_80D95A4 to match asm/nonmatching/sub_80D95A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D977C.s\"");
#else
#error "TODO: write sub_80D977C to match asm/nonmatching/sub_80D977C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D984C.s\"");
#else
#error "TODO: write sub_80D984C to match asm/nonmatching/sub_80D984C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D98F8.s\"");
#else
#error "TODO: write sub_80D98F8 to match asm/nonmatching/sub_80D98F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9984.s\"");
#else
#error "TODO: write sub_80D9984 to match asm/nonmatching/sub_80D9984.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D99A0.s\"");
#else
#error "TODO: write sub_80D99A0 to match asm/nonmatching/sub_80D99A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D99D4.s\"");
#else
#error "TODO: write sub_80D99D4 to match asm/nonmatching/sub_80D99D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D99F0.s\"");
#else
#error "TODO: write sub_80D99F0 to match asm/nonmatching/sub_80D99F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9A7C.s\"");
#else
#error "TODO: write sub_80D9A7C to match asm/nonmatching/sub_80D9A7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9A98.s\"");
#else
#error "TODO: write sub_80D9A98 to match asm/nonmatching/sub_80D9A98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9B08.s\"");
#else
#error "TODO: write sub_80D9B08 to match asm/nonmatching/sub_80D9B08.s, then delete this #error"
#endif

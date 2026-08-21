#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A5790 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5790.s\"");
#else
extern void sub_80A5808();

void sub_80A5790(u32* p0) {
    u32* r0;
    u32* r4;
    u8 r1;
    u32* r2;
    u32 r0_2;
    u16 r0_3;
    u8 r1_2;
    
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)((u8*)r0 + 0x0);
    r4 = (u32*)((u8*)r0 + 0x70);
    r0 = (u32*)((u8*)r4 + 0x10);
    r1 = *(u8*)((u8*)r0 + 0x12);
    if ((r1 & 0x08) == 0)
        goto _080A57EC;
    r0 = (u32*)((u8*)r4 + 0x7E);
    r0_2 = *(u8*)((u8*)r0 + 0x0);
    r1_2 = r0_2 & 0x06;
    if (r1_2 == 0x02)
        goto _080A57B8;
    if (r1_2 != 0x04)
        goto _080A57E8;
_080A57B8:
    r2 = (u32*)0x03001038;
    r0 = (u32*)0x0819832C;
    r1 = (u32*)0x08198220;
    r0_2 = r0 - r1;
    r2 = (u32*)((u8*)r2 + r0_2);
    r0_3 = 0x80 << 7;
    r1_2 = 0x12;
    *(u32*)r2 = r0_3;
    r2 = (u32*)((u8*)r4 + 0x82);
    *(u16*)((u8*)r2 + 0x0) = r0_3;
    r0 = (u32*)((u8*)r4 + 0x86);
    *(u16*)((u8*)r0 + 0x0) = 0x00;
    r2 = (u32*)((u8*)r4 + 0x81);
    r1_2 = *(u8*)((u8*)r2 + 0x0);
    r0_2 = -(0x21);
    r1_2 &= r0_2;
    *(u8*)((u8*)r2 + 0x0) = r1_2;
_080A57E8:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_80A5808;
_080A57EC:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5808.s\"");
#else
#error "TODO: write sub_80A5808 to match asm/nonmatching/sub_80A5808.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A58C4.s\"");
#else
#error "TODO: write sub_80A58C4 to match asm/nonmatching/sub_80A58C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5ABC.s\"");
#else
#error "TODO: write sub_80A5ABC to match asm/nonmatching/sub_80A5ABC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5B28.s\"");
#else
#error "TODO: write sub_80A5B28 to match asm/nonmatching/sub_80A5B28.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5B94.s\"");
#else
#error "TODO: write sub_80A5B94 to match asm/nonmatching/sub_80A5B94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5C28.s\"");
#else
#error "TODO: write sub_80A5C28 to match asm/nonmatching/sub_80A5C28.s, then delete this #error"
#endif

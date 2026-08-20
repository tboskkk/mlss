#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E13B4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E13B4.s\"");
#else
extern void sub_80E0BF8();

void sub_80E13B4(void* p0) {
    u32* r0 = (u32*)0x03000FD8;
    u32* r4 = (u32*)*r0;
    u8 r1 = *(u8*)((u8*)r4 + 0x0D);
    u32 r3;
    if ((r1 & 2) == 0) {
        r3 = 0;
    } else {
        r3 = 2;
        *(u8*)((u8*)r4 + 0x0D) = r1 | 2;
        u32* r2 = (u32*)p0;
        *(u16*)((u8*)r2 + 0x12) = r3;
        *(u16*)((u8*)r2 + 0x14) = r3;
        u32* r1_ptr = (u32*)((u8*)r2 + 0x0C);
        u16 r0_val = *(u16*)(*r1_ptr);
        *(u16*)((u8*)r2 + 0x10) = r0_val;
        *r1_ptr += 2;
        *(u32*)((u8*)r2 + 0x04) = (u32)sub_80E0BF8;
    }
}
#endif

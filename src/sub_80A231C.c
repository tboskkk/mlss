#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A231C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A231C.s\"");
#else
extern void sub_80A2374();

void sub_80A231C(void* p0) {
    void* r4;
    void* r0;
    void* r3;
    u8 r1;
    u8 r0_2;
    u16 r0_3;
    u16 r1_2;
    u8 r1_3;
    u8 r0_4;
    
    r4 = p0;
    r0 = p0;
    r0 = *(void**)(0x03000FD8);
    r0 = *(void**)((u8*)r0 + 0x74);
    r3 = r0;
    r0 = *(void**)((u8*)r0 + 0x10);
    r1 = *(u8*)((u8*)r0 + 0x12);
    r0 = r1 & 0x08;
    if (r0 == 0) {
        goto _080A2366;
    }
    r0 = r3;
    r0 = (u8*)r0 + 0x7E;
    r0_2 = *(u8*)r0;
    r1_2 = r0_2 & 0x06;
    if (r1_2 == 0x02) {
        goto _080A2344;
    }
    if (r1_2 != 0x04) {
        goto _080A2362;
    }
_080A2344:
    r0 = r3;
    r0 = (u8*)r0 + 0x82;
    r0_3 = 0x8000;
    *(u16*)((u8*)r0) = r0_3;
    r0 = r3;
    r0 = (u8*)r0 + 0x86;
    *(u16*)((u8*)r0) = 0;
    r2 = (u8*)r3 + 0x81;
    r1_3 = *(u8*)r2;
    r0_4 = 0x21;
    r0_4 = -r0_4;
    r1_3 = r0_4 & r1_3;
    *(u8*)r2 = r1_3;
_080A2362:
    *(u32*)((u8*)r4 + 0x4C) = (u32)sub_80A2374;
_080A2366:
    r0 = *(void**)((u8*)r4 + 0x0);
    bx r0;
}
#endif

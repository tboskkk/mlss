#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8142B4C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142B4C.s\"");
#else
extern void sub_813E504();
extern void sub_813E618();

void sub_8142B4C(void* p1, void* p2) {
    u32 r0 = *(u32*)((u8*)p1 + 0x18);
    u32 r1 = *(u32*)((u8*)p1 + 0x14);
    u32 r4;
    
    r0 += 0x100;
    *(u32*)((u8*)p1 + 0x18) = r0;
    r1 += r0;
    
    r4 = 0x2D4;
    r0 = *(u32*)((u8*)p1 + r4);
    
    if (r1 >= r0) {
        r1 = 0x198;
        *(u32*)((u8*)p1 + r1) = (u32)sub_813E504;
        *(u32*)((u8*)p2) = (u32)sub_813E618;
    }
}
#endif

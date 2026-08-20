#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814B848 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B848.s\"");
#else
extern void sub_8149EF4();

void sub_814B848(u32 p0, u32 p1, u32* p2)
{
    u32* r5;
    u8* r0;
    u8 r3;
    u8 r4;
    
    r5 = (u32*)((u8*)p1 + 0x20E);
    r0 = (u8*)r5;
    r3 = *(r0);
    r4 = 0x4;
    r3 |= r4;
    *(r0) = r3;
    *(u32*)((u8*)p2) = (u32)sub_8149EF4;
    ((void(*)(void))((u32)sub_8149EF4))();
}
#endif

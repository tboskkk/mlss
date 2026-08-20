#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815F2C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F2C4.s\"");
#else
void sub_815F2C4(u32* p0, s32 p1)
{
    u32* r4 = p0;
    u32* r0 = r4;
    *(u16*)((u8*)r4 + 0x18) = 0x64;
    *(u16*)((u8*)r4 + 0x20) = -p1;
    *(u16*)((u8*)r4 + 0x38) = 0;
    r0 = sub_815FA3C(r0);
    *(u16*)((u8*)r0 + 0x0C) = 0;
    r4 = (u8*)r4 + 0x24;
    *(u8*)((u8*)r4 + 0x00) = 0x03;
}
#endif

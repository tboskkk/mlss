#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158A98 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158A98.s\"");
#else
void sub_8158A98(u32* p0, s32 p1)
{
    *(u16*)((u8*)p0 + 0x18) = 0xC8;
    *(u16*)((u8*)p0 + 0x20) = -p1;
    *(u16*)((u8*)p0 + 0x38) = 0;
    sub_815FA3C(p0);
    *(u16*)((u8*)p0 + 0x0C) = 0;
    *(u8*)((u8*)p0 + 0x24) = 0x04;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8087790 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087790.s\"");
#else
void sub_8087790(u32 param_1)
{
    u32 *puVar1;
    u32 *puVar2;
    u32 *puVar3;
    u32 local_4;
    
    local_4 = param_1;
    puVar1 = (u32 *)0x03001038;
    puVar2 = (u32 *)0x0819832C;
    puVar3 = (u32 *)0x08198220;
    local_4 = *puVar1 + (puVar2 - puVar3);
    _call_via_r2(local_4);
    *(u16 *)((int)&local_4 + 0x7C) = (u16)param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80877C0.s\"");
#else
void sub_80877C0(u32* p0)
{
    u32* r4;
    u16* r2;
    u32 r1;
    u32 r0;
    u32* r3;

    r3 = p0;
    r2 = (u16*)((u8*)p0 + 0x92);
    r4 = (u32*)((u8*)p0 + 0x94);
    r1 = *(u32*)r4;
    r0 = *(u16*)r2;
    r0 += r1;
    *(u16*)r2 = r0;
    r0 = 0;
    r1 = *(s16*)((u8*)r2 + r0);
    r0 = *(u32*)((u8*)p0 + 0x40);
    r0 += r1;
    *(u32*)((u8*)p0 + 0x18) = r0;
    r1 = *(u32*)((u8*)p0 + 0x98);
    if (r1 < r0)
        r0 = 0;
    else
    {
        *(u32*)((u8*)p0 + 0x18) = r1;
        *(u32*)r4 = 0;
        r0 = 1;
    }
}
#endif

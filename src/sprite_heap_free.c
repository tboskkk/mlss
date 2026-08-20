#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sprite_heap_free needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sprite_heap_free.s\"");
#else
void sprite_heap_free(u32* a0)
{
    u32* r2;
    u32* r4;
    u32* r3;
    u32* r1;
    u32* r0;

    if (a0 == 0)
    {
        return;
    }
    a0 = (u32*)((uintptr_t)a0 - 0x10);
    r2 = (u32*)a0[0];
    r4 = (u32*)r2[0];
    r3 = (u32*)r2[1];
    a0[3] = 0;
    if (r3 == 0)
    {
        goto _08021D76;
    }
    if ((*(u8*)((uintptr_t)r3 + 0x0C)) != 0)
    {
        goto _08021D76;
    }
    r0 = (u32*)r2[2];
    r1 = (u32*)r3[2];
    r0[2] = r0[2] + r1[2];
    r0[1] = r3[1];
    if (r3[1] == 0)
    {
        goto _08021D76;
    }
    r0[0] = r2;
_08021D76:
    if (r4 == 0)
    {
        return;
    }
    if ((*(u8*)((uintptr_t)r4 + 0x0C)) != 0)
    {
        return;
    }
    r0 = (u32*)r4[2];
    r1 = (u32*)r2[2];
    r0[2] = r0[2] + r1[2];
    r0[1] = r2[1];
    if (r2[1] == 0)
    {
        return;
    }
    r0[0] = r4;
}
#endif

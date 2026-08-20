#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163320 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163320.s\"");
#else
void sub_8163320(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0))) = 0x10;
    (*(s16 *)((s8 *)(arg0) + (2))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816332C.s\"");
#else
void sub_816332C(void* p0)
{
    u32* r2 = (u32*)p0;
    u32* r1 = *(u32**)((u8*)r2);
    u32 r0 = *(u32*)((u8*)r1 + 0x44);
    if (r0 == 0)
    {
        r0 = *(u32*)((u8*)r1 + 0x40);
        if (r0 != 1)
            goto _08163342;
        else
            r0 = 1;
    }
    else
    {
        r0 = 1;
    }
_08163342:
    if (r0 == 0)
        goto _08163388;
    r1 = *(u32**)((u8*)r2 + 0x04);
    r0 = *(u32*)((u8*)r1 + 0x44);
    if (r0 == 0)
    {
        r0 = *(u32*)((u8*)r1 + 0x40);
        if (r0 != 1)
            goto _08163358;
        else
            r0 = 1;
    }
    else
    {
        r0 = 1;
    }
_08163358:
    if (r0 == 0)
        goto _08163388;
    r1 = *(u32**)((u8*)r2 + 0x08);
    r0 = *(u32*)((u8*)r1 + 0x44);
    if (r0 == 0)
    {
        r0 = *(u32*)((u8*)r1 + 0x40);
        if (r0 != 1)
            goto _0816336E;
        else
            r0 = 1;
    }
    else
    {
        r0 = 1;
    }
_0816336E:
    if (r0 == 0)
        goto _08163388;
    r1 = *(u32**)((u8*)r2 + 0x0C);
    r0 = *(u32*)((u8*)r1 + 0x44);
    if (r0 == 0)
    {
        r0 = *(u32*)((u8*)r1 + 0x40);
        if (r0 != 1)
            goto _08163384;
        else
            r0 = 1;
    }
    else
    {
        r0 = 1;
    }
_08163384:
    if (r0 != 0)
        r0 = 1;
    else
        r0 = 0;
_08163388:
    return;
}
#endif

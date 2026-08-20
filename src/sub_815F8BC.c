#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815F8BC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F8BC.s\"");
#else
void sub_815F8BC(void* p0, s32 p1)
{
    *(u32*)((u8*)p0 + 0x04) = 0x08CDCF50;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F8F4.s\"");
#else
void sub_815F8F4(u32* p0, u16* p1)
{
    *(u32*)((u8*)p0 + 0x30) = 0x08CDCF70;
    s16 var0 = *(s16*)((u8*)p1 + 0x00);
    var0 <<= 8;
    *(u32*)((u8*)p0 + 0x0C) = var0;
    *(u32*)((u8*)p0 + 0x04) = var0;
    var0 = *(s16*)((u8*)p1 + 0x02);
    var0 <<= 8;
    *(u32*)((u8*)p0 + 0x10) = var0;
    *(u32*)((u8*)p0 + 0x08) = var0;
    u16 var1 = 0;
    *(u16*)((u8*)p0 + 0x14) = var1;
    *(u16*)((u8*)p0 + 0x18) = var1;
    *(u16*)((u8*)p0 + 0x1C) = var1;
    *(u16*)((u8*)p0 + 0x20) = var1;
    *(u8*)((u8*)p0 + 0x24) = 0;
    *(u8*)((u8*)p1 + 0x0C);
    *(u8*)((u8*)p0 + 0x49) = *(u8*)((u8*)p1 + 0x0C);
    *(u8*)((u8*)p0 + 0x4A) = *(u8*)((u8*)p1 + 0x06);
    *(u8*)((u8*)p0 + 0x4B) = *(u8*)((u8*)p1 + 0x07);
    *(u8*)((u8*)p0 + 0x28) = *(u8*)((u8*)p1 + 0x04);
    *(u8*)((u8*)p0 + 0x29) = *(u8*)((u8*)p1 + 0x05);
    *(u8*)((u8*)p0 + 0x2A) = *(u8*)((u8*)p1 + 0x08);
    *(u8*)((u8*)p0 + 0x2B) = *(u8*)((u8*)p1 + 0x09);
    *(u8*)((u8*)p0 + 0x2C) = *(u8*)((u8*)p1 + 0x0A);
    *(u8*)((u8*)p0 + 0x2D) = *(u8*)((u8*)p1 + 0x0B);
    *(u32*)((u8*)p0) = 0;
    *(u8*)((u8*)p0 + 0x2E) = 0;
}
#endif

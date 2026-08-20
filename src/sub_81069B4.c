#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81069B4 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81069B4(s8 arg0) {
    void *temp_r2_11;

    (*(s8 *)((s8 *)(*(void **)0x03000FD8) + (0x3A5))) = arg0;
    temp_r2_11 = *(void **)0x03000FD8;
    (*(u8 *)((s8 *)(temp_r2_11) + (0xB))) = (u8) ((*(u8 *)((s8 *)(temp_r2_11) + (0xB))) | 0x40);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81069D4.s\"");
#else
void sub_81069D4(void* p0)
{
    u32* ptr = *(u32**)((u8*)p0 + 0x08);
    u16 var = *(u16*)((u8*)p0 + 0x10);
    s16 var2 = *(s16*)((u8*)p0 + 0x14);
    
    if (var2 > 0)
    {
        *(u16*)((u8*)p0 + 0x10) = var - 1;
    }
    else
    {
        u8 var3 = *(u8*)((u8*)ptr + 0x12);
        *(u16*)((u8*)ptr + 0x00) = 0x78;
        *(u16*)((u8*)ptr + 0x02) = 0x40;
        var3 &= 0xB8;
        var3 |= 0x02;
        *(u8*)((u8*)ptr + 0x12) = var3;
        *(u32*)((u8*)p0 + 0x04) = 0;
    }
}
#endif

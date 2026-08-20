#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8161814 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161814.s\"");
#else
void sub_8161814(u8* param_1)
{
    u16* puVar1;
    u32* puVar2;
    s16 sVar3;
    u16 uVar4;
    s32 sVar5;
    s32 sVar6;
    
    puVar1 = (u16*)param_1;
    sVar3 = *(s16*)((u8*)param_1 + 0x02);
    if (sVar3 == 1) {
        uVar4 = *(u16*)param_1 - 1;
        *(u16*)param_1 = uVar4;
        sVar5 = (s32)uVar4 << 0x10;
        if (sVar5 < 0) {
            *(u16*)param_1 = 0x50;
            uVar4 = *(u16*)((u8*)param_1 + 0x02) + 1;
            *(u16*)((u8*)param_1 + 0x02) = uVar4;
        }
        puVar2 = (u32*)((u8*)param_1 + 0x10);
        *puVar2 = *(u32*)((u8*)param_1 + 0x10) + ((s32)0xFFFFFC18 << 2);
        sVar5 = *(s32*)((u8*)param_1 + 0x14) + 0xFFFFFC18;
        *(u32*)((u8*)param_1 + 0x14) = sVar5;
        sVar6 = (s32)*(u16*)((u8*)param_1 + 0x04) + ((s32)*(u32*)((u8*)param_1 + 0x10) >> 8);
        *(u16*)(*(u32**)((u8*)param_1 + 0x08)) = (u16)sVar6;
        sVar6 = (s32)*(u16*)((u8*)param_1 + 0x06) + ((s32)*(u32*)((u8*)param_1 + 0x14) >> 8);
        *(u16*)(*(u32**)((u8*)param_1 + 0x0C)) = (u16)sVar6;
    }
    else {
        if (sVar3 == 2) {
            uVar4 = *(u16*)param_1 - 1;
            *(u16*)param_1 = uVar4;
            sVar5 = (s32)uVar4 << 0x10;
            if (sVar5 >= 0) {
                *(u16*)param_1 = 1;
            }
        }
    }
    return;
}
#endif

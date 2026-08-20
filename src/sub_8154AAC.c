#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8154AAC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154AAC.s\"");
#else
void sub_8154AAC(u8* param_1)
{
    u16* puVar1;
    u16* puVar2;
    u32* puVar3;
    u16 local_14;
    u16 local_16;
    u16 local_18;
    u16 local_1a;
    u32 local_1c;
    
    puVar3 = (u32*)0x03001018;
    puVar1 = (u16*)((u32*)*puVar3 + 0x1C98);
    puVar2 = (u16*)((u8*)param_1 + 0x38);
    local_14 = *(u16*)((u8*)param_1 + 0x14);
    local_16 = *(u16*)((u8*)param_1 + 0x14);
    local_18 = *(u16*)((u8*)param_1 + 0x14);
    local_1a = *(u16*)((u8*)param_1 + 0x14);
    local_1c = *(u32*)((u8*)param_1 + 0x04);
    if ((*(u16*)((u8*)param_1 + 0x14) == 1)) {
        if (*(u16*)((u8*)param_1 + 0x14) < 1) {
            *(u16*)((u8*)param_1 + 0x38) = 0;
            return;
        }
        local_14 = *(u16*)((u8*)param_1 + 0x14);
        if (local_14 == 0) {
            *(u16*)((u8*)param_1 + 0x38) = 1;
            return;
        }
        local_16 = *(u16*)((u8*)param_1 + 0x14);
        if (local_16 == 0) {
            local_1c = *(u32*)((u8*)param_1 + 0x04);
            if ((local_1c - *(u32*)((u8*)param_1 + 0x04)) > 0x3BFF) {
                *(u16*)((u8*)param_1 + 0x38) = 2;
                return;
            }
            *(u16*)((u8*)param_1 + 0x38) = 2;
            return;
        }
        local_18 = *(u16*)((u8*)param_1 + 0x14);
        if (local_18 < 0x3BFF) {
            *(u16*)((u8*)param_1 + 0x14) = local_18 + 2;
            *(u16*)((u8*)param_1 + 0x38) = 0;
            return;
        }
        *(u16*)((u8*)param_1 + 0x14) = local_18;
        *(u16*)((u8*)param_1 + 0x38) = 0;
        return;
    }
    if (*(u16*)((u8*)param_1 + 0x14) == 2) {
        *(u16*)((u8*)param_1 + 0x14) = 0;
        *(u16*)((u8*)param_1 + 0x38) = 0;
        return;
    }
    *(u16*)((u8*)param_1 + 0x38) = 0;
}
#endif

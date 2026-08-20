#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F81D4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F81D4.s\"");
#else
void sub_80F81D4(u32* param_1, u32* param_2)
{
    u32 *puVar1;
    u32 *puVar2;
    u8 uVar3;
    u32 uVar4;
    u32 uVar5;
    
    if (*(u32*)((u8*)param_2) == 0) {
        puVar1 = (u32*)0x3000FD8;
        puVar2 = *(u32**)puVar1;
        uVar3 = *(u8*)((u8*)param_1 + 0xFD);
        uVar4 = ((u32)uVar3 << 0x1C) >> 0x1A;
        puVar2 = (u32*)((u8*)puVar2 + 0x58 + uVar4);
        puVar1 = *(u32**)puVar2;
        if (puVar1 != (u32*)0x0) {
            puVar1 = *(u32**)((u8*)puVar1 + 0x8);
        }
    }
    else {
        if (*(u32*)((u8*)param_2) == 1) {
            puVar1 = (u32*)0x3000FD8;
            puVar2 = *(u32**)puVar1;
            uVar3 = *(u8*)((u8*)param_1 + 0xFD);
            uVar4 = ((u32)uVar3 << 0x1C) >> 0x1A;
            puVar2 = (u32*)((u8*)puVar2 + 0x58 + uVar4);
            puVar1 = *(u32**)puVar2;
            if (puVar1 != (u32*)0x0) {
                if (*(u32*)((u8*)puVar1 + 0x54) == 0) {
                    *(u32*)((u8*)param_1 + 0x0) = *(u32*)((u8*)param_1 + 0x14);
                }
                else {
                    *(u32*)((u8*)param_1 + 0x0) = 1;
                    return;
                }
            }
        }
    }
    if (puVar1 != (u32*)0x0) {
        uVar5 = *(u32*)((u8*)param_1 + 0xA0);
        *(u32*)((u8*)param_1 + 0xA0) = uVar5 | 0x200;
    }
}
#endif

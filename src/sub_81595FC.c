#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81595FC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81595FC.s\"");
#else
void sub_81595FC(u32* param_1)
{
    u16* puVar1;
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;
    u32 uVar5;
    
    puVar1 = (u16*)0x0300034C;
    uVar2 = *puVar1;
    if ((uVar2 & 0x10) != 0)
    {
        uVar3 = (u32)((u8*)param_1 + ((u32)(u8)(0xA1 << 3)));
        uVar4 = *(u32*)uVar3;
        uVar5 = uVar4 + (u32)(u8)(0x80 << 3);
        *(u32*)uVar3 = uVar5;
    }
    uVar2 = *puVar1;
    if ((uVar2 & 0x20) != 0)
    {
        uVar3 = (u32)((u8*)param_1 + ((u32)(u8)(0xA1 << 3)));
        uVar4 = *(u32*)uVar3;
        uVar5 = uVar4 + 0xFFFFFC00;
        *(u32*)uVar3 = uVar5;
    }
    if ((uVar2 & 0x80) != 0)
    {
        uVar3 = (u32)((u8*)param_1 + 0x50C);
        uVar4 = *(u32*)uVar3;
        uVar5 = uVar4 + (u32)(u8)(0x80 << 3);
        *(u32*)uVar3 = uVar5;
    }
    if ((uVar2 & 0x40) != 0)
    {
        uVar3 = (u32)((u8*)param_1 + 0x50C);
        uVar4 = *(u32*)uVar3;
        uVar5 = uVar4 + 0xFFFFFC00;
        *(u32*)uVar3 = uVar5;
    }
}
#endif

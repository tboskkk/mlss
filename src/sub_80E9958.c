#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E9958 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9958.s\"");
#else
void sub_80E9958(u32* param_1, u32 param_2, u32 param_3, u32 param_4)
{
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;
    u32 uVar5;
    u32 uVar6;
    u32 uVar7;
    u32 uVar8;
    
    uVar1 = param_2;
    uVar2 = param_3;
    uVar3 = param_4;
    uVar4 = uVar2 << 0x10;
    uVar5 = uVar4 >> 0x10;
    uVar6 = uVar3 << 0x18;
    uVar7 = uVar6 >> 0x18;
    uVar8 = 0x1b5f;
    if (uVar5 <= uVar8) {
        uVar8 = 0x3000fc0;
        uVar4 = uVar4 >> 0x15;
        uVar4 = uVar4 << 2;
        uVar4 = uVar4 + 0x20;
        uVar1 = *(u32*)(uVar8 + 0);
        uVar1 = uVar1 + uVar4;
    }
    else {
        uVar8 = 0x1b7f;
        if (uVar5 <= uVar8) {
            uVar8 = 0x1b8f;
            if (uVar5 <= uVar8) {
                if (param_2 == 0) goto _080E99B0;
                uVar8 = 0xffffe480;
                uVar1 = uVar5 + uVar8;
                uVar1 = uVar1 << 0x10;
                uVar5 = uVar1 >> 0x10;
                uVar1 = uVar1 >> 0x15;
                uVar1 = uVar1 << 2;
                uVar1 = uVar1 + param_2;
            }
            else {
_080E99B0:
                uVar8 = 0xffffe4a0;
                uVar1 = uVar5 + uVar8;
                uVar1 = uVar1 << 0x10;
                uVar5 = uVar1 >> 0x10;
                uVar1 = uVar1 >> 0x15;
                uVar1 = uVar1 << 2;
                uVar1 = uVar1 + param_1;
            }
        }
        else {
            uVar1 = param_1;
        }
    }
    uVar8 = uVar5 & 0x1f;
    uVar4 = 1;
    uVar4 = uVar4 << uVar8;
    uVar2 = *(u32*)(uVar1 + 0);
    uVar2 = uVar2 & ~uVar4;
    uVar4 = uVar7 & 1;
    uVar4 = uVar4 << uVar8;
    uVar2 = uVar2 | uVar4;
    *(u32*)(uVar1 + 0) = uVar2;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8059EF0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059EF0.s\"");
#else
u32* sub_8059EF0(u32 param_1) {
    return (u32*)((param_1 << 16) >> 14) + 0x083AF418;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059F24.s\"");
#else
u32 sub_8059F24(u32 param_1) {
    u16 *puVar1;
    u16 uVar2;
    u32 uVar3;
    
    puVar1 = (u16 *)0x02000014;
    uVar2 = *(u16 *)((u32)param_1 + 0x5A);
    uVar3 = 0x1FF;
    *puVar1 = uVar2 & uVar3;
    puVar1 = (u16 *)((u32)puVar1 + 4);
    uVar2 = *(u16 *)((u32)param_1 + 0x5C);
    *puVar1 = uVar2 & uVar3;
    puVar1 = (u16 *)0x0200001C;
    uVar2 = *(u16 *)((u32)param_1 + 0x5E);
    *puVar1 = uVar2 & uVar3;
    puVar1 = (u16 *)0x02000016;
    uVar2 = *(u8 *)((u32)param_1 + 0x60);
    *puVar1 = uVar2;
    puVar1 = (u16 *)((u32)puVar1 + 4);
    uVar2 = *(u8 *)((u32)param_1 + 0x62);
    *puVar1 = uVar2;
    puVar1 = (u16 *)((u32)puVar1 + 4);
    uVar2 = *(u8 *)((u32)param_1 + 0x64);
    *puVar1 = uVar2;
    return param_1;
}
#endif

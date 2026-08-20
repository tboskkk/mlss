#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163A64 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163A64.s\"");
#else
u32* sub_8163A64(u32* param_1, u32 param_2, u32 param_3) {
    *param_1 = param_2;
    *(param_1 + 0x18 >> 2) = param_3;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163A6C.s\"");
#else
u32 sub_8163A6C(u32 param_1) {
    u16* puVar1;
    u16* puVar2;
    u16* puVar3;
    u16 uVar4;
    
    puVar1 = (u16*)((u32)param_1 + 0x52);
    uVar4 = *puVar1;
    puVar2 = (u16*)((u32)puVar1 + 0x2);
    *puVar2 = uVar4;
    puVar3 = (u16*)((u32)puVar2 + 0x2);
    *puVar3 = uVar4;
    return param_1;
}
#endif

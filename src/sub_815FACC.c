#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815FACC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815FACC.s\"");
#else
u32* sub_815FACC(u32* param_1) {
    u32 uVar1;
    u32 uVar2;
    
    uVar1 = param_1[1];
    uVar2 = param_1[2];
    param_1[5] = uVar1 - param_1[3];
    param_1[6] = uVar2 - param_1[4];
    param_1[3] = uVar1;
    param_1[4] = uVar2;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815FAE4.s\"");
#else
u32 sub_815FAE4(u32* param_1, u32 param_2) {
    s16 local_var;
    
    local_var = *(s16*)((u8*)param_1 + 0x14);
    *(u32*)((u8*)param_1 + 0x04) = *(u32*)((u8*)param_1 + 0x04) + local_var;
    
    local_var = *(s16*)((u8*)param_1 + 0x18);
    *(u32*)((u8*)param_1 + 0x08) = *(u32*)((u8*)param_1 + 0x08) + local_var + param_2;
    
    return (u32)param_1;
}
#endif

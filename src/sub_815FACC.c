#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815FACC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_815FACC(void *arg0) {
    s32 temp_r2_10;
    s32 temp_r3_6;

    temp_r3_6 = (*(s32 *)((s8 *)(arg0) + (4)));
    (*(s16 *)((s8 *)(arg0) + (0x14))) = (s16) (temp_r3_6 - (*(s32 *)((s8 *)(arg0) + (0xC))));
    temp_r2_10 = (*(s32 *)((s8 *)(arg0) + (8)));
    (*(s16 *)((s8 *)(arg0) + (0x18))) = (s16) (temp_r2_10 - (*(s32 *)((s8 *)(arg0) + (0x10))));
    (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r3_6;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r2_10;
}

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

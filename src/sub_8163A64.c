#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163A64 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8163A64(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    (*(s32 *)((s8 *)(arg0) + (0x18))) = arg1;
    (*(s32 *)((s8 *)(arg0) + (0x1C))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (0x20))) = arg3;
}

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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163A80.s\"");
#else
void sub_8163A80(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    void *temp_r0_20;
    void *temp_r2_30;

    temp_r0_20 = sub_8020DD0(arg1, arg2, arg3, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (0x14))) = temp_r0_20;
    sub_801E150(temp_r0_20, arg4, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (0x14))));
    temp_r2_30 = (*(void **)((s8 *)(arg0) + (0x14)));
    (*(u8 *)((s8 *)(temp_r2_30) + (0x1F))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r2_30) + (0x1F)))) | (arg5 & 3));
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (0xE))) = 0xFFFF;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163ADC.s\"");
#else
void sub_8163ADC(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_r5_42;
    void *temp_r0_22;
    void *temp_r3_35;

    temp_r0_22 = sub_8020DD0(arg1, arg2, arg3, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (0x10))) = temp_r0_22;
    sub_801E150(temp_r0_22, arg4, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (0x10))));
    temp_r3_35 = (*(void **)((s8 *)(arg0) + (0x10)));
    temp_r5_42 = arg5 & 3;
    (*(u8 *)((s8 *)(temp_r3_35) + (0x1F))) = (u8) ((((((((0x3F & (*(u8 *)((s8 *)(temp_r3_35) + (0x1F)))) | (arg5 << 6)) & ~0x30) | (temp_r5_42 * 0x10)) & ~0xC) | (temp_r5_42 * 4)) & ~3) | temp_r5_42);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x10)))) + (0xE))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = 0;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815EC3C needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_815EC3C(u32 param_1) {
    u8* puVar1;
    u8* puVar2;
    
    puVar1 = *(u8**)(param_1 + 0xC);
    puVar2 = puVar1 + 0x12;
    *puVar2 = *puVar2 | 0x20;
    *(u8*)(param_1 + 0x1A) = 0;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EC4C.s\"");
#else
void sub_815EC4C(void *arg0, u16 arg1) {
    s16 temp_r0_24;
    s16 temp_r1_12;
    s8 var_r0_29;
    u16 var_r0_16;

    temp_r1_12 = (s16) arg1;
    if ((s32) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) + temp_r1_12) < 0) {
        var_r0_16 = 0;
    } else {
        var_r0_16 = temp_r1_12 + (*(u16 *)((s8 *)(arg0) + (0x18)));
    }
    (*(u16 *)((s8 *)(arg0) + (0x18))) = var_r0_16;
    temp_r0_24 = (s16) arg1;
    if ((s32) temp_r0_24 < 0) {
        (*(s8 *)((s8 *)(arg0) + (0x1B))) = 0x64;
        var_r0_29 = 1;
        goto block_7;
    }
    if ((s32) temp_r0_24 > 0) {
        (*(s8 *)((s8 *)(arg0) + (0x1B))) = 0x64;
        var_r0_29 = 2;
block_7:
        (*(s8 *)((s8 *)(arg0) + (0x1A))) = var_r0_29;
    }
}
#endif

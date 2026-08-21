#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8025D24 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025D24.s\"");
#else
void sub_8025D24(u32* param_1, s32 param_2)
{
    u32* puVar1;
    u32 uVar2;
    
    puVar1 = param_1;
    if (param_1 != (u32*)0x0) {
        puVar1 = (u32*)((u8*)param_1 + 0x12A);
    }
    uVar2 = *(u8*)puVar1;
    if (uVar2 == 1) {
        if (param_2 < 8) {
            void (**ppvVar3)(void) = (void (**)(void))((u8*)0x08025D4C + (param_2 * 4));
            (*ppvVar3)();
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025E94.s\"");
#else
s32 sub_8025E94(void *arg0) {
    s16 *var_r1_46;
    s16 var_r0_47;
    u16 temp_r0_63;
    u16 temp_r4_9;
    u8 temp_r0_24;

    temp_r4_9 = (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)));
    if (temp_r4_9 != 0) {
        if (temp_r4_9 == *(0x0839F5A4 + (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) * 2))) {
            temp_r0_24 = (*(u8 *)((s8 *)(arg0) + (0x1F8))) + 1;
            (*(u8 *)((s8 *)(arg0) + (0x1F8))) = temp_r0_24;
            if (temp_r0_24 == 0xA) {
                (*(u8 *)((s8 *)(arg0) + (0x1F8))) = 0U;
                (*(u16 *)((s8 *)(arg0) + (0x1F6))) = 0xFFFFU;
                return 1;
            }
            var_r1_46 = arg0 + 0x1F6;
            var_r0_47 = 0x1E;
            goto block_6;
        }
        (*(u8 *)((s8 *)(arg0) + (0x1F8))) = 0U;
        var_r1_46 = arg0 + 0x1F6;
        var_r0_47 = 0xFFFF;
block_6:
        *var_r1_46 = var_r0_47;
        goto block_7;
    }
block_7:
    temp_r0_63 = (*(u16 *)((s8 *)(arg0) + (0x1F6))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0x1F6))) = temp_r0_63;
    if ((s32) (temp_r0_63 << 0x10) <= 0) {
        (*(u8 *)((s8 *)(arg0) + (0x1F8))) = 0U;
        (*(u16 *)((s8 *)(arg0) + (0x1F6))) = 0xFFFFU;
    }
    return 0;
}
#endif

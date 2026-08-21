#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81070B8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81070B8.s\"");
#else
s32 sub_8082B00();                                  /* extern */
extern s32 sub_80FD44C;
extern s32 sub_810124C;

void sub_81070B8(void *arg0) {
    s32 *var_r0_37;
    u8 temp_r2_11;
    void *temp_r1_9;

    temp_r1_9 = *(void **)0x03000FD8;
    temp_r2_11 = (*(u8 *)((s8 *)(temp_r1_9) + (0xB)));
    if (2 & temp_r2_11) {
        (*(u8 *)((s8 *)(temp_r1_9) + (0xB))) = (u8) (-3 & temp_r2_11);
        return;
    }
    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
        if (!(0x38 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r1_9) + (0x7C)))) + (0x7E))))) {
            var_r0_37 = &sub_80FD44C;
            goto block_7;
        }
    } else if ((sub_8082B00() << 0x18) == 0) {
        var_r0_37 = &sub_810124C;
block_7:
        (*(s32 **)((s8 *)(arg0) + (4))) = var_r0_37;
    }
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81065D0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81065D0.s\"");
#else
void sub_81065D0(void *arg0) {
    s32 temp_r4_10;
    void *temp_r1_18;

    temp_r4_10 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
    if (temp_r4_10 != 0) {
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 1);
        return;
    }
    temp_r1_18 = *(void **)0x03000FD8;
    (*(u8 *)((s8 *)(temp_r1_18) + (0x2BF))) = (u8) (-0x21 & (*(u8 *)((s8 *)(temp_r1_18) + (0x2BF))));
    (*(s32 *)((s8 *)(arg0) + (4))) = temp_r4_10;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106608.s\"");
#else
#error "TODO: write sub_8106608 to match asm/nonmatching/sub_8106608.s, then delete this #error"
#endif

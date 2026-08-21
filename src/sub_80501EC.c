#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80501EC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80501EC.s\"");
#else
s32 sub_80E9958(s32, s32, s32, s32);            /* extern */

void sub_80501EC(void *arg0) {
    void *temp_r0_75;
    void *temp_r1_35;
    void *temp_r1_71;
    void *temp_r2_54;

    (*(u8 *)((s8 *)(arg0) + (0x20C))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x20C))));
    (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) ((-7 & (*(u8 *)((s8 *)(arg0) + (0x33C)))) | 2);
    temp_r1_35 = (*(void **)((s8 *)(arg0) + (0x294)));
    (*(u8 *)((s8 *)(temp_r1_35) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_35) + (0x12))) | 0x10);
    (*(s32 (**)(void *, s32))((s8 *)(((*(s32 *)((s8 *)(arg0) + (0x338))) + 0x80)) + (4)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 2);
    temp_r2_54 = (*(void **)((s8 *)(arg0) + (0x344)));
    if ((temp_r2_54 != NULL) && (2 & (*(u8 *)((s8 *)(temp_r2_54) + (0x20F))))) {
        (*(u8 *)((s8 *)(temp_r2_54) + (0x20C))) = (u8) (-2 & (*(u8 *)((s8 *)(temp_r2_54) + (0x20C))));
        temp_r1_71 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x344)))) + (0x294)));
        (*(u8 *)((s8 *)(temp_r1_71) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_71) + (0x12))) | 0x10);
        temp_r0_75 = (*(void **)((s8 *)(arg0) + (0x344)));
        (*(s32 (**)(void *, s32))((s8 *)(((*(s32 *)((s8 *)(temp_r0_75) + (0x338))) + 0x80)) + (4)))(temp_r0_75 + M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */), 2);
    }
    sub_80E9958(*(s32 *)0x03000FC0 + 0x38C, 0, ((u32) ((*(s32 *)((s8 *)(arg0) + (0x22C))) << 0xA) >> 0x14) + 0x960, 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80502C8.s\"");
#else
#error "TODO: write sub_80502C8 to match asm/nonmatching/sub_80502C8.s, then delete this #error"
#endif

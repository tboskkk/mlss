#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8111174 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111174.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_811108C;

void sub_8111174(void *arg0) {
    s32 var_r1_20;
    void *temp_r2_29;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        var_r1_20 = 0xA;
        if ((0 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) != 1) {
            var_r1_20 = 0xB;
        }
        sub_8082E1C(arg0, var_r1_20, 0, 0);
        temp_r2_29 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_29) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_29) + (0x12)))) | 2);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_811108C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81111C0.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_8110CB0(void *arg0);                       /* extern */

void sub_81111C0(void *arg0) {
    s32 var_r1_20;
    void *temp_r2_29;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        var_r1_20 = 4;
        if ((0 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) != 1) {
            var_r1_20 = 7;
        }
        sub_8082E1C(arg0, var_r1_20, 0, 0);
        temp_r2_29 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_29) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_29) + (0x12)))) | 2);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8110CB0;
        stop_sfx_80195A8(0x89);
    }
}
#endif

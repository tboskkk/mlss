#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8108BE0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108BE0.s\"");
#else
s32 sub_8082AAC(s32);                           /* extern */
void sub_8108B84(void *arg0);                       /* extern */

void sub_8108BE0(void *arg0) {
    s32 *var_r0_29;
    s32 var_r2_22;
    void *temp_r2_8;

    temp_r2_8 = (*(void **)((s8 *)(arg0) + (8)));
    if ((6 & (*(u8 *)((s8 *)(temp_r2_8) + (0x7E)))) == 2) {
        var_r2_22 = 0x205A;
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
            var_r2_22 = 0x202B;
        }
        sub_8082AAC(var_r2_22);
        var_r0_29 = (s32 *) &sub_8108B84;
    } else {
        (*(u8 *)((s8 *)(temp_r2_8) + (0x122))) = (u8) (-0x21 & (*(u8 *)((s8 *)(temp_r2_8) + (0x122))));
        var_r0_29 = NULL;
    }
    (*(s32 **)((s8 *)(arg0) + (4))) = var_r0_29;
}
#endif

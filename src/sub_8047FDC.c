#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047FDC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047FDC.s\"");
#else
s32 sub_8021ED8();                              /* extern */
s32 sub_8047DC8(void *, s32);                   /* extern */

void sub_8047FDC(void *arg0) {
    u32 temp_r4_25;
    void *temp_r2_27;

    if ((*(u8 *)((s8 *)(arg0) + (0x222))) != 0xFF) {
        (*(u8 *)((s8 *)(arg0) + (0x20F))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20F))) | 2);
        temp_r4_25 = (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x12))) << 0x1D) >> 0x1E;
        sub_8021ED8();
        temp_r2_27 = (*(void **)((s8 *)(arg0) + (0x294)));
        (*(u8 *)((s8 *)(temp_r2_27) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_27) + (0x12)))) | (temp_r4_25 * 2));
        if (0x40 & (*(u8 *)((s8 *)(arg0) + (0x20E)))) {
            sub_8047DC8(arg0, 0xFF);
        }
    }
}
#endif

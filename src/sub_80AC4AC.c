#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80AC4AC needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80884AC(void *);                        /* extern */
void sub_80A99A8(void *arg0);                       /* extern */

void sub_80AC4AC(void) {
    s32 temp_r1_27;
    void *temp_r0_8;
    void *temp_r4_12;
    void *temp_r5_9;
    void *temp_r6_14;
    void *temp_r7_11;

    temp_r0_8 = *(void **)0x03000FD8;
    temp_r5_9 = (*(void **)((s8 *)(temp_r0_8) + (0x70)));
    temp_r7_11 = temp_r5_9 + 8;
    temp_r4_12 = (*(void **)((s8 *)(temp_r0_8) + (0x74)));
    temp_r6_14 = temp_r4_12 + 8;
    sub_80884AC(temp_r6_14);
    if (0x20 & (*(u8 *)((s8 *)(temp_r4_12) + (0x81)))) {
        temp_r1_27 = 6 & (*(u8 *)((s8 *)(temp_r5_9) + (0x7E)));
        if ((temp_r1_27 == 2) || (temp_r1_27 == 4)) {
            (*(s32 **)((s8 *)(temp_r7_11) + (0x4C))) = (s32 *) &sub_80A99A8;
        }
        (*(s32 *)((s8 *)(temp_r6_14) + (0x4C))) = 0;
    }
}

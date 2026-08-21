#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8059DDC needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8059924(void *);                        /* extern */
s32 sub_8059AF4(void *);                        /* extern */
s32 sub_8059D04(void *, s32);                   /* extern */

void sub_8059DDC(void *arg0) {
    s32 sp0;
    void *temp_r0_41;
    void *temp_r0_46;

    (*(void **)((s8 *)(arg0) + (0x6C))) = alloc_zero_8018DB4(0x3000U, 1U, (s8 *)0x081E27DC, 0U);
    (*(void **)((s8 *)(arg0) + (0x74))) = alloc_zero_8018DB4(0x2800U, 1U, (s8 *)0x081E27E4, 0U);
    sp0 = 0;
    CpuFastSet(&sp0, (*(void **)((s8 *)(arg0) + (0x6C))), 0x01000C00U);
    sp0 = 0;
    CpuFastSet(&sp0, (*(void **)((s8 *)(arg0) + (0x74))), 0x01000A00U);
    sub_8059AF4(arg0);
    sub_8059D04(arg0, 0);
    sub_8059924(arg0);
    temp_r0_41 = (*(void **)((s8 *)(arg0) + (0x74)));
    if (temp_r0_41 != NULL) {
        free_heap_8018D9C(temp_r0_41);
    }
    temp_r0_46 = (*(void **)((s8 *)(arg0) + (0x6C)));
    if (temp_r0_46 != NULL) {
        free_heap_8018D9C(temp_r0_46);
    }
}

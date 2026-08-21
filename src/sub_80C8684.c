#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80C8684 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C8684.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80C33B0;

void sub_80C8684(void *arg0) {
    s32 temp_r1_23;
    void *temp_r2_10;
    void *temp_r2_34;
    void *temp_r4_12;

    temp_r2_10 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x74)));
    temp_r4_12 = temp_r2_10 + 8;
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r4_12) + (8)))) + (0x12)))) {
        temp_r1_23 = 6 & (*(u8 *)((s8 *)(temp_r2_10) + (0x7E)));
        if ((temp_r1_23 == 2) || (temp_r1_23 == 4)) {
            sub_8082E1C(temp_r4_12, 3, 0x2063, 0);
            temp_r2_34 = (*(void **)((s8 *)(temp_r4_12) + (8)));
            (*(u8 *)((s8 *)(temp_r2_34) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_34) + (0x12)))) | 2);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80C33B0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C86E4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4(void *);                        /* extern */
extern s32 sub_80C2F18;

void sub_80C86E4(void *arg0) {
    s32 temp_r1_25;
    void *temp_r2_36;
    void *temp_r4_12;
    void *temp_r5_10;

    temp_r5_10 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x70)));
    temp_r4_12 = temp_r5_10 + 8;
    sub_8087CE4(temp_r4_12);
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r4_12) + (8)))) + (0x12)))) {
        temp_r1_25 = 6 & (*(u8 *)((s8 *)(temp_r5_10) + (0x7E)));
        if ((temp_r1_25 == 2) || (temp_r1_25 == 4)) {
            sub_8082E1C(temp_r4_12, 5, 0x2034, 0);
            temp_r2_36 = (*(void **)((s8 *)(temp_r4_12) + (8)));
            (*(u8 *)((s8 *)(temp_r2_36) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_36) + (0x12))));
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80C2F18;
    }
}
#endif

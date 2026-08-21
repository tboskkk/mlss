#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8984 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8984.s\"");
#else
s32 sub_80EA5C8(void *, void *, s32, s32, s32, s32); /* extern */

s32 sub_80F8984(void *arg0, void *arg2, u8 arg3) {
    s32 temp_r3_11;
    u8 temp_r6_10;
    void *temp_r4_38;

    temp_r6_10 = arg3;
    temp_r3_11 = (*(s32 *)((s8 *)(arg2) + (0)));
    switch (temp_r3_11) {                           /* irregular */
    case 0:
        sub_80EA5C8(arg0 + 0x1C, (*(void **)((s8 *)(arg0) + (0x2C))), (*(s32 *)((s8 *)(arg2) + (4))), 0, 1, 0xFF);
        break;
    case 1:
        if ((u32) temp_r6_10 <= 5U) {
            temp_r4_38 = (*(void **)((s8 *)(arg0) + (0x2C))) + ((temp_r6_10 << 8) + 0x100);
            if (((*(u8 *)((s8 *)(temp_r4_38) + (0xA0))) ^ 1) & 1) {
                sub_80EA5C8(arg0 + 0x1C, temp_r4_38, (*(s32 *)((s8 *)(arg2) + (4))), 0, temp_r3_11, 0xFF);
                (*(u8 *)((s8 *)(temp_r4_38) + (0xFD))) = (u8) ((-0x10 & (*(u8 *)((s8 *)(temp_r4_38) + (0xFD)))) | (0xF & temp_r6_10));
            }
        }
        break;
    }
    return 1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801B870 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B870.s\"");
#else
s32 process_add(void *, u8);                    /* extern */
s32 sub_80187A8();                              /* extern */
s32 sub_801B7B0(void *, s8, s32, s32);          /* extern */
s32 sub_801B85C(void *, s32);                   /* extern */

void *sub_801B870(void *arg0, u8 arg1, s8 arg3, s32 arg4) {
    u16 temp_r5_13;

    temp_r5_13 = (u16) arg4;
    process_add(arg0, arg1);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDBD98;
    if (temp_r5_13 == 0) {
        sub_801B7B0(arg0, arg3, 1, 1);
        sub_80187A8();
        if (arg0 != NULL) {
            sub_801B85C(arg0, 3);
        }
    } else {
        (*(u16 *)((s8 *)(arg0) + (0x1C))) = temp_r5_13;
        (*(s8 *)((s8 *)(arg0) + (0x20))) = arg3;
        (*(s16 *)((s8 *)(arg0) + (0x1E))) = 0;
    }
    return arg0;
}
#endif

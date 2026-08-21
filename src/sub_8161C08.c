#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8161C08 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8021308(s32);                           /* extern */

void sub_8161C08(s32 *arg0, s32 arg1) {
    sub_8021308(*arg0);
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161C28.s\"");
#else
void *sub_8161C28(void *arg0, s32 arg1) {
    s16 *temp_r1_36;
    void *temp_r1_18;
    void *temp_r1_22;
    void *temp_r1_26;
    void *temp_r1_32;
    void *temp_r1_38;
    void *temp_r1_40;
    void *temp_r1_44;
    void *temp_r1_48;

    (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    (*(s32 *)((s8 *)(arg0) + (4))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0))) = arg1;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD0F8;
    (*(s32 *)((s8 *)(arg0) + (0x40))) = 1;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = 0;
    temp_r1_18 = arg0 + 0x18;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
    (*(s32 *)((s8 *)(temp_r1_18) + (4))) = 0;
    (*(s32 *)((s8 *)(temp_r1_18) + (8))) = 0;
    temp_r1_22 = temp_r1_18 + 0xC;
    (*(s32 *)((s8 *)(arg0) + (0x24))) = 0;
    (*(s32 *)((s8 *)(temp_r1_22) + (4))) = 0;
    (*(s32 *)((s8 *)(temp_r1_22) + (8))) = 0;
    temp_r1_26 = temp_r1_22 + 0xC;
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0;
    (*(s32 *)((s8 *)(temp_r1_26) + (4))) = 0;
    (*(s32 *)((s8 *)(temp_r1_26) + (8))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x3C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x44))) = 0;
    temp_r1_32 = temp_r1_26 + 0x18;
    (*(s16 *)((s8 *)(temp_r1_26) + (0x18))) = 0;
    (*(s16 *)((s8 *)(temp_r1_32) + (6))) = 0;
    temp_r1_36 = (temp_r1_32 + 6) - 2;
    *temp_r1_36 = 0;
    temp_r1_38 = temp_r1_36 - 2;
    (*(s16 *)((s8 *)(temp_r1_38) + (0))) = 0;
    temp_r1_40 = temp_r1_38 + 6;
    (*(s16 *)((s8 *)(temp_r1_38) + (6))) = 0;
    (*(s16 *)((s8 *)(temp_r1_40) + (4))) = 0;
    temp_r1_44 = (temp_r1_40 + 4) - 2;
    (*(s16 *)((s8 *)(temp_r1_44) + (0))) = 0;
    (*(s16 *)((s8 *)(temp_r1_44) + (6))) = 0;
    temp_r1_48 = (temp_r1_44 + 6) - 2;
    (*(s16 *)((s8 *)(temp_r1_48) + (0))) = 0;
    (*(s16 *)((s8 *)(temp_r1_48) + (4))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x60))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x5C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x64))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x68))) = 0x0821282C;
    return arg0;
}
#endif

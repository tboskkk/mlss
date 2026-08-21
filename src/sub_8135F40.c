#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8135F40 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8135F40.s\"");
#else
void sub_8135F40(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0))) = 0x100;
    (*(s32 *)((s8 *)(arg0) + (4))) = 0;
    (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = 0x100;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x1C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x20))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x24))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x28))) = 0x100;
    (*(s32 *)((s8 *)(arg0) + (0x2C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x34))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x38))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x3C))) = 0x100;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136110.s\"");
#else
void sub_8136110(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x40))) = 0x08CDC470;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81361E4.s\"");
#else
s32 sub_8136470(s32 *);                         /* extern */
s32 sub_8136688(void *, s32 *);                 /* extern */

void *sub_81361E4(void *arg0, void *arg1, void *arg2) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 sp10;
    s32 temp_r2_26;
    s32 temp_r3_22;
    s32 temp_r6_19;

    sp10 = 0x08CDC480;
    sub_8136470(&sp0);
    temp_r6_19 = (*(s32 *)((s8 *)(arg1) + (0)));
    temp_r3_22 = (*(s32 *)((s8 *)(arg1) + (4)));
    temp_r2_26 = (*(s32 *)((s8 *)(arg1) + (8)));
    sp0 = ((*(s32 *)((s8 *)(arg2) + (0))) * temp_r6_19) + ((*(s32 *)((s8 *)(arg2) + (0x10))) * temp_r3_22) + ((*(s32 *)((s8 *)(arg2) + (0x20))) * temp_r2_26) + (*(s32 *)((s8 *)(arg2) + (0x30)));
    sp4 = ((*(s32 *)((s8 *)(arg2) + (4))) * temp_r6_19) + ((*(s32 *)((s8 *)(arg2) + (0x14))) * temp_r3_22) + ((*(s32 *)((s8 *)(arg2) + (0x24))) * temp_r2_26) + (*(s32 *)((s8 *)(arg2) + (0x34)));
    sp8 = ((*(s32 *)((s8 *)(arg2) + (8))) * temp_r6_19) + ((*(s32 *)((s8 *)(arg2) + (0x18))) * temp_r3_22) + ((*(s32 *)((s8 *)(arg2) + (0x28))) * temp_r2_26) + (*(s32 *)((s8 *)(arg2) + (0x38)));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = 0x08CDC480;
    sub_8136688(arg0, &sp0);
    sp10 = 0x08CDC480;
    return arg0;
}
#endif

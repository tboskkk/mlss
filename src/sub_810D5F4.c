#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810D5F4 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_810D5F4(void *arg0) {
    s32 temp_r0_9;

    temp_r0_9 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (4)));
    if (temp_r0_9 == 0) {
        (*(s32 *)((s8 *)(arg0) + (4))) = temp_r0_9;
    }
    (*(u16 *)((s8 *)((void *)0x0400001A) + (0))) = (u16) *(u16 *)0x0200001A;
    (*(u16 *)((s8 *)((void *)0x0400001A) + (4))) = (u16) *(u16 *)0x0200001E;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D624.s\"");
#else
s32 sub_8085260(s32, s32);                      /* extern */
extern s32 sub_810D70C;

void sub_810D624(void *arg0) {
    u16 temp_r0_9;

    temp_r0_9 = (*(u16 *)((s8 *)(arg0) + (0x14))) + 3;
    (*(u16 *)((s8 *)(arg0) + (0x14))) = temp_r0_9;
    if ((s32) (s16) temp_r0_9 > 0x18) {
        (*(u16 *)((s8 *)(arg0) + (0x14))) = 0x18U;
        sub_8085260((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x250))), 0);
        sub_8085260((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x250))), 1);
        (*(s32 **)((s8 *)(arg0) + (0xC))) = &sub_810D70C;
    }
    (*(s16 *)((s8 *)((void *)0x0400001A) + (0))) = (s16) (*(u16 *)0x0200001A + (*(u16 *)((s8 *)(arg0) + (0x14))));
    (*(s16 *)((s8 *)((void *)0x0400001A) + (4))) = (s16) (*(u16 *)0x0200001E + (*(u16 *)((s8 *)(arg0) + (0x14))));
}
#endif

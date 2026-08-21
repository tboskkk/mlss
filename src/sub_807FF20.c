#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FF20 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FF20.s\"");
#else
void sub_807FF20(s32 arg0, s32 arg1) {
    void *temp_r0_10;
    void *temp_r3_9;

    temp_r3_9 = *(void **)0x03000FD8;
    temp_r0_10 = (*(void **)((s8 *)(temp_r3_9) + (0x3C)));
    (*(void **)((s8 *)(temp_r3_9) + (0x3C))) = (void *) (*(void **)((s8 *)(temp_r0_10) + (0)));
    (*(void **)((s8 *)(temp_r0_10) + (0))) = (void *) (*(void **)((s8 *)(temp_r3_9) + (0x50)));
    (*(s32 *)((s8 *)(temp_r0_10) + (4))) = arg0;
    (*(s16 *)((s8 *)(temp_r0_10) + (0x10))) = 0;
    (*(void **)((s8 *)(temp_r3_9) + (0x50))) = temp_r0_10;
    (*(s32 *)((s8 *)(temp_r0_10) + (8))) = arg1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FF48.s\"");
#else
void sub_807FF48(s32 arg0, s32 arg1) {
    void *temp_r0_10;
    void *temp_r3_9;

    temp_r3_9 = *(void **)0x03000FD8;
    temp_r0_10 = (*(void **)((s8 *)(temp_r3_9) + (0x3C)));
    (*(void **)((s8 *)(temp_r3_9) + (0x3C))) = (void *) (*(void **)((s8 *)(temp_r0_10) + (0)));
    (*(void **)((s8 *)(temp_r0_10) + (0))) = (void *) (*(void **)((s8 *)(temp_r3_9) + (0x4C)));
    (*(s32 *)((s8 *)(temp_r0_10) + (4))) = arg0;
    (*(s16 *)((s8 *)(temp_r0_10) + (0x10))) = 0;
    (*(void **)((s8 *)(temp_r3_9) + (0x4C))) = temp_r0_10;
    (*(s32 *)((s8 *)(temp_r0_10) + (8))) = arg1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FF70.s\"");
#else
void sub_807FF70(s32 arg0, s32 arg1) {
    void *temp_r0_10;
    void *temp_r3_9;

    temp_r3_9 = *(void **)0x03000FD8;
    temp_r0_10 = (*(void **)((s8 *)(temp_r3_9) + (0x3C)));
    (*(void **)((s8 *)(temp_r3_9) + (0x3C))) = (void *) (*(void **)((s8 *)(temp_r0_10) + (0)));
    (*(void **)((s8 *)(temp_r0_10) + (0))) = (void *) (*(void **)((s8 *)(temp_r3_9) + (0x48)));
    (*(s32 *)((s8 *)(temp_r0_10) + (4))) = arg0;
    (*(s16 *)((s8 *)(temp_r0_10) + (0x10))) = 0;
    (*(void **)((s8 *)(temp_r3_9) + (0x48))) = temp_r0_10;
    (*(s32 *)((s8 *)(temp_r0_10) + (8))) = arg1;
}
#endif

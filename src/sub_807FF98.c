#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FF98 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FF98.s\"");
#else
void sub_807FF98(s32 arg0) {
    void *temp_r0_9;
    void *temp_r2_8;

    temp_r2_8 = *(void **)0x03000FD8;
    temp_r0_9 = (*(void **)((s8 *)(temp_r2_8) + (0x3C)));
    (*(void **)((s8 *)(temp_r2_8) + (0x3C))) = (void *) (*(void **)((s8 *)(temp_r0_9) + (0)));
    (*(void **)((s8 *)(temp_r0_9) + (0))) = (void *) (*(void **)((s8 *)(temp_r2_8) + (0x44)));
    (*(s32 *)((s8 *)(temp_r0_9) + (4))) = arg0;
    (*(s16 *)((s8 *)(temp_r0_9) + (0x10))) = 0;
    (*(void **)((s8 *)(temp_r2_8) + (0x44))) = temp_r0_9;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FFB8.s\"");
#else
void sub_807FFB8(s32 arg0) {
    void *temp_r0_9;
    void *temp_r2_8;

    temp_r2_8 = *(void **)0x03000FD8;
    temp_r0_9 = (*(void **)((s8 *)(temp_r2_8) + (0x3C)));
    (*(void **)((s8 *)(temp_r2_8) + (0x3C))) = (void *) (*(void **)((s8 *)(temp_r0_9) + (0)));
    (*(void **)((s8 *)(temp_r0_9) + (0))) = (void *) (*(void **)((s8 *)(temp_r2_8) + (0x40)));
    (*(s32 *)((s8 *)(temp_r0_9) + (4))) = arg0;
    (*(s16 *)((s8 *)(temp_r0_9) + (0x10))) = 0;
    (*(void **)((s8 *)(temp_r2_8) + (0x40))) = temp_r0_9;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FFD8.s\"");
#else
void sub_807FFD8(void **arg0, s32 arg1) {
    void *temp_r0_10;
    void *temp_r3_9;

    temp_r3_9 = *(void **)0x03000FD8;
    temp_r0_10 = (*(void **)((s8 *)(temp_r3_9) + (0x3C)));
    (*(void **)((s8 *)(temp_r3_9) + (0x3C))) = (void *) (*(void **)((s8 *)(temp_r0_10) + (0)));
    (*(void **)((s8 *)(temp_r0_10) + (0))) = (void *) *arg0;
    (*(s32 *)((s8 *)(temp_r0_10) + (4))) = arg1;
    (*(s16 *)((s8 *)(temp_r0_10) + (0x10))) = 0;
    *arg0 = temp_r0_10;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FFFC.s\"");
#else
#error "TODO: write sub_807FFFC to match asm/nonmatching/sub_807FFFC.s, then delete this #error"
#endif

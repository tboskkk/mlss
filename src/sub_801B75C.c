#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801B75C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_801B75C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0))) = 0;
    (*(s16 *)((s8 *)(arg0) + (4))) = 0;
    (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B768.s\"");
#else
void sub_801B768(void *arg0) {
    void *temp_r2_16;
    void *temp_r2_19;

    (*(u8 *)((s8 *)(arg0) + (0x1C))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x1C))) + 1);
    temp_r2_16 = *(void **)0x03000BCC;
    (*(s16 *)((s8 *)(temp_r2_16) + (0))) = (s16) (*(u8 *)((s8 *)(arg0) + (0x1D)));
    temp_r2_19 = temp_r2_16 + 2;
    (*(s16 *)((s8 *)(temp_r2_16) + (2))) = (s16) (*(u8 *)((s8 *)(arg0) + (0x1C)));
    (*(s16 *)((s8 *)(temp_r2_19) + (2))) = (s16) (((*(u8 *)((s8 *)(arg0) + (0x20))) << 0xC) | ((*(u8 *)((s8 *)((arg0 + 0x20)) + (1))) << 0xA) | (*(u16 *)((s8 *)(arg0) + (0x1E))));
    *(void **)0x03000BCC = temp_r2_19 + 2 + 4;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B7B0.s\"");
#else
void sub_801B7B0(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s16 var_r0_22;
    s16 var_r0_27;

    switch (arg1) {                                 /* irregular */
    case 0:
        var_r0_22 = 0xFF;
block_10:
        *(s16 *)0x02000050 = var_r0_22;
        *(s16 *)0x02000054 = 0x10 - ((s32) (arg2 * 0x10) / arg3);
        return;
    case 1:
        var_r0_27 = 0xFF;
block_12:
        *(s16 *)0x02000050 = var_r0_27;
        *(u32 *)0x02000054 = (s16) ((s32) (arg2 * 0x10) / arg3);
        return;
    case 2:
        var_r0_22 = 0xBF;
        goto block_10;
    case 3:
        var_r0_27 = 0xBF;
        goto block_12;
    }
}
#endif

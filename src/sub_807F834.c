#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807F834 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F834.s\"");
#else
extern s32 sub_80801BC;

void sub_807F834(void *arg0) {
    u16 temp_r0_16;
    void *temp_r2_10;
    void *temp_r3_8;

    temp_r3_8 = (*(void **)((s8 *)(arg0) + (0xC)));
    temp_r2_10 = *(void **)0x03000FD8;
    (*(u8 *)((s8 *)(temp_r2_10) + (0xB))) = (u8) ((*(u8 *)((s8 *)(temp_r2_10) + (0xB))) | 2);
    temp_r0_16 = (*(u16 *)((s8 *)(temp_r3_8) + (0x16))) - 1;
    (*(u16 *)((s8 *)(temp_r3_8) + (0x16))) = temp_r0_16;
    if ((temp_r0_16 << 0x10) == 0) {
        (*(u16 *)((s8 *)(temp_r3_8) + (0x16))) = 0x14U;
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_80801BC;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F868.s\"");
#else
#error "TODO: write sub_807F868 to match asm/nonmatching/sub_807F868.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F8C4.s\"");
#else
#error "TODO: write sub_807F8C4 to match asm/nonmatching/sub_807F8C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F920.s\"");
#else
#error "TODO: write sub_807F920 to match asm/nonmatching/sub_807F920.s, then delete this #error"
#endif

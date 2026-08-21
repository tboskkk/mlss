#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8051434 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051434.s\"");
#else
void sub_8051434(void *arg0) {
    s32 var_r0_19;
    s32 var_r0_27;

    if (2 & (*(u8 *)((s8 *)(arg0) + (0x20F)))) {
        var_r0_19 = (*(s32 *)((s8 *)(arg0) + (0xC)));
        if (var_r0_19 < 0) {
            var_r0_19 += 0xFF;
        }
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0))) = (s16) (var_r0_19 >> 8);
        var_r0_27 = (*(s32 *)((s8 *)(arg0) + (0x10)));
        if (var_r0_27 < 0) {
            var_r0_27 += 0xFF;
        }
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (2))) = (s16) (var_r0_27 >> 8);
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0xE))) = (s16) (((u32) ((*(s32 *)((s8 *)(arg0) + (0x214))) << 0xF) >> 0x1C) << 0xC);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051484.s\"");
#else
s32 sub_80403C4();                              /* extern */

void sub_8051484(void *arg0) {
    void *temp_r2_12;

    sub_80403C4();
    temp_r2_12 = (*(void **)((s8 *)(arg0) + (0x294)));
    (*(u8 *)((s8 *)(temp_r2_12) + (0x1F))) = (u8) (-0xD & (*(u8 *)((s8 *)(temp_r2_12) + (0x1F))) & ~3);
}
#endif

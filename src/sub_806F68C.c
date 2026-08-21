#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806F68C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806F68C.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_806F68C(void *arg0) {
    s32 temp_r0_10;
    s32 temp_r0_17;
    s32 var_r0_35;

    temp_r0_10 = (*(s32 *)((s8 *)(arg0) + (0x8C)));
    temp_r0_17 = temp_r0_10 + 0x400;
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = temp_r0_17;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0xC))) = (s16) temp_r0_17;
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x8C))) < 0) {

    }
    var_r0_35 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_35 < 0) {
        var_r0_35 += 0x3F;
    }
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) (0xE00 - ((var_r0_35 >> 6) * 2));
    if ((s32) ((*(s32 *)((s8 *)(arg0) + (0x8C))) & 0xFF00) <= (s32) (temp_r0_10 & 0xFF00)) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0xC))) = 0;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
        stop_sfx_80195A8(0x6C);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806F704.s\"");
#else
extern s32 sub_806F7D8;

void sub_806F704(void *arg0) {
    s32 temp_r0_97;
    s32 var_r0_23;
    s32 var_r0_34;
    s32 var_r1_50;
    void *temp_r2_93;

    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x8C))) < 0) {

    }
    var_r0_23 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_23 < 0) {
        var_r0_23 += 0x3F;
    }
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) (0xE00 - ((var_r0_23 >> 6) * 2));
    var_r0_34 = (*(s32 *)((s8 *)(arg0) + (0x8C)));
    if (var_r0_34 < 0) {
        var_r0_34 += 0xFF;
    }
    if ((u32) ((var_r0_34 >> 8) & 0x7F) <= 0x3FU) {
        (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + 0x600);
        var_r1_50 = 0xFFFFF400;
    } else {
        (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + 0x400);
        var_r1_50 = 0xFFFFF700;
    }
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x8C))) + var_r1_50);
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (((s32) ((*(s32 *)((s8 *)(arg0) + (0xA8))) * ((*(s32 *)((s8 *)(arg0) + (0x10))) - (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8))) / (s32) (*(s32 *)((s8 *)(arg0) + (0xA4)))) + (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8));
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0xC))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x8C)));
    temp_r2_93 = (*(void **)((s8 *)(arg0) + (0x28)));
    temp_r0_97 = (*(s32 *)((s8 *)(temp_r2_93) + (0xD8)));
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x10))) >= temp_r0_97) {
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r0_97;
        (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (*(s32 *)((s8 *)(temp_r2_93) + (0xDC)));
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806F7D8;
    }
}
#endif

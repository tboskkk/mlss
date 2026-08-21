#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8150244 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150244.s\"");
#else
s32 sub_8150244(s8 arg0) {
    s8 temp_r0_8;

    temp_r0_8 = arg0;
    if (temp_r0_8 == 0) {
        return 0x100;
    }
    if (temp_r0_8 == 1) {
        return 0x180;
    }
    if ((s32) temp_r0_8 <= 1) {
        return 0x10;
    }
    return 0x160;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150270.s\"");
#else
s32 sub_80FBB50(s32 *, s32, s32, s32, s32);     /* extern */
s32 sub_8139CAC(s32 *, s32, s32, s32);      /* extern */

s32 sub_8150270(s32 arg0, s32 arg1) {
    s32 sp4;
    s32 var_r1_22;

    sub_8139CAC(&sp4, arg0, 0x28, 8);
    var_r1_22 = sub_80FBB50(&sp4, arg0, arg1, 0x30, 0x30);
    if ((var_r1_22 << 0x18) != 0) {
        var_r1_22 = 1;
    }
    return var_r1_22;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81502A8.s\"");
#else
s32 sub_8139AA0(void *);                        /* extern */
s32 sub_814FC88(void *);                        /* extern */
extern s32 sub_813B360;
extern s32 sub_813B380;
extern s32 sub_814F06C;

void sub_81502A8(s32 arg0, void *arg1) {
    void *temp_r1_17;

    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    temp_r1_17 = (*(void **)((s8 *)(arg1) + (0x344)));
    (*(u8 *)((s8 *)(temp_r1_17) + (0x20D))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r1_17) + (0x20D))));
    sub_8139AA0(arg1);
    sub_814FC88((*(void **)((s8 *)(arg1) + (0x344))));
    (*(u8 *)((s8 *)(arg1) + (0x33D))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33D))) | 8);
    (*(s16 *)((s8 *)(arg1) + (0x1D0))) = 0;
    (*(u8 *)((s8 *)(arg1) + (0x1D6))) = (u8) (-2 & (*(u8 *)((s8 *)(arg1) + (0x1D6))));
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_813B360;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_814F06C;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815033C.s\"");
#else
extern s32 sub_814EC48;
extern s32 sub_814ECE0;

void sub_815033C(void *arg0, s32 arg1) {
    s32 **var_r1_24;
    s32 *var_r0_25;

    (*(u16 *)((s8 *)(arg0) + (0x212))) = (u16) (0xFFFFFE7F & (*(u16 *)((s8 *)(arg0) + (0x212))));
    (*(s8 *)((s8 *)(arg0) + (0x2B4))) = 0;
    if ((arg1 << 0x18) == 0) {
        var_r1_24 = arg0 + 0x1A0;
        var_r0_25 = &sub_814EC48;
    } else {
        var_r1_24 = arg0 + 0x1A0;
        var_r0_25 = &sub_814ECE0;
    }
    *var_r1_24 = var_r0_25;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150388.s\"");
#else
s32 sub_8150388(void *arg0, s32 arg1, s32 arg2, u8 arg3, s32 arg4, s32 arg5) {
    s32 temp_r0_26;
    u32 temp_r0_35;
    u8 temp_r2_21;
    u8 temp_r3_18;
    u8 temp_r6_15;

    temp_r6_15 = arg3;
    temp_r3_18 = (u8) arg4;
    temp_r2_21 = (u8) arg5;
    temp_r0_26 = (*(u8 *)((s8 *)(arg0) + (0x283))) << 8;
    if (arg1 <= temp_r0_26) {
        if (arg2 <= temp_r0_26) {
            temp_r0_35 = (u32) ((*(u8 *)((s8 *)(arg0) + (0x24))) << 0x1D) >> 0x1D;
            if ((temp_r0_35 != temp_r6_15) && (temp_r0_35 != temp_r3_18)) {
                if (temp_r0_35 == temp_r2_21) {
                    goto block_7;
                }
                goto block_12;
            }
            goto block_7;
        }
        if (((u32) ((*(u8 *)((s8 *)(arg0) + (0x24))) << 0x1D) >> 0x1D) == temp_r3_18) {
            goto block_7;
        }
        goto block_12;
    }
    if (arg2 <= temp_r0_26) {
        if (((u32) ((*(u8 *)((s8 *)(arg0) + (0x24))) << 0x1D) >> 0x1D) == temp_r2_21) {
            goto block_7;
        }
        goto block_12;
    }
    if (((u32) ((*(u8 *)((s8 *)(arg0) + (0x24))) << 0x1D) >> 0x1D) != temp_r6_15) {
block_12:
        return 0;
    }
block_7:
    return 1;
}
#endif

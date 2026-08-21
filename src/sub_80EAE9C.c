#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EAE9C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAE9C.s\"");
#else
s32 sub_80EAE9C(s32 arg0, s32 *arg1, void *arg2) {
    if ((*(u8 *)((s8 *)(*(void **)0x03000FB8) + (0x30))) == (*(s32 *)((s8 *)(arg2) + (0)))) {
        *arg1 = (*(s32 *)((s8 *)(arg2) + (4)));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAEBC.s\"");
#else
s32 sub_80EAEBC(s32 arg0, void *arg1, s32 *arg2, void *arg3) {
    if (((s32) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg1) + (4)))) + (0x1B2))) >> (*(s32 *)((s8 *)(arg3) + (0)))) & 1) {
        *arg2 = (*(s32 *)((s8 *)(arg3) + (4)));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAEE0.s\"");
#else
s32 sub_8019508(u8, u8);                        /* extern */

s32 sub_80EAEE0(s32 arg0, s32 arg1, void *arg2) {
    if ((*(s32 *)((s8 *)(arg2) + (0))) == 0) {
        sub_8019508((*(u8 *)((s8 *)((arg2 + 4)) + (4))), (*(u8 *)((s8 *)(arg2) + (4))));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAEF8.s\"");
#else
s32 stop_all_sfx_801959C();                     /* extern */
s32 stop_sfx_80195A8();                         /* extern */
s32 sub_8019588(s32);                               /* extern */

s32 sub_80EAEF8(s32 arg0, void *arg1, void *arg2) {
    s32 temp_r1_8;

    temp_r1_8 = (*(s32 *)((s8 *)(arg2) + (0)));
    switch (temp_r1_8) {                            /* irregular */
    case 0:
        play_sfx_80195B4((*(s32 *)((s8 *)(arg2) + (4))), -1);
block_12:
    default:
        return 1;
    case 1:
        if ((*(s32 *)((s8 *)(arg2) + (4))) != 0) {
            stop_sfx_80195A8();
        } else {
            stop_all_sfx_801959C();
        }
        goto block_12;
    case 2:
        if ((sub_8019588((*(s32 *)((s8 *)(arg2) + (4)))) << 0x18) != 0) {
            (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x14)));
            return 0;
        }
        goto block_12;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAF4C.s\"");
#else
s32 sub_8019460(s32, u8, u8);                   /* extern */
s32 sub_8019650(s32, s32, u8);                  /* extern */

s32 sub_80EAF4C(s32 arg0, s32 arg1, void *arg2) {
    s32 temp_r0_7;
    void *temp_r2_7;

    temp_r0_7 = (*(s32 *)((s8 *)(arg2) + (0)));
    temp_r2_7 = arg2 + 4;
    switch (temp_r0_7) {                            /* irregular */
    case 0:
        if ((*(s32 *)((s8 *)(temp_r2_7) + (8))) == 2) {
            (*(s32 *)((s8 *)(temp_r2_7) + (8))) = -1;
        }
        sub_8019308((*(s32 *)((s8 *)(arg2) + (4))), (*(s32 *)((s8 *)(temp_r2_7) + (4))), (*(s32 *)((s8 *)(temp_r2_7) + (8))));
        break;
    case 1:
        if ((*(s32 *)((s8 *)(temp_r2_7) + (8))) == 2) {
            (*(s32 *)((s8 *)(temp_r2_7) + (8))) = -1;
        }
        sub_8019650((*(s32 *)((s8 *)(arg2) + (4))), (*(s32 *)((s8 *)(temp_r2_7) + (8))), (u8) (*(s32 *)((s8 *)(temp_r2_7) + (4))));
        break;
    case 2:
        sub_80193B4((*(s32 *)((s8 *)(arg2) + (4))), (u8) (*(s32 *)((s8 *)(temp_r2_7) + (8))), (u8) (*(s32 *)((s8 *)(temp_r2_7) + (4))));
        break;
    case 3:
        sub_8019460((*(s32 *)((s8 *)(arg2) + (4))), (u8) (*(s32 *)((s8 *)(temp_r2_7) + (8))), (u8) (*(s32 *)((s8 *)(temp_r2_7) + (4))));
        break;
    }
    return 1;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807F53C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F53C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_808842C(void *, s32, s32);              /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_8080064;

void sub_807F53C(void *arg0) {
    s32 var_r0_32;
    s32 var_r2_15;
    s32 var_r2_40;
    void *temp_r2_24;

    var_r2_15 = 0x2068;
    if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
        var_r2_15 = 0x2039;
    }
    sub_8082E1C(arg0, 0xB, var_r2_15, 0);
    temp_r2_24 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u8 *)((s8 *)(temp_r2_24) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_24) + (0x12)))) | 2);
    var_r0_32 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r0_32 < 0) {
        var_r0_32 += 0xFF;
    }
    var_r2_40 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r2_40 < 0) {
        var_r2_40 += 0xFF;
    }
    sub_808843C(arg0, (var_r0_32 >> 8) - 0x18, (var_r2_40 >> 8) + 6, 0, 0x100);
    sub_808842C(arg0, 0x400, 0x10);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8080064;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F5B8.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4(void *);                            /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_80800DC;

void sub_807F5B8(void *arg0) {
    s32 var_r1_46;
    s32 var_r2_52;
    s32 var_r3_58;
    void *temp_r2_38;
    void *temp_r4_9;

    temp_r4_9 = (*(void **)((s8 *)(arg0) + (8)));
    if ((sub_8087CE4(temp_r4_9) << 0x18) == 0) {
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
            sub_8082E1C(temp_r4_9, 0, 0x2039, 0);
        } else {
            sub_8082E1C(temp_r4_9, 0, 0x2068, 0);
        }
        temp_r2_38 = (*(void **)((s8 *)(temp_r4_9) + (8)));
        (*(u8 *)((s8 *)(temp_r2_38) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_38) + (0x12)))) | 2);
        var_r1_46 = (*(s32 *)((s8 *)(temp_r4_9) + (0x38)));
        if (var_r1_46 < 0) {
            var_r1_46 += 0xFF;
        }
        var_r2_52 = (*(s32 *)((s8 *)(temp_r4_9) + (0x3C)));
        if (var_r2_52 < 0) {
            var_r2_52 += 0xFF;
        }
        var_r3_58 = (*(s32 *)((s8 *)(temp_r4_9) + (0x40)));
        if (var_r3_58 < 0) {
            var_r3_58 += 0xFF;
        }
        sub_80DF024(0x33, var_r1_46 >> 8, var_r2_52 >> 8, var_r3_58 >> 8, temp_r4_9);
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_80800DC;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F648.s\"");
#else
s32 sub_807DC8C(void *);                        /* extern */
u8 sub_8080168(void *);                             /* extern */
extern s32 sub_80801A0;

void sub_807F648(void *arg0) {
    u8 temp_r2_12;
    void *temp_r4_8;

    temp_r4_8 = (*(void **)((s8 *)(arg0) + (8)));
    temp_r2_12 = sub_8080168(temp_r4_8);
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r4_8) + (8)))) + (0x12)))) {
        if (temp_r2_12 == 0) {
            sub_807DC8C(arg0);
            return;
        }
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_80801A0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F680.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_807F680(void *arg0) {
    s32 temp_r1_27;
    u16 temp_r0_14;
    void *temp_r2_8;

    temp_r2_8 = (*(void **)((s8 *)(arg0) + (8)));
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0) {
        temp_r0_14 = (*(u16 *)((s8 *)(arg0) + (0x10))) - 1;
        (*(u16 *)((s8 *)(arg0) + (0x10))) = temp_r0_14;
        if ((temp_r0_14 << 0x10) == 0) {
            (*(u8 *)((s8 *)(temp_r2_8) + (0x76))) = (u8) (-0x39 & (*(u8 *)((s8 *)(temp_r2_8) + (0x76))));
        }
    } else {
        temp_r1_27 = (*(s32 *)((s8 *)(temp_r2_8) + (0x40)));
        if ((temp_r1_27 >= (s32) (*(s32 *)((s8 *)(temp_r2_8) + (0x18)))) && (temp_r1_27 <= 0xC00)) {
            sub_8082E1C(temp_r2_8, 0, 0, 0);
            (*(s32 *)((s8 *)(arg0) + (4))) = 0;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F6D0.s\"");
#else
s32 sub_8116610(s32);                           /* extern */

void sub_807F6D0(void) {
    sub_8116610((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x248))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F6EC.s\"");
#else
s32 sub_81165CC(s32, s32);                      /* extern */

void sub_807F6EC(s32 arg0) {
    sub_81165CC((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x248))), arg0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F708.s\"");
#else
s32 sub_81151E4(s32, u8, u16, u16, s32, s32, s32, s32); /* extern */

void sub_807F708(u8 arg0, u16 arg1, u16 arg2, u16 arg3, s32 arg4) {
    sub_81151E4((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x248))), arg0, arg1, arg2, (s32) arg3, (s32) (u16) arg4, 0, 0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F754.s\"");
#else
s32 sub_81151E4(s32, u8, u16, u16, s32, s32, s32, s32); /* extern */

void sub_807F754(u8 arg0, u16 arg1, u16 arg2) {
    sub_81151E4((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x248))), arg0, arg1, arg2, 0xFF, 0x6000 & *(u16 *)0x0300034C, 0, 0);
}
#endif

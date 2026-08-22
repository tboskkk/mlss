#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8112064 needs.

asm_unified(".include \"asm/macros.inc\"");


int sub_8082E1C();
extern s32 sub_811254C;

extern s32 sub_8111CA8;

void sub_8112064(void *arg0) {
    if ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x10;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8111CA8;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811208C.s\"");
#else
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
s32 sub_8111E30(void *, s32, s32);              /* extern */
extern s32 sub_8111C24;

void sub_811208C(void *arg0) {
    s32 var_r0_13;
    s32 var_r0_21;
    s32 var_r3_27;
    void *temp_r2_10;

    temp_r2_10 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)));
    var_r0_13 = (*(s32 *)((s8 *)(temp_r2_10) + (0xD8)));
    if (var_r0_13 < 0) {
        var_r0_13 += 0xFF;
    }
    var_r0_21 = (*(s32 *)((s8 *)(temp_r2_10) + (0xDC)));
    if (var_r0_21 < 0) {
        var_r0_21 += 0xFF;
    }
    var_r3_27 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r3_27 < 0) {
        var_r3_27 += 0xFF;
    }
    sub_808843C(arg0, var_r0_13 >> 8, var_r0_21 >> 8, var_r3_27 >> 8, 0x100);
    sub_8111E30(arg0, 0x380, 0xA4);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8111C24;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81120E4.s\"");
#else
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
s32 sub_8111E30(void *, s32, s32);              /* extern */
extern s32 sub_8111C24;

void sub_81120E4(void *arg0) {
    s32 var_r0_13;
    s32 var_r0_21;
    s32 var_r3_27;
    void *temp_r2_10;

    temp_r2_10 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)));
    var_r0_13 = (*(s32 *)((s8 *)(temp_r2_10) + (0xD8)));
    if (var_r0_13 < 0) {
        var_r0_13 += 0xFF;
    }
    var_r0_21 = (*(s32 *)((s8 *)(temp_r2_10) + (0xDC)));
    if (var_r0_21 < 0) {
        var_r0_21 += 0xFF;
    }
    var_r3_27 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r3_27 < 0) {
        var_r3_27 += 0xFF;
    }
    sub_808843C(arg0, var_r0_13 >> 8, var_r0_21 >> 8, var_r3_27 >> 8, 0x100);
    sub_8111E30(arg0, 0x280, 0x3C);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8111C24;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811213C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8112498;

void sub_811213C(void *arg0) {
    void *temp_r2_18;

    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
        sub_8082E1C(arg0, 0xD, 0, 0);
        temp_r2_18 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_18) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_18) + (0x12)))) | 2);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8112498;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112174.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_8087CE4(void *);                        /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */

void sub_8112174(void *arg0) {
    s32 var_r0_20;
    s32 var_r1_14;
    s32 var_r3_27;

    if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
        var_r1_14 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_14 < 0) {
            var_r1_14 += 0xFF;
        }
        var_r0_20 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r0_20 < 0) {
            var_r0_20 += 0xFF;
        }
        var_r3_27 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_27 < 0) {
            var_r3_27 += 0xFF;
        }
        sub_80DF024(0x264C, var_r1_14 >> 8, (var_r0_20 >> 8) - 1, (var_r3_27 >> 8) - 1, arg0);
        (*(s32 *)((s8 *)(arg0) + (0xA8))) = 4;
    }
    (*(s32 *)((s8 *)(arg0) + (0xA8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0xA8))) - 1);
    sub_8087CE4(arg0);
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x79)))) {
        sub_807C298(arg0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81121E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112268.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81122D0.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_811254C;

void sub_81122D0(void *arg0) {
    void *temp_r2_19;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0xD, 0, 0);
        temp_r2_19 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_19) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_19) + (0x12)))) | 2);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_811254C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811230C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_811230C(void *arg0) {
    if ((0 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) != 1) {
        sub_8082E1C(arg0, 1, 0x2057, 0);
    } else {
        sub_8082E1C(arg0, 1, 0x2028, 0);
    }
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0x081125C9;
}
#endif

void sub_8112350(s32 arg0) {
    void *temp_r2_11;
    void *temp_r2_24;

    temp_r2_11 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x80)));
    if ((6 & (*(u8 *)((s8 *)(temp_r2_11) + (0x7E)))) == 2) {
        (*(s32 *)((s8 *)(temp_r2_11) + (0x54))) = arg0;
    }
    temp_r2_24 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x84)));
    if ((temp_r2_24 != NULL) && ((6 & (*(u8 *)((s8 *)(temp_r2_24) + (0x7E)))) == 2)) {
        (*(s32 *)((s8 *)(temp_r2_24) + (0x54))) = arg0;
    }
}

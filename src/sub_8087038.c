#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8087038 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087038.s\"");
#else
void sub_8087038(void *arg0) {
    void *temp_r0_13;
    void *temp_r0_9;
    void *temp_r2_10;

    temp_r0_9 = *(void **)0x03000FD8;
    temp_r2_10 = (*(void **)((s8 *)(temp_r0_9) + (0x70)));
    temp_r0_13 = (*(void **)((s8 *)(temp_r0_9) + (0x74)));
    if ((((6 & (*(u8 *)((s8 *)(temp_r2_10) + (0x7E)))) != 2) || ((*(s32 *)((s8 *)((temp_r2_10 + 8)) + (0x4C))) == 0)) && (((6 & (*(u8 *)((s8 *)(temp_r0_13) + (0x7E)))) != 2) || ((*(s32 *)((s8 *)((temp_r0_13 + 8)) + (0x4C))) == 0))) {
        (*(s8 *)((s8 *)(temp_r2_10) + (0x7C))) = 0;
        (*(s8 *)((s8 *)((temp_r2_10 + 0x7C)) + (1))) = 0;
        (*(s8 *)((s8 *)(temp_r0_13) + (0x7C))) = 0;
        (*(s8 *)((s8 *)((temp_r0_13 + 0x7C)) + (1))) = 0;
        (*(u8 *)((s8 *)(temp_r2_10) + (0x81))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r2_10) + (0x81))));
        (*(u8 *)((s8 *)(temp_r0_13) + (0x81))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r0_13) + (0x81))));
        (*(s32 *)((s8 *)(arg0) + (4))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80870B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087124.s\"");
#else
s32 sub_8086D80();                                  /* extern */
s32 sub_810D738(void *, void *, s32, s32, s32);     /* extern */
extern s32 sub_8087524;

s32 sub_8087124(void *arg0, void *arg1) {
    s32 var_r0_10;
    s32 var_r0_21;
    s32 var_r2_38;
    void *temp_r1_35;
    void *var_r0_43;

    var_r0_10 = sub_8086D80();
    if (var_r0_10 == 0) {
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
            var_r0_21 = 0x08032012;
        } else {
            var_r0_21 = 0x08032013;
        }
        var_r0_10 = sub_810D738(arg1, arg0, 0, 0, var_r0_21);
        if (var_r0_10 <= 0) {
            temp_r1_35 = (*(void **)((s8 *)(arg0) + (0x28)));
            if (temp_r1_35 != NULL) {
                var_r2_38 = 0;
                if (arg0 != (temp_r1_35 + 8)) {
                    var_r0_43 = (*(void **)((s8 *)(temp_r1_35) + (0x38)));
                    if (var_r0_43 != NULL) {
                        if (arg0 != var_r0_43) {
loop_9:
                            var_r0_43 = (*(void **)((s8 *)(var_r0_43) + (0x30)));
                            if (var_r0_43 != NULL) {
                                if (arg0 == var_r0_43) {
                                    var_r2_38 = 1;
                                } else {
                                    goto loop_9;
                                }
                            }
                            goto block_12;
                        }
                        goto block_13;
                    }
block_12:
                    if (var_r2_38 != 0) {
                        goto block_13;
                    }
                } else {
block_13:
                    (*(s32 *)((s8 *)(arg0) + (0x80))) = 0;
                    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8087524;
                }
            }
            var_r0_10 = 0;
        }
    }
    return var_r0_10;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80871A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808722C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_808842C(void *, s32, s32);              /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_8087B34;

void sub_808722C(void *arg0) {
    s32 var_r0_9;
    s32 var_r2_17;
    s32 var_r2_29;
    void *temp_r2_52;

    var_r0_9 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r0_9 < 0) {
        var_r0_9 += 0xFF;
    }
    var_r2_17 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r2_17 < 0) {
        var_r2_17 += 0xFF;
    }
    sub_808843C(arg0, (var_r0_9 >> 8) - 0x40, var_r2_17 >> 8, 0, 0x100);
    var_r2_29 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r2_29 < 0) {
        var_r2_29 += 0xFF;
    }
    sub_808842C(arg0, 0x700, (var_r2_29 >> 8) + 0x18);
    sub_8082E1C(arg0, 0, ~M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) + *(u16 *)0x084FB814, 0);
    temp_r2_52 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u8 *)((s8 *)(temp_r2_52) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_52) + (0x12))) | 0x10);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8087B34;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80872A8.s\"");
#else
s32 sub_807FF48(s32 *, void *);             /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_807DD38;

void sub_80872A8(void *arg0) {
    s32 temp_r0_35;
    s32 temp_r5_12;
    s32 var_r0_27;
    void *temp_r1_8;
    void *temp_r2_48;

    temp_r1_8 = (*(void **)((s8 *)(arg0) + (0x28)));
    temp_r5_12 = M2C_ERROR(/* unknown instruction: ldsh $r5, ($mem_loc_fictive_) */);
    if (temp_r5_12 == 0) {
        (*(u8 *)((s8 *)(temp_r1_8) + (0x111))) = (u8) ((*(u8 *)((s8 *)(temp_r1_8) + (0x111))) | 1);
        sub_807FF48(&sub_807DD38, arg0);
        (*(s32 *)((s8 *)(arg0) + (0xA8))) = temp_r5_12;
        var_r0_27 = 0x08087BA1;
        goto block_5;
    }
    temp_r0_35 = (*(s32 *)((s8 *)(arg0) + (0xA8)));
    if (temp_r0_35 > 0) {
        (*(s32 *)((s8 *)(arg0) + (0xA8))) = (s32) (temp_r0_35 - 1);
        return;
    }
    sub_8082E1C(arg0, 0, -1, 0);
    temp_r2_48 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u8 *)((s8 *)(temp_r2_48) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_48) + (0x12))));
    var_r0_27 = 0;
block_5:
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = var_r0_27;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087318.s\"");
#else
s32 sub_808842C(void *, s32, s32);              /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
s32 sub_8088560(void *);                        /* extern */

void sub_8087318(void *arg0, s32 arg1, s32 arg2) {
    s32 var_r1_11;
    s32 var_r2_17;

    var_r1_11 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r1_11 < 0) {
        var_r1_11 += 0xFF;
    }
    var_r2_17 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r2_17 < 0) {
        var_r2_17 += 0xFF;
    }
    sub_808843C(arg0, var_r1_11 >> 8, var_r2_17 >> 8, 0, 0x100);
    sub_808842C(arg0, arg2, arg1);
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    sub_8088560(arg0);
}
#endif

s32 sub_80970B8(s32);                           /* extern */
s32 sub_8097F30(s32);                           /* extern */

void sub_8087360(void) {
    void *temp_r2_8;

    temp_r2_8 = *(void **)0x03000FD8;
    if (0x80 & (*(u8 *)((s8 *)(temp_r2_8) + (0xC)))) {
        sub_8097F30((*(s32 *)((s8 *)(temp_r2_8) + (0x7C))) + 8);
        return;
    }
    sub_80970B8((*(s32 *)((s8 *)(temp_r2_8) + (0x7C))) + 8);
}

s32 sub_807B7A8();                              /* extern */
s32 sub_807FE40(void *);                        /* extern */

void sub_808738C(void *arg0) {
    if (arg0 != NULL) {
        sub_807B7A8();
        sub_807FE40(arg0);
        if ((u32) (*(u8 *)((s8 *)(arg0) + (0xF4))) <= 5U) {
            (*(s32 *)((s8 *)(arg0) + (0xF0))) = 0;
        }
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80873B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087444.s\"");
#else
s32 sub_807FF48(s32 *, void *);             /* extern */
s32 sub_8086700(void *);                        /* extern */
extern s32 sub_8087C20;

s32 sub_8087444(void *arg0) {
    void *temp_r5_8;
    void *var_r1_9;

    temp_r5_8 = (*(void **)((s8 *)(arg0) + (0x28)));
    var_r1_9 = (*(void **)((s8 *)(temp_r5_8) + (0)));
    if (var_r1_9 != NULL) {
        do {
            if (2 & (*(u8 *)((s8 *)(var_r1_9) + (0x111)))) {
                sub_807FF48(&sub_8087C20, var_r1_9);
            } else {
                sub_8086700(var_r1_9 + 8);
            }
            var_r1_9 = (*(void **)((s8 *)(var_r1_9) + (0)));
        } while (var_r1_9 != temp_r5_8);
    }
    if (2 & (*(u8 *)((s8 *)(temp_r5_8) + (0x111)))) {
        sub_807FF48(&sub_8087C20, temp_r5_8);
    } else {
        sub_8086700(arg0);
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80874B4.s\"");
#else
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_8087C4C;

void sub_80874B4(void *arg0) {
    void *temp_r1_9;
    void *temp_r2_10;

    temp_r1_9 = arg0 + 0x84;
    temp_r2_10 = (*(void **)((s8 *)(arg0) + (0x28)));
    (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) (*(s32 *)((s8 *)(temp_r2_10) + (0xD8)));
    (*(s32 *)((s8 *)(temp_r1_9) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_10) + (0xDC)));
    (*(s32 *)((s8 *)((temp_r1_9 + 4)) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_10) + (0xE0)));
    (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
    (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x800;
    (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
    sub_8085B38(arg0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8087C4C;
}
#endif

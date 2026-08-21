#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163BB8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163BB8.s\"");
#else
u32 sub_8163BB8(void) {
    *(u16*)0x0300102C = 0;
    return 0;
}
#endif

s32 sub_8163BC4(void **arg0, s32 arg1) {
    s32 var_r3_8;
    void *var_r2_7;

    var_r2_7 = *arg0;
    var_r3_8 = 0;
    if (var_r2_7 != NULL) {
        do {
            if ((*(s32 *)((s8 *)(var_r2_7) + (0))) == arg1) {
                var_r3_8 += 1;
            }
            var_r2_7 = (*(void **)((s8 *)(var_r2_7) + (8)));
        } while (var_r2_7 != NULL);
    }
    return var_r3_8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163BE4.s\"");
#else
void sub_8163BE4(void *arg0) {
    void *temp_r0_14;
    void *temp_r0_28;
    void *temp_r1_11;
    void *temp_r2_10;

loop_11:
    if ((*(void **)((s8 *)(arg0) + (0))) != NULL) {
        temp_r2_10 = (*(void **)((s8 *)(arg0) + (0)));
        temp_r1_11 = (*(void **)((s8 *)(temp_r2_10) + (4)));
        if (temp_r1_11 != NULL) {
            temp_r0_14 = (*(void **)((s8 *)(temp_r2_10) + (8)));
            if (temp_r0_14 != NULL) {
                (*(void **)((s8 *)(temp_r1_11) + (8))) = temp_r0_14;
                (*(void **)((s8 *)((*(void **)((s8 *)(temp_r2_10) + (8)))) + (4))) = (void *) (*(void **)((s8 *)(temp_r2_10) + (4)));
            } else {
                (*(void **)((s8 *)(temp_r1_11) + (8))) = temp_r0_14;
                (*(void **)((s8 *)(arg0) + (4))) = (void *) (*(void **)((s8 *)(temp_r2_10) + (4)));
            }
        } else {
            temp_r0_28 = (*(void **)((s8 *)(temp_r2_10) + (8)));
            if (temp_r0_28 != NULL) {
                (*(void **)((s8 *)(temp_r0_28) + (4))) = temp_r1_11;
            } else {
                (*(void **)((s8 *)(arg0) + (4))) = temp_r0_28;
            }
            (*(void **)((s8 *)(arg0) + (0))) = (*(void **)((s8 *)(temp_r2_10) + (8)));
        }
        (*(s32 *)((s8 *)(arg0) + (8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (8))) - 1);
        if (temp_r2_10 != NULL) {
            (*(s32 (**)(void *, s32))((s8 *)((*(void **)((s8 *)(temp_r2_10) + (0xC)))) + (0xC)))(temp_r2_10 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 3);
        }
        goto loop_11;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163C40.s\"");
#else
void sub_8163C40(void *arg0, void *arg1) {
    void *temp_r0_12;
    void *temp_r0_26;
    void *temp_r1_9;

    temp_r1_9 = (*(void **)((s8 *)(arg1) + (4)));
    if (temp_r1_9 != NULL) {
        temp_r0_12 = (*(void **)((s8 *)(arg1) + (8)));
        if (temp_r0_12 != NULL) {
            (*(void **)((s8 *)(temp_r1_9) + (8))) = temp_r0_12;
            (*(void **)((s8 *)((*(void **)((s8 *)(arg1) + (8)))) + (4))) = (void *) (*(void **)((s8 *)(arg1) + (4)));
        } else {
            (*(void **)((s8 *)(temp_r1_9) + (8))) = temp_r0_12;
            (*(void **)((s8 *)(arg0) + (4))) = (void *) (*(void **)((s8 *)(arg1) + (4)));
        }
    } else {
        temp_r0_26 = (*(void **)((s8 *)(arg1) + (8)));
        if (temp_r0_26 != NULL) {
            (*(void **)((s8 *)(temp_r0_26) + (4))) = temp_r1_9;
        } else {
            (*(void **)((s8 *)(arg0) + (4))) = temp_r0_26;
        }
        (*(void **)((s8 *)(arg0) + (0))) = (*(void **)((s8 *)(arg1) + (8)));
    }
    (*(s32 *)((s8 *)(arg0) + (8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (8))) - 1);
    if (arg1 != NULL) {
        (*(s32 (**)(void *, s32))((s8 *)((*(void **)((s8 *)(arg1) + (0xC)))) + (0xC)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 3);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163C94.s\"");
#else
void sub_8163C94(void *arg0, void *arg1) {
    void *temp_r0_12;
    void *temp_r0_26;
    void *temp_r1_9;

    temp_r1_9 = (*(void **)((s8 *)(arg1) + (4)));
    if (temp_r1_9 != NULL) {
        temp_r0_12 = (*(void **)((s8 *)(arg1) + (8)));
        if (temp_r0_12 != NULL) {
            (*(void **)((s8 *)(temp_r1_9) + (8))) = temp_r0_12;
            (*(void **)((s8 *)((*(void **)((s8 *)(arg1) + (8)))) + (4))) = (void *) (*(void **)((s8 *)(arg1) + (4)));
        } else {
            (*(void **)((s8 *)(temp_r1_9) + (8))) = temp_r0_12;
            (*(void **)((s8 *)(arg0) + (4))) = (void *) (*(void **)((s8 *)(arg1) + (4)));
        }
    } else {
        temp_r0_26 = (*(void **)((s8 *)(arg1) + (8)));
        if (temp_r0_26 != NULL) {
            (*(void **)((s8 *)(temp_r0_26) + (4))) = temp_r1_9;
        } else {
            (*(void **)((s8 *)(arg0) + (4))) = temp_r0_26;
        }
        (*(void **)((s8 *)(arg0) + (0))) = (*(void **)((s8 *)(arg1) + (8)));
    }
    (*(s32 *)((s8 *)(arg0) + (8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (8))) - 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163CD4.s\"");
#else
void sub_8163CD4(void *arg0, void *arg1) {
    void *temp_r0_18;
    void *var_r0_8;

    var_r0_8 = (*(void **)((s8 *)(arg0) + (0)));
    if (var_r0_8 != NULL) {
loop_1:
        if (var_r0_8 != arg1) {
            var_r0_8 = (*(void **)((s8 *)(var_r0_8) + (8)));
            if (var_r0_8 == NULL) {
                goto block_3;
            }
            goto loop_1;
        }
    } else {
block_3:
        temp_r0_18 = (*(void **)((s8 *)(arg0) + (0)));
        if (temp_r0_18 == NULL) {
            (*(void **)((s8 *)(arg1) + (8))) = temp_r0_18;
            (*(void **)((s8 *)(arg1) + (4))) = temp_r0_18;
            (*(void **)((s8 *)(arg0) + (4))) = arg1;
            (*(void **)((s8 *)(arg0) + (0))) = arg1;
        } else {
            (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (8))) = arg1;
            (*(void **)((s8 *)(arg1) + (4))) = (void *) (*(void **)((s8 *)(arg0) + (4)));
            (*(void **)((s8 *)(arg1) + (8))) = NULL;
            (*(void **)((s8 *)(arg0) + (4))) = arg1;
        }
        (*(s32 *)((s8 *)(arg0) + (8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (8))) + 1);
    }
}
#endif

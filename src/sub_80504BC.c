#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80504BC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80504BC.s\"");
#else
s32 init_fobj_803FEB8();                        /* extern */
s32 sub_80FB448(u8, s32, void *);               /* extern */

void *sub_80504BC(void *arg0, u8 arg3, s32 arg4) {
    init_fobj_803FEB8();
    (*(s32 *)((s8 *)(arg0) + (0x338))) = 0x08CDBFC8;
    sub_80FB448(arg3, arg4, arg0);
    (*(u8 *)((s8 *)(arg0) + (0x20C))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x20C))));
    (*(u8 *)((s8 *)(arg0) + (0x20F))) = (u8) (-3 & (*(u8 *)((s8 *)(arg0) + (0x20F))));
    (*(s32 *)((s8 *)(arg0) + (0x344))) = arg4;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050518.s\"");
#else
s32 sub_8047C68(void *, s32, u8);               /* extern */

void sub_8050518(void *arg0, s32 arg1, u8 arg2) {
    u8 temp_r5_10;
    void *temp_r4_16;

    temp_r5_10 = arg2;
    sub_8047C68(arg0, arg1, temp_r5_10);
    temp_r4_16 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_16 != NULL) {
        (*(s32 (**)(void *, s32, u8))((s8 *)(((*(s32 *)((s8 *)(temp_r4_16) + (0x338))) + 0x70)) + (4)))(temp_r4_16 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), arg1, temp_r5_10);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050554.s\"");
#else
s32 sub_8041FFC();                              /* extern */

void sub_8050554(void *arg0) {
    void *temp_r4_12;

    sub_8041FFC();
    temp_r4_12 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_12 != NULL) {
        (*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(temp_r4_12) + (0x338))) + 0x68)) + (4)))(temp_r4_12 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050584.s\"");
#else
s32 sub_8041A2C(void *, s32, s32, u8);          /* extern */

void sub_8050584(void *arg0, s32 arg1, s32 arg2, u8 arg3) {
    u8 temp_r5_11;
    void *temp_r4_17;

    temp_r5_11 = arg3;
    sub_8041A2C(arg0, arg1, arg2, temp_r5_11);
    temp_r4_17 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_17 != NULL) {
        (*(s32 (**)(void *, s32, s32, u8))((s8 *)(((*(s32 *)((s8 *)(temp_r4_17) + (0x338))) + 0x60)) + (4)))(temp_r4_17 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), arg1, arg2, temp_r5_11);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80505C4.s\"");
#else
s32 sub_8047CE8();                              /* extern */

void sub_80505C4(void *arg0) {
    void *temp_r4_12;

    sub_8047CE8();
    temp_r4_12 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_12 != NULL) {
        (*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(temp_r4_12) + (0x338))) + 0x58)) + (4)))(temp_r4_12 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80505F4.s\"");
#else
s32 sub_8041368();                              /* extern */

void sub_80505F4(void *arg0, s32 arg1, s32 arg2) {
    void *temp_r4_14;

    sub_8041368();
    temp_r4_14 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_14 != NULL) {
        (*(s32 (**)(void *, s32, s32))((s8 *)(((*(s32 *)((s8 *)(temp_r4_14) + (0x338))) + 0x50)) + (4)))(temp_r4_14 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), arg1, arg2);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805062C.s\"");
#else
s32 sub_80459C0();                              /* extern */

void sub_805062C(void *arg0) {
    void *temp_r4_12;

    sub_80459C0();
    temp_r4_12 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_12 != NULL) {
        (*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(temp_r4_12) + (0x338))) + 0x88)) + (4)))(temp_r4_12 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805065C.s\"");
#else
s32 sub_8040FA0();                              /* extern */

void sub_805065C(void *arg0) {
    void *temp_r4_12;

    sub_8040FA0();
    temp_r4_12 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_12 != NULL) {
        (*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(temp_r4_12) + (0x338))) + 0x48)) + (4)))(temp_r4_12 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805068C.s\"");
#else
s32 sub_8040CF4(void *, s16, s16);              /* extern */

void sub_805068C(void *arg0, s16 arg1, s16 arg2, s32 arg3) {
    s16 temp_r5_12;
    s16 temp_r6_10;
    void *temp_r4_19;

    temp_r6_10 = arg1;
    temp_r5_12 = arg2;
    sub_8040CF4(arg0, temp_r6_10, temp_r5_12);
    temp_r4_19 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_19 != NULL) {
        (*(s32 (**)(void *, s16, s16, s32))((s8 *)(((*(s32 *)((s8 *)(temp_r4_19) + (0x338))) + 0x40)) + (4)))(temp_r4_19 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), temp_r6_10, temp_r5_12, arg3);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80506D0.s\"");
#else
s32 sub_8047FDC();                              /* extern */

void sub_80506D0(void *arg0) {
    void *temp_r4_12;

    sub_8047FDC();
    temp_r4_12 = (*(void **)((s8 *)(arg0) + (0x344)));
    if ((temp_r4_12 != NULL) && (1 & (*(u8 *)((s8 *)(temp_r4_12) + (0x20C))))) {
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(temp_r4_12) + (0x338)))) + (0x24)))(temp_r4_12 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050710.s\"");
#else
s32 sub_8040020();                              /* extern */

void sub_8050710(void *arg0) {
    void *temp_r4_12;

    sub_8040020();
    temp_r4_12 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_12 != NULL) {
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(temp_r4_12) + (0x338)))) + (0x2C)))(temp_r4_12 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050740.s\"");
#else
s32 sub_8040AE0();                              /* extern */

void sub_8050740(void *arg0, s32 arg1) {
    void *temp_r4_13;

    sub_8040AE0();
    temp_r4_13 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_13 != NULL) {
        (*(s32 (**)(void *, s32))((s8 *)((*(void **)((s8 *)(temp_r4_13) + (0x338)))) + (0x34)))(temp_r4_13 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), arg1);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050774.s\"");
#else
s32 sub_80409F4();                              /* extern */

void sub_8050774(void *arg0) {
    void *temp_r4_12;

    sub_80409F4();
    temp_r4_12 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_12 != NULL) {
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(temp_r4_12) + (0x338)))) + (0x1C)))(temp_r4_12 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80507A4.s\"");
#else
s32 sub_80403C4();                              /* extern */

void sub_80507A4(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *temp_r4_15;

    sub_80403C4();
    temp_r4_15 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r4_15 != NULL) {
        (*(s32 (**)(void *, s32, s32, s32))((s8 *)((*(void **)((s8 *)(temp_r4_15) + (0x338)))) + (0x14)))(temp_r4_15 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), arg1, arg2, arg3);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80507E0.s\"");
#else
s32 sub_80E9958(s32, s32, s32, s32);            /* extern */

void sub_80507E0(void *arg0) {
    void *temp_r1_35;

    sub_80E9958(*(s32 *)0x03000FC0 + 0x38C, 0, ((u32) ((*(s32 *)((s8 *)(arg0) + (0x22C))) << 0xA) >> 0x14) + 0x960, 0);
    if (0x10 & (*(u8 *)((s8 *)(arg0) + (0x33E)))) {
        temp_r1_35 = (*(void **)((s8 *)(arg0) + (0x344)));
        (*(u8 *)((s8 *)(temp_r1_35) + (0x20C))) = (u8) ((*(u8 *)((s8 *)(temp_r1_35) + (0x20C))) | 1);
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x338)))) + (0x24)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050850.s\"");
#else
void sub_8050850(void *arg0, s32 arg1) {
    void *temp_r2_17;

    (*(s32 *)((s8 *)(arg0) + (0x338))) = 0x08CDBF28;
    temp_r2_17 = (*(void **)((s8 *)(arg0) + (0x344)));
    if (temp_r2_17 != NULL) {
        (*(s32 (**)(void *, s32))((s8 *)((*(void **)((s8 *)(temp_r2_17) + (0x338)))) + (0xC)))(temp_r2_17 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 3);
    }
    (*(s32 *)((s8 *)(arg0) + (0x338))) = 0x08CDBDE8;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8081C54 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8081F84;

void sub_8081C54(struct Entity *arg0) {
    if (!(1 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0->unk08) + (0x28)))) + (0x111))))) {
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8081F84;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081C7C.s\"");
#else
s32 sub_807FF48(s32 *, s32);                /* extern */
s32 sub_80E3D1C();                              /* extern */
extern s32 sub_8081A68;
void sub_80FC91C(void *arg0);                   /* extern */

void sub_8081C7C(void *arg0) {
    sub_80E3D1C();
    sub_807FF48((s32 *) &sub_80FC91C, 0);
    (*(s8 *)((s8 *)(*(void **)0x03000FD8) + (0x10))) = 4;
    *(u8 *)0x03000BD4 |= 0x10;
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8081A68;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081CC0.s\"");
#else
s32 sub_807FF48(s32 *, s32);                /* extern */
s32 sub_80E3D1C();                              /* extern */
extern s32 sub_80821C4;
void sub_80FC91C(void *arg0);                   /* extern */

void sub_8081CC0(void *arg0) {
    sub_80E3D1C();
    sub_807FF48((s32 *) &sub_80FC91C, 0);
    (*(s8 *)((s8 *)(*(void **)0x03000FD8) + (0x10))) = 4;
    *(u8 *)0x03000BD4 |= 0x10;
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_80821C4;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081D04.s\"");
#else
s32 sub_8081444(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_808842C(void *, s32, s32);              /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_8082204;

void sub_8081D04(void *arg0) {
    s32 var_r0_15;
    s32 var_r0_23;
    s32 var_r2_35;
    void *temp_r2_12;
    void *temp_r2_51;
    void *temp_r4_9;

    temp_r4_9 = (*(void **)((s8 *)(arg0) + (8)));
    sub_8081444(temp_r4_9);
    temp_r2_12 = (*(void **)((s8 *)(temp_r4_9) + (0x28)));
    var_r0_15 = (*(s32 *)((s8 *)(temp_r2_12) + (0xD8)));
    if (var_r0_15 < 0) {
        var_r0_15 += 0xFF;
    }
    var_r0_23 = (*(s32 *)((s8 *)(temp_r2_12) + (0xDC)));
    if (var_r0_23 < 0) {
        var_r0_23 += 0xFF;
    }
    sub_808843C(temp_r4_9, var_r0_15 >> 8, var_r0_23 >> 8, 0, 0x100);
    var_r2_35 = (*(s32 *)((s8 *)(temp_r4_9) + (0x40)));
    if (var_r2_35 < 0) {
        var_r2_35 += 0xFF;
    }
    sub_808842C(temp_r4_9, 0x600, (var_r2_35 >> 8) + 0x20);
    sub_8082E1C(temp_r4_9, 5, 0, 0);
    temp_r2_51 = (*(void **)((s8 *)(temp_r4_9) + (8)));
    (*(u8 *)((s8 *)(temp_r2_51) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_51) + (0x12)))) | 2);
    (*(s16 *)((s8 *)(arg0) + (0x10))) = 0x14;
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8082204;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081D84.s\"");
#else
s32 sub_8082898();                              /* extern */
s32 sub_8082AAC();                              /* extern */

void sub_8081D84(s32 arg0) {
    u16 *var_r4_11;
    u16 *var_r4_23;
    u16 temp_r0_16;
    u16 temp_r0_22;
    u16 temp_r0_32;
    u16 temp_r0_39;

    var_r4_11 = (*(u16 **)((s8 *)(((arg0 * 0x2C) + 0x08500A98)) + (0x14)));
    if (var_r4_11 != NULL) {
loop_2:
        temp_r0_16 = *var_r4_11;
        var_r4_11 += 2;
        if (temp_r0_16 != 0) {
            if (temp_r0_16 == 0xFFFF) {
                temp_r0_22 = *var_r4_11;
                var_r4_23 = var_r4_11 + 2;
                switch (temp_r0_22) {               /* irregular */
                case 0x0:
                    break;
                default:
loop_7:
                    sub_8082898();
                    temp_r0_32 = *var_r4_23;
                    var_r4_23 += 2;
                    if (temp_r0_32 != 0) {
                        if (temp_r0_32 == 0xFFFF) {
                        case 0xFFFF:
loop_9:
                            temp_r0_39 = *var_r4_23;
                            var_r4_23 += 2;
                            if (temp_r0_39 != 0) {
                                sub_8082AAC();
                                goto loop_9;
                            }
                        } else {
                            goto loop_7;
                        }
                    }
                    break;
                }
            } else {
                goto loop_2;
            }
        }
    }
}
#endif

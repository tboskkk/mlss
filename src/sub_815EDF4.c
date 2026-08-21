#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815EDF4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EDF4.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_815EDF4(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCB90;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EE08.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_815EE08(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCB90;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    sub_815F97C(arg0, 0);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EE30.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_815EE30(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCB50;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EE44.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_815EE44(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCB50;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (0x38))) = (s32) (*(s32 *)((s8 *)(arg0) + (4)));
    (*(s32 *)((s8 *)(arg0) + (0x3C))) = (s32) (*(s32 *)((s8 *)(arg0) + (8)));
    sub_815F97C(arg0, 0);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EE74.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_815EE74(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCBD0;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EE88.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_815EE88(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCBD0;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    sub_815F97C(arg0, 0);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EEB0.s\"");
#else
s32 get_surface_height_at_x(s32, s32);              /* extern */
void *sub_815FA3C(void *);                          /* extern */
s32 sub_815FA70(void *, s32);                   /* extern */
s32 sub_815FAFC(void *);                        /* extern */

s32 sub_815EEB0(void *arg0, s32 arg1, s32 arg4) {
    u8 temp_r0_11;
    u8 temp_r0_49;
    void *temp_r0_70;

    temp_r0_11 = (u8) arg4;
    switch (temp_r0_11) {                           /* switch 1; irregular */
    case 3:                                         /* switch 1 */
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x34)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
        (*(u8 *)((s8 *)(arg0) + (0x24))) = 1U;
        break;
    case 4:                                         /* switch 1 */
        sub_815FAFC(arg0);
        break;
    case 12:                                        /* switch 1 */
        (*(u8 *)((s8 *)(arg0) + (0x24))) = 2U;
        break;
    default:                                        /* switch 1 */
        temp_r0_49 = (*(u8 *)((s8 *)(arg0) + (0x24)));
        switch (temp_r0_49) {                       /* switch 2; irregular */
        case 1:                                     /* switch 2 */
            (*(s32 *)((s8 *)(arg0) + (8))) = (s32) ((s32) (get_surface_height_at_x(arg1, (*(s32 *)((s8 *)(arg0) + (4)))) << 0x10) >> 8);
            break;
        case 2:                                     /* switch 2 */
            sub_815FA70(arg0, 0x3C);
            temp_r0_70 = sub_815FA3C(arg0);
            (*(u8 *)((s8 *)(temp_r0_70) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r0_70) + (0x12)))) | 2);
            break;
        }
        break;
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EF44.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_815EF44(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCC10;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EF58.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_815EF58(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCC10;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    sub_815F97C(arg0, 0);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EF80.s\"");
#else
s32 sub_815FAA4();                              /* extern */

void sub_815EF80(void *arg0, void *arg1) {
    void *temp_r2_10;

    sub_815FAA4();
    temp_r2_10 = (*(void **)((s8 *)(arg0) + (0x34)));
    if (temp_r2_10 != NULL) {
        (*(s16 *)((s8 *)(temp_r2_10) + (0))) = (s16) ((s32) ((*(s32 *)((s8 *)(arg0) + (4))) - (*(s32 *)((s8 *)(arg1) + (0)))) >> 8);
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34)))) + (2))) = (s16) ((s32) ((*(s32 *)((s8 *)(arg0) + (8))) - (*(s32 *)((s8 *)(arg1) + (4)))) >> 8);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EFAC.s\"");
#else
s32 sub_8021308();                              /* extern */
s32 sub_815FB14(void *, s32);                   /* extern */

void sub_815EFAC(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCC50;
    if ((*(s32 *)((s8 *)(arg0) + (0x34))) != 0) {
        sub_8021308();
        (*(s32 *)((s8 *)(arg0) + (0x34))) = 0;
    }
    sub_815FB14(arg0, arg1);
}
#endif

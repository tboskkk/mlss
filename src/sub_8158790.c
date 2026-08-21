#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158790 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158790.s\"");
#else
s32 sub_8158790(void *arg0) {
    s32 var_r4_19;
    u8 temp_r0_10;
    void *temp_r2_24;
    void *temp_r2_39;

    temp_r0_10 = (*(u8 *)((s8 *)(arg0) + (0x24)));
    switch (temp_r0_10) {                           /* irregular */
    case 1:
        var_r4_19 = 0;
        temp_r2_24 = (*(void **)((s8 *)(*(void **)0x03001018) + (0x1C98)));
        if ((s32) ((*(s32 *)((s8 *)(arg0) + (4))) - (*(s32 *)((s8 *)(temp_r2_24) + (4)))) < 0) {
            var_r4_19 = 1;
            (*(s8 *)((s8 *)(temp_r2_24) + (0x24))) = 6;
        }
        temp_r2_39 = (*(void **)((s8 *)(*(void **)0x03001018) + (0x1C9C)));
        if ((s32) ((*(s32 *)((s8 *)(arg0) + (4))) - (*(s32 *)((s8 *)(temp_r2_39) + (4)))) < 0) {
            var_r4_19 += 1;
            (*(s8 *)((s8 *)(temp_r2_39) + (0x24))) = 6;
        }
        if (var_r4_19 > 1) {
            (*(u8 *)((s8 *)(arg0) + (0x24))) = 2U;
        }
    default:
        return 0;
    case 2:
        return 1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158808.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_8158808(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC770;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815881C.s\"");
#else
s32 sub_815F8F4();                              /* extern */

void *sub_815881C(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC770;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 1;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158844.s\"");
#else
s32 sub_8199F30();                                  /* extern */

s32 sub_8158844(void *arg0, s32 *arg3) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (4))) - M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    (*(s32 *)((s8 *)(arg0) + (4))) = temp_r0_11;
    if ((s32) (temp_r0_11 - *arg3) < 0xFFFFE000) {
        (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + (((0x1FF & sub_8199F30()) + 0x200) << 8));
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158884.s\"");
#else
s32 sub_815F97C(void *, s32);                   /* extern */
void *sub_815FA3C(void *);                          /* extern */

void sub_8158884(void *arg0) {
    sub_815F97C(arg0, 0);
    if ((*(u8 *)((s8 *)(arg0) + (0x26))) == 1) {
        (*(s16 *)((s8 *)(sub_815FA3C(arg0)) + (4))) = 0x140;
        (*(s16 *)((s8 *)(sub_815FA3C(arg0)) + (6))) = 0x140;
    }
    (*(s32 *)((s8 *)(arg0) + (8))) = 0xA000;
    (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x34)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81588C8.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_81588C8(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC930;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81588DC.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_8199F30();                                  /* extern */

void *sub_81588DC(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC930;
    (*(u16 *)((s8 *)(arg0) + (0x3C))) = arg2;
    (*(s16 *)((s8 *)(arg0) + (0x34))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x38))) = 0;
    (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + (((0x1FF & sub_8199F30()) + 0x200) << 8));
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158920.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_8158920(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC970;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158954.s\"");
#else
s32 sub_815FB14(void *, s32);                   /* extern */

void sub_8158954(void *arg0, s32 arg1) {
    void *temp_r2_11;

    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC9B0;
    temp_r2_11 = (*(void **)((s8 *)(arg0) + (0x34)));
    if (temp_r2_11 != NULL) {
        (*(s32 (**)(void *, s32))((s8 *)((*(void **)((s8 *)(temp_r2_11) + (0x30)))) + (0xC)))(temp_r2_11 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 3);
    }
    sub_815FB14(arg0, arg1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158988.s\"");
#else
s32 sub_815FAA4();                              /* extern */

void sub_8158988(void) {
    sub_815FAA4();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158994.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81589A8.s\"");
#else
s32 sub_815F8F4();                              /* extern */

void *sub_81589A8(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC7B0;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 0;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81589D0.s\"");
#else
s32 sub_815FAA4();                              /* extern */

void sub_81589D0(void) {
    sub_815FAA4();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81589DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81589F0.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_81589F0(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC7F0;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 0;
    sub_815F97C(arg0, 0);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158A20.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158A50.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158A64.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_8158A64(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC830;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s16 *)((s8 *)(arg0) + (0x36))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x38))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 2;
    sub_815F97C(arg0, 0);
    return arg0;
}
#endif

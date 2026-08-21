#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80AC4F8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC4F8.s\"");
#else
extern s32 sub_80AC610;

void sub_80AC4F8(void *arg0) {
    s32 temp_r1_16;
    void *temp_r0_10;

    temp_r0_10 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x74)));
    temp_r1_16 = 6 & (*(u8 *)((s8 *)(temp_r0_10) + (0x7E)));
    if ((temp_r1_16 == 2) || (temp_r1_16 == 4)) {
        (*(s32 **)((s8 *)((temp_r0_10 + 8)) + (0x4C))) = &sub_80AC610;
    }
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0x080AC685;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC530.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4(void *);                        /* extern */

void sub_80AC530(void) {
    s32 temp_r1_29;
    void *temp_r2_40;
    void *temp_r2_47;
    void *temp_r4_9;
    void *temp_r5_11;

    temp_r4_9 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x74)));
    temp_r5_11 = temp_r4_9 + 8;
    sub_8087CE4(temp_r5_11);
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) > 0x1FFF) {
        play_sfx_80195B4(0x53, -1);
        temp_r1_29 = 6 & (*(u8 *)((s8 *)(temp_r4_9) + (0x7E)));
        if ((temp_r1_29 == 2) || (temp_r1_29 == 4)) {
            sub_8082E1C(temp_r5_11, 1, 0x205F, 0);
            temp_r2_40 = (*(void **)((s8 *)(temp_r5_11) + (8)));
            (*(u8 *)((s8 *)(temp_r2_40) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_40) + (0x12))));
        }
        temp_r2_47 = (*(void **)((s8 *)(temp_r5_11) + (8)));
        (*(u8 *)((s8 *)(temp_r2_47) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_47) + (0x12))) | 0x10);
        (*(s32 *)((s8 *)(temp_r5_11) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC5A4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4(void *);                        /* extern */
extern s32 sub_80A6F78;

void sub_80AC5A4(void *arg0) {
    s32 temp_r1_26;
    void *temp_r2_38;
    void *temp_r2_44;
    void *temp_r4_10;
    void *temp_r5_12;

    temp_r4_10 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x70)));
    temp_r5_12 = temp_r4_10 + 8;
    sub_8087CE4(temp_r5_12);
    if (0x20 & (*(u8 *)((s8 *)(temp_r4_10) + (0x81)))) {
        temp_r1_26 = 6 & (*(u8 *)((s8 *)(temp_r4_10) + (0x7E)));
        if ((temp_r1_26 == 2) || (temp_r1_26 == 4)) {
            sub_8082E1C(temp_r5_12, 0, -1, 0);
            temp_r2_38 = (*(void **)((s8 *)(temp_r5_12) + (8)));
            (*(u8 *)((s8 *)(temp_r2_38) + (0x11))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_38) + (0x11))));
            temp_r2_44 = (*(void **)((s8 *)(temp_r5_12) + (8)));
            (*(u8 *)((s8 *)(temp_r2_44) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_44) + (0x12))));
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80A6F78;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC610.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC688.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC71C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC950.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

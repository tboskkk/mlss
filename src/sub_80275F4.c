#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80275F4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80275F4.s\"");
#else
s32 process_disable(s32);                       /* extern */
s32 sub_80273E4(void *);                        /* extern */
s32 sub_805A1A8(s32);                           /* extern */
s32 sub_8122BA0(s32, s32);                      /* extern */

void sub_80275F4(void *arg0) {
    process_disable(*(s32 *)0x03000D44);
    sub_801A6B0();
    (*(u16 *)((s8 *)(arg0) + (0x1FA))) = (u16) *(u16 *)0x03000BE8;
    sub_80193B4(0, 0x80, 8);
    (*(u8 *)((s8 *)(arg0) + (0xFC))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0xFC))) | 1);
    sub_80273E4(arg0);
    sub_805A1A8((*(s32 *)((s8 *)(arg0) + (0x304))));
    process_disable((*(s32 *)((s8 *)(arg0) + (0x304))));
    sub_8018B78(2, 0);
    (*(s8 *)((s8 *)(arg0) + (0))) = 2;
    *(s8 *)0x03000C24 = 2;
    if (*(s32 *)0x03000C78 == 0) {
        *(s32 *)0x03000C78 = 0x0800063C;
    }
    sub_8122BA0(-1, 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027688.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802772C.s\"");
#else
s32 sub_80273E4(void *);                        /* extern */
s32 sub_8057B58(s32, s32);                      /* extern */
s32 sub_812F5A4(u32, u32);                      /* extern */

void sub_802772C(void *arg0) {
    s32 temp_r0_32;
    u8 temp_r1_56;

    sub_801A6B0();
    (*(u16 *)((s8 *)(arg0) + (0x1FA))) = (u16) *(u16 *)0x03000BE8;
    sub_80193B4(0, 0x80, 8);
    (*(u8 *)((s8 *)(arg0) + (0xFC))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0xFC))) | 1);
    sub_80273E4(arg0);
    temp_r0_32 = (*(s32 *)((s8 *)(arg0) + (0x304)));
    if (temp_r0_32 != 0) {
        sub_8057B58(temp_r0_32, 3);
        (*(s32 *)((s8 *)(arg0) + (0x304))) = 0;
    }
    sub_8018B78(2, 0);
    (*(s8 *)((s8 *)(arg0) + (0))) = 2;
    *(s8 *)0x03000C24 = 2;
    if (*(s32 *)0x03000C78 == 0) {
        *(s32 *)0x03000C78 = 0x0800063C;
    }
    temp_r1_56 = (*(u8 *)((s8 *)(arg0) + (0x12D)));
    sub_812F5A4((u32) (temp_r1_56 << 0x1E) >> 0x1F, (u32) (temp_r1_56 << 0x1C) >> 0x1E);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80277C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027A04.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

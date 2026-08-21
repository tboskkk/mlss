#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816BEC4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816BEC4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816C21C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816C74C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816C834.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816C970.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816CDA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D040.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D4A8.s\"");
#else
s32 sub_8162F20(s32);                           /* extern */
s32 sub_81631DC(s32);                               /* extern */
s32 sub_8163238(s32, s32, s32, s32);            /* extern */

void sub_816D4A8(void *arg0) {
    s32 var_r2_29;
    u16 temp_r1_11;

    temp_r1_11 = (*(u16 *)((s8 *)(arg0) + (0x68)));
    switch (temp_r1_11) {                           /* irregular */
    case 0:
        var_r2_29 = 0;
block_12:
        sub_8163238((*(s32 *)((s8 *)(arg0) + (0x40))), 0, var_r2_29, 0x14);
block_13:
        (*(u16 *)((s8 *)(arg0) + (0x68))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x68))) + 1);
        break;
    case 1:
        if ((sub_81631DC((*(s32 *)((s8 *)(arg0) + (0x40)))) << 0x18) != 0) {
            goto block_13;
        }
        break;
    case 2:
        if (8 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)))) {
            play_sfx_80195B4(0x37, -1);
            var_r2_29 = 0xFFFF6000;
            goto block_12;
        }
        break;
    case 3:
        if ((sub_81631DC((*(s32 *)((s8 *)(arg0) + (0x40)))) << 0x18) != 0) {
            (*(s32 *)((s8 *)(arg0) + (0x54))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x58)));
        }
        break;
    }
    sub_8162F20((*(s32 *)((s8 *)(arg0) + (0x40))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D538.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D580.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D608.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_816D608(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD238;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D6C0.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_816D6C0(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD248;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D6D4.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */

void sub_816D6D4(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x88))) != 0) {
        (*(s32 *)((s8 *)(arg0) + (0x88))) = 0;
        stop_sfx_80195A8(0x97);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D6F0.s\"");
#else
void sub_816D6F0(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x88))) == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x88))) = 1;
        play_sfx_80195B4(0x97, -1);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D710.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_816D710(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD258;
    sub_8163B60();
}
#endif

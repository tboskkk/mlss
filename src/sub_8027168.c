#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8027168 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027168.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027378.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80273E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027558.s\"");
#else
s32 process_disable(s32);                       /* extern */
s32 sub_80273E4(void *);                        /* extern */
s32 sub_805A1A8(s32);                           /* extern */
s32 sub_8122BA0(s32, s32);                      /* extern */

void sub_8027558(void *arg0) {
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
    sub_8122BA0((s32) ((*(u8 *)((s8 *)(arg0) + (0x12C))) << 0x18) >> 0x1A, 0);
}
#endif

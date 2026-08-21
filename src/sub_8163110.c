#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163110 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163110.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163134.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_816316C(void *arg0) {
    if (1 & (*(u16 *)((s8 *)(arg0) + (0x20)))) {
        (*(s16 *)((s8 *)((void *)0x02000010) + (0))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x18)));
        (*(s16 *)((s8 *)((void *)0x02000010) + (2))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x1C)));
    }
    if (2 & (*(u16 *)((s8 *)(arg0) + (0x20)))) {
        (*(s16 *)((s8 *)((void *)0x02000014) + (0))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x18)));
        (*(s16 *)((s8 *)((void *)0x02000014) + (2))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x1C)));
    }
    if (4 & (*(u16 *)((s8 *)(arg0) + (0x20)))) {
        (*(s16 *)((s8 *)((void *)0x02000018) + (0))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x18)));
        (*(s16 *)((s8 *)((void *)0x02000018) + (2))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x1C)));
    }
    if (8 & (*(u16 *)((s8 *)(arg0) + (0x20)))) {
        (*(s16 *)((s8 *)((void *)0x0200001C) + (0))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x18)));
        (*(s16 *)((s8 *)((void *)0x0200001C) + (2))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x1C)));
    }
}

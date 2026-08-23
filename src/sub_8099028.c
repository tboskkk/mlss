#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8099028 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8099034(void *arg0);
s32 sub_8099028(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8099034;
    return 1;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8099050;

void sub_8099034(void *arg0) {
    sub_8082E1C(arg0, 0xF, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8099050;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099050.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80990B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80991DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8087540(void *);                        /* extern */

void sub_80993A0(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8087540(arg0);
    }
}

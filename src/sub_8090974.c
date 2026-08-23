#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8090974 needs.

asm_unified(".include \"asm/macros.inc\"");



void sub_8090A24(void *arg0);

s32 sub_8082E1C();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090974.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80909CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8090A24(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8090A50(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x2000, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_8090AB4(void *);                        /* extern */
s32 sub_8090B1C(void *);                        /* extern */
extern s32 sub_8087540;

s32 sub_8090A78(void *arg0) {
    s16 temp_r1_11;

    temp_r1_11 = (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC)));
    if (temp_r1_11 == -1) {
        sub_8090B1C(arg0);
    } else if (temp_r1_11 == -2) {
        sub_8090AB4(arg0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_8087540;
    return 1;
}

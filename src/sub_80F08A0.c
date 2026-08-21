#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F08A0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F08A0.s\"");
#else
s32 sub_80F08A0(void *arg0, s32 *arg2) {
    void *temp_r3_6;

    temp_r3_6 = (*(void **)((s8 *)(arg0) + (0x14)));
    (*(u8 *)((s8 *)(temp_r3_6) + (0x208))) = (u8) ((-2 & (*(u8 *)((s8 *)(temp_r3_6) + (0x208)))) | (*arg2 & 1));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F08C0.s\"");
#else
u8 sub_8116B48(s32, s32, s32);                      /* extern */
u8 sub_811795C(s32, s32, s32);                      /* extern */

s32 sub_80F08C0(s32 arg0, s32 *arg1, void *arg2) {
    s32 var_r1_32;
    u8 var_r0_14;

    var_r0_14 = sub_8116B48(0, 3, 0);
    if (var_r0_14 == 0) {
        var_r0_14 = sub_811795C(0, 0, 1);
        if (var_r0_14 == 0) {
            var_r0_14 = sub_811795C(1, 0, 1);
        }
    }
    var_r1_32 = 0;
    if (var_r0_14 == 0) {
        var_r1_32 = 1;
    }
    if (var_r1_32 == (*(s32 *)((s8 *)(arg2) + (0)))) {
        *arg1 = (*(s32 *)((s8 *)(arg2) + (4)));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0914.s\"");
#else
s32 sub_8028F2C(s32);                           /* extern */
s32 sub_8028F40(s32);                           /* extern */

s32 sub_80F0914(void *arg0, s32 *arg2) {
    s32 temp_r2_7;

    temp_r2_7 = *arg2;
    switch (temp_r2_7) {                            /* irregular */
    case 0:
        sub_8028F40((*(s32 *)((s8 *)(arg0) + (0x14))));
        break;
    case 1:
        sub_8028F2C((*(s32 *)((s8 *)(arg0) + (0x14))));
        break;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0938.s\"");
#else
s32 sub_8029070(s32);                           /* extern */
s32 sub_80290CC(s32);                           /* extern */

s32 sub_80F0938(void *arg0, s32 *arg2) {
    if (*arg2 != -0x20) {
        sub_80290CC((*(s32 *)((s8 *)(arg0) + (0x14))));
    } else {
        sub_8029070((*(s32 *)((s8 *)(arg0) + (0x14))));
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F095C.s\"");
#else
s32 sub_8029170(s32);                           /* extern */
s32 sub_80291C8(s32);                           /* extern */

s32 sub_80F095C(void *arg0, s32 *arg2) {
    s32 temp_r1_7;

    temp_r1_7 = *arg2;
    if (temp_r1_7 >= 0) {
        if (temp_r1_7 > 1) {
            if (temp_r1_7 != 2) {

            } else {
                sub_80291C8((*(s32 *)((s8 *)(arg0) + (0x14))));
            }
        } else {
            sub_8029170((*(s32 *)((s8 *)(arg0) + (0x14))));
        }
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0984.s\"");
#else
u8 sub_8027378(s32);                                /* extern */

s32 sub_80F0984(void *arg0, void *arg1) {
    if (sub_8027378((*(s32 *)((s8 *)(arg0) + (0x14)))) != 1) {
        return 1;
    }
    (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x14)));
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F09A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F09E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0A30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

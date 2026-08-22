#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809B738 needs.

asm_unified(".include \"asm/macros.inc\"");


int sub_807C298();

void sub_809B738(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_807C298(arg0);
    }
}

void sub_809B754(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_807C298(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B770.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B7D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B89C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
s32 sub_810DD7C(void *, void *, s32);           /* extern */
extern s32 sub_809B920;

void sub_809B89C(void *arg0) {
    s32 var_r1_29;
    s32 var_r2_35;
    void *temp_r2_21;
    void *temp_r4_9;

    temp_r4_9 = (*(void **)((s8 *)(arg0) + (0x2C)));
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 2, 0x40C2, 0);
        temp_r2_21 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_21) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_21) + (0x12)))) | 2);
        var_r1_29 = (*(s32 *)((s8 *)(temp_r4_9) + (0x10)));
        if (var_r1_29 < 0) {
            var_r1_29 += 0xFF;
        }
        var_r2_35 = (*(s32 *)((s8 *)(temp_r4_9) + (0x14)));
        if (var_r2_35 < 0) {
            var_r2_35 += 0xFF;
        }
        sub_80DF024(0x1202, var_r1_29 >> 8, var_r2_35 >> 8, 0, temp_r4_9);
        if (((*(s32 *)((s8 *)(temp_r4_9) + (0x40))) == 0) && ((0x3E & (*(u8 *)((s8 *)(temp_r4_9) + (0x76)))) == 2)) {
            sub_810DD7C(arg0, temp_r4_9, 0xFF);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809B920;
    }
}
#endif

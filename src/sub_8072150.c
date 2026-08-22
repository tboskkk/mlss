#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8072150 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_807C298();
s32 sub_807F47C();
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072150.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_807223C(void *arg0) {
    s32 temp_r2_12;
    s32 var_r0_20;
    s32 var_r0_36;

    temp_r2_12 = (*(s32 *)((s8 *)(arg0) + (0xA0))) + 0x14;
    (*(s32 *)((s8 *)(arg0) + (0xA0))) = temp_r2_12;
    if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
        var_r0_20 = (*(s32 *)((s8 *)(arg0) + (0x10))) - temp_r2_12;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_20;
        if (var_r0_20 < 0) {
            var_r0_20 += 0xFF;
        }
        if ((s32) (var_r0_20 >> 8) <= -0x20) {
            sub_807F47C(arg0);
            goto block_8;
        }
    } else {
        var_r0_36 = (*(s32 *)((s8 *)(arg0) + (0x10))) + temp_r2_12;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_36;
        if (var_r0_36 < 0) {
            var_r0_36 += 0xFF;
        }
        if ((s32) (var_r0_36 >> 8) > 0xFF) {
block_8:
            sub_807C298(arg0);
        }
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072294.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80722E0.s\"");
#else
s32 sub_810DD7C(void *, s32, s32);          /* extern */
extern s32 sub_80722F8;

void sub_80722E0(void *arg0, s32 arg1) {
    sub_810DD7C(arg0, arg1, 0xFF);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80722F8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80722F8.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_807F47C(void *);                        /* extern */

void sub_80722F8(void *arg0) {
    s32 temp_r2_12;
    s32 var_r0_20;
    s32 var_r0_34;

    temp_r2_12 = (*(s32 *)((s8 *)(arg0) + (0xA0))) + 0x14;
    (*(s32 *)((s8 *)(arg0) + (0xA0))) = temp_r2_12;
    if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
        var_r0_20 = (*(s32 *)((s8 *)(arg0) + (0x10))) - temp_r2_12;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_20;
        if (var_r0_20 < 0) {
            var_r0_20 += 0xFF;
        }
        if ((s32) (var_r0_20 >> 8) <= -0x20) {
            goto block_8;
        }
    } else {
        var_r0_34 = (*(s32 *)((s8 *)(arg0) + (0x10))) + temp_r2_12;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_34;
        if (var_r0_34 < 0) {
            var_r0_34 += 0xFF;
        }
        if ((s32) (var_r0_34 >> 8) > 0xFF) {
block_8:
            sub_807F47C(arg0);
            sub_807C298(arg0);
        }
    }
}
#endif

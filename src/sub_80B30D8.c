#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80B30D8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B30D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B3170.s\"");
#else
s32 sub_8087CE4(void *);                        /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_80AD188;

void sub_80B3170(void *arg0) {
    s32 temp_r0_51;
    s32 temp_r0_54;
    s32 var_r1_23;
    s32 var_r2_29;
    s32 var_r3_35;
    void *temp_r4_11;
    void *temp_r5_13;
    void *temp_r7_14;

    temp_r4_11 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x74)));
    temp_r5_13 = temp_r4_11 + 8;
    temp_r7_14 = (*(void **)((s8 *)(arg0) + (0x2C)));
    sub_8087CE4(temp_r5_13);
    if (0x20 & (*(u8 *)((s8 *)(temp_r4_11) + (0x81)))) {
        var_r1_23 = (*(s32 *)((s8 *)(temp_r5_13) + (0x10)));
        if (var_r1_23 < 0) {
            var_r1_23 += 0xFF;
        }
        var_r2_29 = (*(s32 *)((s8 *)(temp_r5_13) + (0x14)));
        if (var_r2_29 < 0) {
            var_r2_29 += 0xFF;
        }
        var_r3_35 = (*(s32 *)((s8 *)(temp_r5_13) + (0x18)));
        if (var_r3_35 < 0) {
            var_r3_35 += 0xFF;
        }
        sub_80DF024(0x2FF9, var_r1_23 >> 8, var_r2_29 >> 8, var_r3_35 >> 8, temp_r5_13);
        play_sfx_80195B4(0x30, -1);
        temp_r0_51 = (*(s32 *)((s8 *)(temp_r5_13) + (0x10))) + 0x12000;
        (*(s32 *)((s8 *)(temp_r5_13) + (0x10))) = temp_r0_51;
        (*(s32 *)((s8 *)(temp_r5_13) + (0x38))) = temp_r0_51;
        temp_r0_54 = (*(s32 *)((s8 *)(temp_r7_14) + (0x14)));
        (*(s32 *)((s8 *)(temp_r5_13) + (0x14))) = temp_r0_54;
        (*(s32 *)((s8 *)(temp_r5_13) + (0x3C))) = temp_r0_54;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80AD188;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B31F0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B325C.s\"");
#else
s32 sub_807C298(s32);                           /* extern */
s32 sub_810D00C();                              /* extern */

void sub_80B325C(s32 arg0) {
    void *temp_r0_9;

    temp_r0_9 = *(void **)0x03000FD8;
    if (((*(s32 *)((s8 *)((*(void **)((s8 *)(temp_r0_9) + (0x70)))) + (0x54))) == 0) && ((*(s32 *)((s8 *)(((*(s32 *)((s8 *)(temp_r0_9) + (0x74))) + 8)) + (0x4C))) == 0)) {
        sub_810D00C();
        sub_807C298(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B328C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B32FC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B3390.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

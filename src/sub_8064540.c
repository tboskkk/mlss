#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8064540 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064540.s\"");
#else
u32 sub_8064540(u32* param_1) {
    u8* puVar1;
    u32 uVar2;
    
    puVar1 = (u8*)param_1[2];
    uVar2 = puVar1[0x12] & 8;
    if (uVar2 != 0) {
        param_1[0x13] = 0;
    }
    return param_1[0];
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064558.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_8064D20;

void sub_8064558(void *arg0) {
    s32 var_r1_25;
    s32 var_r1_54;
    s32 var_r2_31;
    s32 var_r2_60;
    s32 var_r3_37;
    s32 var_r3_66;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
            sub_8082E1C(arg0, 3, 0, 0);
            var_r1_25 = (*(s32 *)((s8 *)(arg0) + (0x38)));
            if (var_r1_25 < 0) {
                var_r1_25 += 0xFF;
            }
            var_r2_31 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
            if (var_r2_31 < 0) {
                var_r2_31 += 0xFF;
            }
            var_r3_37 = (*(s32 *)((s8 *)(arg0) + (0x40)));
            if (var_r3_37 < 0) {
                var_r3_37 += 0xFF;
            }
            sub_80DF024(0x1284, var_r1_25 >> 8, var_r2_31 >> 8, var_r3_37 >> 8, arg0);
        } else {
            sub_8082E1C(arg0, 4, 0, 0);
            var_r1_54 = (*(s32 *)((s8 *)(arg0) + (0x38)));
            if (var_r1_54 < 0) {
                var_r1_54 += 0xFF;
            }
            var_r2_60 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
            if (var_r2_60 < 0) {
                var_r2_60 += 0xFF;
            }
            var_r3_66 = (*(s32 *)((s8 *)(arg0) + (0x40)));
            if (var_r3_66 < 0) {
                var_r3_66 += 0xFF;
            }
            sub_80DF024(0x128D, var_r1_54 >> 8, var_r2_60 >> 8, var_r3_66 >> 8, arg0);
        }
        if ((*(s32 *)((s8 *)(arg0) + (0xA0))) == 0) {
            play_sfx_80195B4(0x28, -1);
        } else {
            play_sfx_80195B4(0x28, -1);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8064D20;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064614.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064908.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806499C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064A10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064ADC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8064540 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8064540(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

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

u8 sub_801B1C8(void *, s32, s32);                   /* extern */
s32 sub_807FC08(s32 *, s32 *, s32 *, s32);      /* extern */
extern s32 sub_806499C;

void sub_8064908(struct Entity *arg0) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 temp_r2_29;
    s32 var_r0_27;
    s32 var_r0_37;
    s32 var_r0_44;
    void *temp_r1_9;

    temp_r1_9 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u16 *)((s8 *)(temp_r1_9) + (0xC))) = (u16) ((*(u16 *)((s8 *)(temp_r1_9) + (0xC))) + 0x1000);
    if (sub_801B1C8(*(void **)0x03000E18, 0x03000E60, 0x03000E64) == 1) {
        var_r0_27 = *(s32 *)0x03000E60;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_27;
        temp_r2_29 = *(s32 *)0x03000E64;
        (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r2_29;
        if (var_r0_27 < 0) {
            var_r0_27 += 0xFF;
        }
        sp0 = var_r0_27 >> 8;
        var_r0_37 = (*(s32 *)((s8 *)(arg0) + (0x14)));
        if (var_r0_37 < 0) {
            var_r0_37 += 0xFF;
        }
        sp4 = var_r0_37 >> 8;
        var_r0_44 = temp_r2_29;
        if (var_r0_44 < 0) {
            var_r0_44 += 0xFF;
        }
        sp8 = (var_r0_44 >> 8) + 0x20;
        sub_807FC08(&sp0, &sp4, &sp8, 0);
        return;
    }
    free_heap_8018DA8(*(void **)0x03000E18);
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0;
    arg0->handler = &sub_806499C;
}

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

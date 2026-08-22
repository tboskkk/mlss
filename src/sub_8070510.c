#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8070510 needs.

asm_unified(".include \"asm/macros.inc\"");


extern s32 sub_8070C5C;
int sub_8082E1C();

extern s32 sub_8070534;

void sub_8070510(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s32 *)((s8 *)(arg0) + (0xA8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0xA8))) + 1);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8070534;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070534.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80705B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070604.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070670.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80706B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80706E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070710.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
extern s32 sub_8070C84;

void sub_8070710(void *arg0) {
    s32 temp_r0_13;
    s32 var_r4_18;

    temp_r0_13 = (*(s32 *)((s8 *)(arg0) + (0xA4))) + 0x1CC;
    (*(s32 *)((s8 *)(arg0) + (0xA4))) = temp_r0_13;
    var_r4_18 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - temp_r0_13;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r4_18;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0xA0))) + ((s32) ((*(s32 *)((s8 *)(arg0) + (0xA4))) * (*(s32 *)((s8 *)(arg0) + (0x88)))) / (s32) (*(s32 *)((s8 *)(arg0) + (0x84)))));
    if (var_r4_18 < 0) {
        var_r4_18 += 0xFF;
    }
    if ((s32) (var_r4_18 >> 8) <= -0x20) {
        stop_sfx_80195A8(0x11C);
        (*(s32 *)((s8 *)(arg0) + (0x10))) = 0x12C00;
        (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xDC)));
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8070C84;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80707B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070818.s\"");
#else
s32 sub_807F47C(void *);                        /* extern */
s32 sub_8086D80();                                  /* extern */
extern s32 sub_806F704;

s32 sub_8070818(void *arg0) {
    s32 var_r0_13;
    s32 var_r0_22;
    s32 var_r0_8;
    void *temp_r2_33;

    var_r0_8 = sub_8086D80();
    if (var_r0_8 == 0) {
        sub_807F47C(arg0);
        var_r0_13 = (*(s32 *)((s8 *)(arg0) + (0x10)));
        if (var_r0_13 < 0) {
            var_r0_13 += 0xFF;
        }
        (*(s16 *)((s8 *)(arg0) + (0xAE))) = (s16) (var_r0_13 >> 8);
        var_r0_22 = (*(s32 *)((s8 *)(arg0) + (0x14)));
        if (var_r0_22 < 0) {
            var_r0_22 += 0xFF;
        }
        (*(s16 *)((s8 *)(arg0) + (0xB0))) = (s16) (var_r0_22 >> 8);
        temp_r2_33 = (*(void **)((s8 *)(arg0) + (0x28)));
        (*(s32 *)((s8 *)(arg0) + (0xA4))) = (s32) ((*(s32 *)((s8 *)(temp_r2_33) + (0xD8))) - (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8));
        (*(s32 *)((s8 *)((arg0 + 0xA4)) + (4))) = (s32) ((*(s32 *)((s8 *)(temp_r2_33) + (0xDC))) - (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8));
        (*(s32 *)((s8 *)(arg0) + (0x8C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x8C))) + 0x3000);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806F704;
        var_r0_8 = 0;
    }
    return var_r0_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070890.s\"");
#else
s32 sub_810DD7C(void *, s32, s32);              /* extern */
extern s32 sub_806F508;

s32 sub_8070890(void *arg0) {
    sub_810DD7C(arg0, (*(s32 *)((s8 *)(arg0) + (0x2C))), 0xFF);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806F508;
    return 0;
}
#endif

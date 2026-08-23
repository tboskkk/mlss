#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8067A4C needs.

asm_unified(".include \"asm/macros.inc\"");



s32 sub_807C298();

extern s32 sub_80681EC;
int sub_810DD7C();

extern s32 sub_808750C;

void sub_8067A4C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + 0x200);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) - (*(s32 *)((s8 *)(arg0) + (0x8C))));
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x8C))) + 0x66);
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067A84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067C98.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067DC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067E4C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067F94.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806800C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8068058(void *arg0) {
    sub_810DD7C(arg0, (*(s32 *)((s8 *)(arg0) + (0x2C))), 0xFF);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80681EC;
    return 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068074.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80680A0.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806822C;

void sub_80680A0(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 6, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAE))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x9C)));
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806822C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80680D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_807C298(void *);                        /* extern */

void sub_8068124(void *arg0) {
    s32 var_r1_11;

    var_r1_11 = (*(s32 *)((s8 *)(arg0) + (0x10))) - (*(s32 *)((s8 *)(arg0) + (0x84)));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r1_11;
    if (var_r1_11 < 0) {
        var_r1_11 += 0xFF;
    }
    if ((s32) (var_r1_11 >> 8) < -0x20) {
        sub_807C298(arg0);
    }
}

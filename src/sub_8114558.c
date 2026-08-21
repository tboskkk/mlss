#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8114558 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_81140C0;
extern s32 sub_811458C;

void sub_8114558(void *arg0) {
    s32 *var_r1_21;
    s32 temp_r0_19;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x30)))) + (8)))) + (0x12)))) {
        temp_r0_19 = (*(s32 *)((s8 *)(arg0) + (0xA0))) - 1;
        (*(s32 *)((s8 *)(arg0) + (0xA0))) = temp_r0_19;
        var_r1_21 = &sub_81140C0;
        if (temp_r0_19 != 0) {
            var_r1_21 = &sub_811458C;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = var_r1_21;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811458C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81145C8.s\"");
#else
s32 sub_8087CE4(s32);                               /* extern */
extern s32 sub_81147B4;
extern s32 sub_81147D0;

void sub_81145C8(void *arg0) {
    s32 *var_r1_17;

    if ((sub_8087CE4((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x30)))) << 0x18) == 0) {
        var_r1_17 = &sub_81147B4;
        if ((*(s32 *)((s8 *)(arg0) + (0x9C))) != 0) {
            var_r1_17 = &sub_81147D0;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = var_r1_17;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81145F8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114680.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81146DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114760.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

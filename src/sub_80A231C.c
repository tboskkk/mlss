#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A231C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A231C.s\"");
#else
extern s32 sub_80A2374;

void sub_80A231C(void *arg0) {
    s32 temp_r1_21;
    u8 *temp_r2_36;
    void *temp_r3_10;

    temp_r3_10 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x74)));
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r3_10) + (0x10)))) + (0x12)))) {
        temp_r1_21 = 6 & (*(u8 *)((s8 *)(temp_r3_10) + (0x7E)));
        if ((temp_r1_21 == 2) || (temp_r1_21 == 4)) {
            (*(s16 *)((s8 *)(temp_r3_10) + (0x82))) = 0x4000;
            (*(s16 *)((s8 *)(temp_r3_10) + (0x86))) = 0;
            temp_r2_36 = (temp_r3_10 + 0x82) - 1;
            *temp_r2_36 &= -0x21;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80A2374;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A2374.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A2428.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A2560.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A2754.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A27F0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

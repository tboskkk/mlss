#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8114790 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8114790(void *arg0) {
    s32 temp_r2_11;

    temp_r2_11 = 0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)));
    if (temp_r2_11 == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = temp_r2_11;
        (*(s8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)))) + (0x113))) = (s8) temp_r2_11;
    }
}

s32 sub_811458C();                              /* extern */

void sub_81147B4(void *arg0) {
    sub_811458C();
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81147D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8114854(void *arg0) {
    void *temp_r1_15;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r1_15 = *(void **)0x03000FD8;
        (*(s32 *)((s8 *)((*(void **)((s8 *)(temp_r1_15) + (0x60)))) + (0x54))) = 0;
        (*(s32 *)((s8 *)((*(void **)((s8 *)(temp_r1_15) + (0x64)))) + (0x54))) = 0;
        sub_8082E1C(arg0, -1, -1, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811488C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81148B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_ybpa_process_8114B4C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

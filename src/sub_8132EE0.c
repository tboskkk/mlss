#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8132EE0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132EE0.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8132678;

void sub_8132EE0(void *arg0) {
    u16 temp_r0_11;

    temp_r0_11 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_11;
    if ((s32) (temp_r0_11 << 0x10) <= 0) {
        sub_8082E1C(arg0, 6, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8132678;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132F10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132F9C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8133100.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81331AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813321C.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_81332BC;

void sub_813321C(void *arg0) {
    s32 temp_r1_12;
    void *temp_r2_14;

    temp_r1_12 = (*(s32 *)((s8 *)(arg0) + (0x10))) - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r1_12;
    temp_r2_14 = (*(void **)((s8 *)(arg0) + (0x28)));
    if (temp_r1_12 <= (s32) ((*(s32 *)((s8 *)(temp_r2_14) + (0x40))) + 0xFFFFF600)) {
        sub_8082E1C(temp_r2_14 + 8, 0xA, 0, 0);
        play_sfx_80195B4(0x2E, -1);
        (*(s32 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x54))) = &sub_81332BC;
        sub_807C298(arg0);
    }
}
#endif

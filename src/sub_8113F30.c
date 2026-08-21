#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8113F30 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113F30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113FB4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811403C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81140C0.s\"");
#else
s32 sub_807F47C(s32);                           /* extern */
s32 sub_8082E1C(s32, s32, s32, s32);            /* extern */
s32 sub_80880C4(s32, s32);                      /* extern */
s32 sub_808843C(s32, s32, s32, s32, s32); /* extern */
extern s32 sub_8114528;

void sub_81140C0(void *arg0) {
    s32 temp_r4_10;

    temp_r4_10 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x30)));
    sub_808843C(temp_r4_10, M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */), 0x100);
    sub_80880C4(temp_r4_10, 0x400);
    sub_8082E1C(temp_r4_10, 7, 0, 0);
    sub_807F47C(temp_r4_10);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8114528;
}
#endif

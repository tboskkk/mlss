#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81396A8 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_81370C4();
s32 sub_81378CC();
s32 sub_81381D4();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81396A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_80473DC(void *);                        /* extern */

void sub_81396D8(s32 arg0, void *arg1, void *arg2) {
    if (0x40 & (*(u8 *)((s8 *)(arg1) + (0x214)))) {
        sub_80473DC(arg1);
    }
    (*(s32 (**)(s32, void *, void *))((s8 *)(arg2) + (4)))(arg0, arg1, arg2);
}

s32 sub_8137FA4(void *);                        /* extern */
s32 sub_81385A8(void *);                        /* extern */
extern s32 sub_8136A84;

void sub_8139708(s32 arg0, void *arg1, s32 **arg2) {
    sub_81370C4(arg1, 0xFF);
    sub_81378CC(arg1, 1, (*(s16 *)((s8 *)(arg1) + (0x1B8))) << 8, (*(s16 *)((s8 *)(arg1) + (0x1BA))) << 8);
    sub_8137FA4(arg1);
    sub_81381D4(arg1);
    sub_81385A8(arg1);
    *arg2 = &sub_8136A84;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139758.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_813729C(void *);                        /* extern */
s32 sub_8137A4C(void *, s32, s32, s32);         /* extern */
s32 sub_81382A8(void *);                        /* extern */
extern s32 sub_8139758;

void sub_81397CC(s32 arg0, void *arg1, s32 **arg2) {
    sub_813729C(arg1);
    sub_8137A4C(arg1, 0, (*(s16 *)((s8 *)(arg1) + (0x1B8))) << 8, (*(s16 *)((s8 *)(arg1) + (0x1BA))) << 8);
    sub_81382A8(arg1);
    *arg2 = &sub_8139758;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813980C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139880.s\"");
#else
s32 sub_81370C4(s32, s32);                      /* extern */
s32 sub_81378CC(s32, s32, s32, s32);            /* extern */
s32 sub_81381D4(s32);                           /* extern */
extern s32 sub_813980C;

void sub_8139880(s32 arg0, s32 arg1, s32 **arg2) {
    sub_81370C4(arg1, 0xFF);
    sub_81378CC(arg1, 1, M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) << 8, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */) << 8);
    sub_81381D4(arg1);
    *arg2 = &sub_813980C;
}
#endif

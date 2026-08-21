#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81394CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81394CC.s\"");
#else
s32 sub_81393D8();                              /* extern */

void sub_81394CC(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x2B6))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg1) + (0x2B6))));
    sub_81393D8();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81394EC.s\"");
#else
s32 sub_813946C();                              /* extern */

void sub_81394EC(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x2B6))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x2B6))) | 0x40);
    sub_813946C();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139508.s\"");
#else
s32 sub_8137550(void *, s32);                   /* extern */
s32 sub_81378CC(void *, s32, s32, s32);         /* extern */
s32 sub_8137FA4(void *);                        /* extern */
s32 sub_81381D4(void *);                        /* extern */
s32 sub_8138F64(s32, u16);                      /* extern */
extern s32 sub_8136A84;

void sub_8139508(s32 arg0, void *arg1, s32 **arg2) {
    sub_8137550(arg1, sub_8138F64(arg0, (*(u16 *)((s8 *)(arg1) + (0x134)))));
    sub_81378CC(arg1, 1, M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) << 8, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */) << 8);
    sub_8137FA4(arg1);
    sub_81381D4(arg1);
    *arg2 = &sub_8136A84;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813955C.s\"");
#else
s32 sub_8137550(void *, s32);                   /* extern */
s32 sub_81378CC(void *, s32, s32, s32);         /* extern */
s32 sub_81381D4(void *);                        /* extern */
s32 sub_8138F64(s32, u16);                      /* extern */
extern s32 sub_813980C;

void sub_813955C(s32 arg0, void *arg1, s32 **arg2) {
    sub_8137550(arg1, sub_8138F64(arg0, (*(u16 *)((s8 *)(arg1) + (0x134)))));
    sub_81378CC(arg1, 1, M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) << 8, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */) << 8);
    sub_81381D4(arg1);
    *arg2 = &sub_813980C;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81395AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139614.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813967C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

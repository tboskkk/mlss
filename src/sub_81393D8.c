#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81393D8 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_81387C8(void *, s32);                   /* extern */
s32 sub_8138B84(void *, s32);                   /* extern */
s32 sub_813B380(s32, void *);                   /* extern */
extern s32 sub_81397CC;

void sub_81393D8(s32 arg0, void *arg1) {
    sub_81387C8(arg1, 0);
    sub_8138B84(arg1, 0);
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_81397CC;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_81397CC;
    sub_813B380(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139420.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813946C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

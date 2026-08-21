#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81398C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81398C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81398FC.s\"");
#else
s32 sub_813B380(s32, void *);               /* extern */
extern s32 sub_8139508;
extern s32 sub_81396D8;

void sub_81398FC(s32 arg0, void *arg1) {
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8139508;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_8139508;
    (*(s32 **)((s8 *)(arg1) + (0x1AC))) = &sub_81396D8;
    sub_813B380(arg0, arg1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813993C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

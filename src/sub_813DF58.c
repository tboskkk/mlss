#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813DF58 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813DF58.s\"");
#else
void sub_813DF58(s32 arg0, void *arg1, s32 *arg2) {
    u16 temp_r0_12;

    temp_r0_12 = (*(u16 *)((s8 *)(arg1) + (0x1D4))) - 1;
    (*(u16 *)((s8 *)(arg1) + (0x1D4))) = temp_r0_12;
    if ((temp_r0_12 << 0x10) == 0) {
        (*(s8 *)((s8 *)(arg1) + (0x239))) = 0x7F;
        *arg2 = 0x0813DFF1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813DFA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8138944(void *, s32);                   /* extern */
s32 sub_8138FA4(void *, s32);                   /* extern */
s32 sub_8139030(void *, s32);                   /* extern */
s32 sub_81398C4(s32, void *);                   /* extern */
extern s32 sub_8139420;
void sub_813DFF8(s32 arg0, void *arg1)
{
  sub_8138944(arg1, 0);
  sub_8138FA4(arg1, 0xB);
  sub_8139030(arg1, 0);
  *((s32 (**)(s32, void *)) (((s8 *) arg1) + 0x198)) = sub_81398C4;
  *((s32 **) (((s8 *) arg1) + 0x1A0)) = &sub_8139420;
  *((s32 **) (((s8 *) arg1) + 0x1A4)) = &sub_8139420;
  *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) (((-8) & (*(((s8 *) arg1) + 0x214))) | 4);
  sub_81398C4(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E05C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E140.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E20C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E2A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E338.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E468.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E504.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

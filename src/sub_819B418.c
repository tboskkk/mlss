#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819B418 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_819B418();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B418.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B450.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B864.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_819AF88();                              /* extern */
s32 sub_819B31C();                              /* extern */
s32 sub_819B864();                              /* extern */

void sub_819B95C(void) {
    sub_819B31C();
    sub_819B864();
    sub_819AF88();
}

unsigned char sub_819B970(s32 arg0, s32 arg1)
{
  sub_819B418((u16) ((arg0 << 8) | arg1));
}

unsigned char sub_819B984(s32 arg0)
{
  sub_819B418((u16) ((arg0 << 8) | 0x1000));
}

char sub_819B99C(s32 arg0)
{
  sub_819B418((u16) ((arg0 << 8) | 0x2000));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B9B4.s\"");
#else
s32 sub_819B418(u16);                           /* extern */

void sub_819B9B4(s32 arg0, s32 arg1) {
    sub_819B418((u16) ((arg0 << 8) | 0xFFFF9000 | arg1));
}
#endif

volatile int sub_819B9D0(s32 arg0)
{
  sub_819B418((u16) (arg0 | 0x5000));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B9E8.s\"");
#else
s32 sub_819B418(u16);                           /* extern */

void sub_819B9E8(s32 arg0) {
    sub_819B418((u16) (arg0 | 0x6000));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819BA00.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

volatile short sub_819BA10(s32 arg0, s32 arg1)
{
  unsigned long long new_var;
  new_var = (unsigned long long) 0xFFFF8000;
  sub_819B418((u16) (((arg0 << 8) | new_var) | arg1));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819BA2C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819BABC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81C0F7E.s\"");
#else
void sub_81C0F7E(s32 (*arg3)()) {
    arg3();
}
#endif

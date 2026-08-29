#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_812F510 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8116620(s32);                               /* extern */
s32 sub_812F510(void *arg0)
{
  int new_var;
  new_var = (sub_8116620(*((s32 *) (((s8 *) arg0) + 0x20))) << 0x18) != 0;
  if (new_var)
  {
    return 1;
  }
  return 0;
}

s32 sub_81151E4(s32, s32, s32, s32, s32, s32, s32, s32); /* extern */

void sub_812F528(void *arg0) {
    sub_81151E4((*(s32 *)((s8 *)(arg0) + (0x20))), 4, 0, 8, 0xFFFF, 0xFFFF, 0, 0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812F550.s\"");
#else
s32 sub_81151E4(s32, s32, s32, s32, s32, s32, s32, s32); /* extern */

void sub_812F550(void *arg0) {
    *(s32 *)0x03000BD0 = -1;
    sub_81151E4((*(s32 *)((s8 *)(arg0) + (0x20))), 0, 0, 8, 0xFFFF, 0xFFFF, 0, 0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812F588.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_812A9A0(void *, s32, s32, s32, s32, s32); /* extern */

void sub_812F5A4(s32 arg0, s32 arg1) {
    sub_812A9A0(alloc_Zero(0xC8U, 0U, (s8 *)0x08211B20, 0U), 8, 0x08211B20, arg0, arg1, -2);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812F5D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812FC4C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81321B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81322D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

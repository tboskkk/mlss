#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8108B10 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108B10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8108B10;
void sub_8108B50(void *arg0)
{
  long new_var2;
  u16 temp_r0_13;
  s32 *new_var;
  new_var2 = *((u16 *) (((s8 *) arg0) + 0x10));
  if ((((s16) new_var2) == 0) || ((temp_r0_13, *((u16 *) (((s8 *) arg0) + 0x10)) = new_var2 - 1, ((new_var2 - 1) << 0x10) == 0)))
  {
    play_sfx_80195B4(0x151, -1);
    new_var = &sub_8108B10;
    *((s32 **) (((s8 *) arg0) + 4)) = new_var;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108B84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

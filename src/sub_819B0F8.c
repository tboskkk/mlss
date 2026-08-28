#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819B0F8 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_819B0F8(s32 arg0, s32 arg1)
{
  int new_var3;
  s32 new_var2;
  int new_var;
  new_var2 = *((s32 *) 0x03007FF0);
  new_var = 4 * arg0;
  *((s32 *) ((new_var3 = new_var2 + 0x4A4) + new_var)) = arg1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B110.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

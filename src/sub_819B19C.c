#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819B19C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_819B19C(s32 arg0)
{
  int new_var2;
  u8 *temp_r1_10;
  int new_var;
  new_var2 = (*((s32 *) 0x03007FF0)) + 0x494;
  temp_r1_10 = (u8 *) (new_var2 + arg0);
  new_var = (*temp_r1_10) | 1;
  *temp_r1_10 = new_var;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B1B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

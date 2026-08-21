#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81595FC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81595FC(void *arg0)
{
  s8 *new_var;
  u16 temp_r2_23;
  s8 *new_var2;
  new_var2 = (new_var = (s8 *) ((void *) 0x0300034C)) + 0x28;
  if (0x10 & (*((u16 *) new_var2)))
  {
    *((s32 *) (((s8 *) arg0) + 0x508)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x508))) + 0x400);
  }
  ;
  if (0x20 & (*((u16 *) (new_var + 0x28))))
  {
    *((s32 *) (((s8 *) arg0) + 0x508)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x508))) + 0xFFFFFC00);
  }
  if (0x80 & (*((u16 *) (new_var + 0x28))))
  {
    *((s32 *) (((s8 *) arg0) + 0x50C)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x50C))) + 0x400);
  }
  if (0x40 & (*((u16 *) (new_var + 0x28))))
  {
    *((s32 *) (((s8 *) arg0) + 0x50C)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x50C))) + 0xFFFFFC00);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159674.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81596E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159800.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

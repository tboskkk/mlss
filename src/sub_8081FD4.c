#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8081FD4 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 process_disable(s32);                       /* extern */
s32 sub_8081FB0(void *);                        /* extern */
void sub_8081FD4(void *arg0)
{
  u8 temp_r1_12;
  int new_var3;
  void *temp_r0_9;
  s8 *new_var;
  s32 new_var2;
  temp_r0_9 = *((void **) 0x03000FD8);
  temp_r1_12 = *((u8 *) (((s8 *) temp_r0_9) + 0x2BF));
  if (0x20 & temp_r1_12)
  {
    new_var = ((s8 *) temp_r0_9) + 0x2BF;
    new_var3 = -0x21;
    new_var3 = new_var3 & temp_r1_12;
    *((u8 *) new_var) = (u8) new_var3;
    process_disable(new_var2 = *((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + 0x244)));
    *((s32 (**)(void *)) (((s8 *) arg0) + 4)) = sub_8081FB0;
    sub_8081FB0(arg0);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808201C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082088.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

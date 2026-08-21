#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8081FD4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081FD4.s\"");
#else
void sub_8081FD4(void *arg0)
{
  u8 temp_r1_12;
  void *temp_r0_9;
  temp_r0_9 = *((void **) 0x03000FD8);
  ;
  if (0x20 & (*(((s8 *) temp_r0_9) + 0x2BF)))
  {
    *((u8 *) (((s8 *) temp_r0_9) + 0x2BF)) = (u8) ((-0x21) & (*(((s8 *) temp_r0_9) + 0x2BF)));
    process_disable(*((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + 0x244)));
    *((s32 (**)(void *)) (((s8 *) arg0) + 4)) = sub_8081FB0;
    sub_8081FB0(arg0);
  }
}
#endif

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

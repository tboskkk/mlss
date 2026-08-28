#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7D64 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80F7D64(void *arg0)
{
  void *temp_r2_6;
  s8 *new_var2;
  s8 *new_var;
  temp_r2_6 = (void *) (*((void **) (((s8 *) arg0) + 0x2C)));
  new_var = (s8 *) temp_r2_6;
  new_var2 = new_var + 0x179D;
  new_var = &(*((u8 *) (((s8 *) temp_r2_6) + 0x179D)));
  *((u8 *) new_var2) = (u8) (((-4) & (*new_var)) | 1);
  return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7D80.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7DFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

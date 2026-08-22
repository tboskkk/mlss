#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8199470 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_8199470(u32 param_1)
{
  u16 *ptr = (u16 *) 0x04000006;
  u8 val;
  *((u8 *) param_1) = *ptr;
  return *((u8 *) param_1);
}

s32 sub_81DA690(s16, s16);                          /* extern */

u32 sub_8199480(s16 arg0, s16 arg1) {
    return (u32) (sub_81DA690(arg0, arg1) << 0x10) >> 0x18;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199498.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81994EC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

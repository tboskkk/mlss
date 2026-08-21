#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8132E34 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132E34.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8132EE0;
void sub_8132E68(void *arg0)
{
  s32 new_var;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 5, 0, 0);
    new_var = *((s32 *) (((s8 *) arg0) + 0x9C));
    *((s16 *) (((s8 *) (arg0 + 0x9C)) + 0x10)) = (s16) new_var;
    play_sfx_80195B4(0xA0, -1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8132EE0;
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8132818;
void sub_8132EA8(void *arg0)
{
  u16 temp_r0_11;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    sub_8082E1C(arg0, 0xA, 0, 0);
    play_sfx_80195B4(0x9F, -1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8132818;
  }
}

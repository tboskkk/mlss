#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A1AB8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A1AB8.s\"");
#else
extern s32 sub_80A19F8;

void sub_80A1AB8(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xB2))) = 0xFE4D;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80A19F8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A1B64.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A1CC4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80884AC(void *);                        /* extern */
extern s32 sub_80A1DCC;
void sub_80A1D44(void *arg0)
{
  s32 temp_r1_26;
  void *temp_r2_55;
  void *temp_r4_10;
  void *temp_r5_12;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r5_12 = temp_r4_10 + 8;
  sub_80884AC(temp_r4_10 + 8);
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
  {
    temp_r1_26 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
    if ((temp_r1_26 == 2) || (temp_r1_26 == 4))
    {
      if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) temp_r5_12) + 0x28)))) + 0xEC))) == (-1))
      {
        sub_8082E1C(temp_r4_10 + 8, 4, 0x2000, 0);
      }
      else
      {
        sub_8082E1C(temp_r4_10 + 8, 4, 0x204D, 0);
      }
      temp_r2_55 = *((void **) (((s8 *) temp_r5_12) + 8));
      *((u8 *) (((s8 *) temp_r2_55) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_55) + 0x12))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80A1DCC;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A1DCC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A1F4C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

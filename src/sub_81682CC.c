#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81682CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81682CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168390.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168580.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816863C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816881C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168910.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168CAC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168D74.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168EB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8169440.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8161C9C(void *, s32, s32);              /* extern */
s32 sub_8163A6C(void *);                        /* extern */
s32 sub_8163E0C(s32, s32, s32, s32);                /* extern */
void sub_81694F0(void *arg0)
{
  s16 *var_r0_23;
  s32 temp_r2_11;
  s32 var_r1_15;
  u16 temp_r0_54;
  void *temp_r3_49;
  int new_var;
  sub_8163A6C(*((void **) (((s8 *) arg0) + 0xC)));
  temp_r2_11 = *((s32 *) (((s8 *) arg0) + 4));
  if (temp_r2_11 < ((s32) (*((s32 *) (((s8 *) arg0) + 0)))))
  {
    var_r1_15 = *((s32 *) (((s8 *) arg0) + 8));
    if (var_r1_15 != 0)
    {
      *((s32 *) (((s8 *) arg0) + 8)) = (s32) (var_r1_15 - 1);
      *((s32 *) (((s8 *) arg0) + 4)) = (s32) (temp_r2_11 + 4);
      var_r0_23 = (*((void **) (((s8 *) arg0) - -0xC))) + 0x56;
      var_r1_15 = 1;
    }
    else
    {
      new_var = temp_r2_11 + 1;
      *((s32 *) (((s8 *) arg0) + 4)) = (s32) new_var;
      var_r0_23 = (*((void **) (((s8 *) arg0) + 0xC))) + 0x56;
    }
    *var_r0_23 = (s16) var_r1_15;
    *((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0xC)))) + 0x18)) = sub_8163E0C(0x1000, 0xE000, (long) (*((s32 *) (((s8 *) arg0) + 0))), *((s32 *) (((s8 *) arg0) + 4)));
  }
  else
  {
    *((u16 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0xC)))) + 0x56)) = 0U;
  }
  temp_r3_49 = *((void **) (((s8 *) arg0) + 0xC));
  ;
  if ((*((u16 *) (((s8 *) temp_r3_49) + 0x56))) != (*((u16 *) (((s8 *) temp_r3_49) + 0x58))))
  {
    switch (*((u16 *) (((s8 *) temp_r3_49) + 0x56)))
    {
      case 0:
        sub_801E150(*((void **) (((s8 *) temp_r3_49) + 0x10)), 0xE, 0, 0, (s32) (*((u16 *) (((s8 *) temp_r3_49) + 0x56))));
        break;

      case 1:
        sub_801E150(*((void **) (((s8 *) temp_r3_49) + 0x10)), 0x14, 0, 0, 0);
        break;

    }

  }
  sub_8161C9C(*((void **) (((s8 *) arg0) + 0xC)), 0, 0);
  *((s16 *) (((s8 *) (*((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0xC)))) + 0x10)))) + 0xE)) = 0;
  sub_8161C9C(*((void **) (((s8 *) arg0) + 0x10)), 0, 0);
  *((s16 *) (((s8 *) (*((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x10)))) + 0x10)))) + 0xE)) = 4;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81695AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816994C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8169D10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8169DFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8169F28.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816A1E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816A810.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816AE5C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816AF94.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

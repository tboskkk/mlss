#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DB184 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB184.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB1A4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB1C4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_808552C(void *, void *, void *, s32, s32, s32, s32, s32, s32, s32); /* extern */
void sub_80DB27C(void *arg0);
void sub_80DB1E4(void *arg0)
{
  s8 *new_var;
  s32 temp_r6_30;
  void *temp_r2_12;
  new_var = ((s8 *) arg0) + 0x84;
  temp_r2_12 = *((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x2C)))) + 0x28));
  *((s32 *) new_var) = (s32) ((*((s32 *) (((s8 *) temp_r2_12) + 0xD8))) + 0x3400);
  *((s32 *) (((s8 *) arg0) + 0x88)) = (s32) (*((s32 *) (((s8 *) temp_r2_12) + 0xDC)));
  *((s32 *) (((s8 *) arg0) + 0x8C)) = (temp_r6_30 = *((s32 *) (((s8 *) temp_r2_12) + 0xE0)));
  *((s32 *) (((s8 *) arg0) + 0x98)) = temp_r6_30;
  *((s32 *) (((s8 *) arg0) + 0x94)) = sub_808552C((arg0 + 0x98) + 0x16, (arg0 + 0x8C) + 0x24, arg0 + 0xB2, (*((s32 *) (((s8 *) arg0) + 0x84))) - (*((s32 *) (((s8 *) arg0) + 0x38))), (*((s32 *) (((s8 *) arg0) + 0x88))) - (*((s32 *) (((s8 *) arg0) + 0x3C))), temp_r6_30 - (*((s32 *) (((s8 *) arg0) + 0x40))), 0x400, 0x400, 0xFD, 0);
  play_sfx_80195B4(0x8D, -1);
  sub_8082E1C(arg0, 2, 0, 0);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80DB27C;
}

s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */
extern s32 sub_80DB330;
void sub_80DB27C(void *arg0)
{
  s32 temp_r0_68;
  s32 temp_r1_60;
  s32 var_r0_16;
  s32 new_var;
  s32 var_r0_31;
  var_r0_16 = (*((s16 *) (((s8 *) arg0) + 0xAE))) * 0xFD;
  if (var_r0_16 < 0)
  {
    var_r0_16 += 0xFF;
  }
  *((s16 *) (((s8 *) arg0) + 0xAE)) = (s16) (var_r0_16 >> 8);
  var_r0_31 = (*((s16 *) (((s8 *) arg0) + 0xB0))) * 0xFD;
  if (var_r0_31 < 0)
  {
    var_r0_31 += 0xFF;
  }
  *((s16 *) (((s8 *) arg0) + 0xB0)) = (s16) (var_r0_31 >> 8);
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  *((s32 *) (((s8 *) arg0) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x38))) + (*((s16 *) (((s8 *) arg0) + 0xAE))));
  *((s32 *) (((s8 *) arg0) + 0x14)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x3C))) + (*((s16 *) (((s8 *) arg0) + 0xB0))));
  temp_r1_60 = (*((s32 *) (((s8 *) arg0) + 0x40))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_60;
  if ((new_var = (s32) ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))))) <= 0)
  {
    temp_r0_68 = *((s32 *) (((s8 *) arg0) + 0x98));
    if (temp_r1_60 <= temp_r0_68)
    {
      *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r0_68;
      sub_8082E1C(arg0, 4, 0, 0);
      *((s32 *) (((s8 *) arg0) + 0xA8)) = sub_81DD77C(3, sub_8199F30());
      *((s16 *) (((s8 *) (arg0 + 0xA8)) + 4)) = 8;
      *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DB330;
    }
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB330.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

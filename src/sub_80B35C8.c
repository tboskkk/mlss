#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80B35C8 needs.

asm_unified(".include \"asm/macros.inc\"");


extern s32 sub_80B35C8;

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B35C8.s\"");
#else
/* Draft quarantined: it did not compile, and under agbcc a single bad
   draft fails the WHOLE translation unit -- taking every sibling's compile
   verdict, asm-differ score and permuter promotion down with it. Emptied by
   tools/factory/quarantine_broken_drafts.py. The guard is intact, so the
   real ROM still gets the verbatim retail bytes and progress.py still counts
   this as unmatched; the candidate body is still in the state DB and m2c can
   regenerate the seed. Write real C here to replace this comment. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80B36BC;
void sub_80B363C(void *arg0)
{
  s32 temp_r1_23;
  void *temp_r2_10;
  void *temp_r2_52;
  void *temp_r4_12;
  temp_r2_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r4_12 = temp_r2_10 + 8;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r4_12) + 8)))) + 0x12))))
  {
    temp_r1_23 = 6 & (*((u8 *) (((s8 *) temp_r2_10) + 0x7E)));
    if ((temp_r1_23 == 2) || (temp_r1_23 == 4))
    {
      if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) temp_r4_12) + 0x28)))) + 0xEC))) == (-1))
      {
        sub_8082E1C(temp_r4_12, 4, 0x2000, 0);
      }
      else
      {
        sub_8082E1C(temp_r4_12, 4, 0x204D, 0);
      }
      temp_r2_52 = *((void **) (((s8 *) temp_r4_12) + 8));
      *((u8 *) (((s8 *) temp_r2_52) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_52) + 0x12))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80B36BC;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B36BC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B37CC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B41A4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B428C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B440C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B4D7C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B4E78.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B4FEC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B516C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B5A38.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B62D8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B63F8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B64A0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B6564.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B6D78.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B6EB0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B6FC8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B7118.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B77FC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B7980.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B7A3C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B7C40.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B7DB0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B85D4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B869C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B87B4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B89A4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B91D0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B9298.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8087CE4(void *);                        /* extern */
extern s32 sub_80B95D8;
void sub_80B93B0(void *arg0)
{
  int new_var;
  s32 temp_r1_30;
  int new_var2;
  void *temp_r2_42;
  void *temp_r4_10;
  void *temp_r5_12;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  new_var2 = -7;
  temp_r5_12 = temp_r4_10 + 8;
  sub_8087CE4(temp_r5_12);
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
  {
    play_sfx_80195B4(0x2E, -1);
    temp_r1_30 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
    if ((temp_r1_30 == 2) || (temp_r1_30 == 4))
    {
      new_var = 8;
      sub_8082E1C(temp_r5_12, 0xD, 0x2000, 0);
      temp_r2_42 = *((void **) (((s8 *) temp_r5_12) + new_var));
      *((u8 *) (((s8 *) temp_r2_42) + 0x12)) = (u8) ((new_var2 & (*((u8 *) (((s8 *) temp_r2_42) + 0x12)))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80B95D8;
  }
}

extern s32 sub_80B9624;
void sub_80B9420(void *arg0)
{
  s32 temp_r1_30;
  void *temp_r2_41;
  void *temp_r4_10;
  void *temp_r5_12;
  int new_var;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r5_12 = temp_r4_10 + 8;
  sub_8087CE4(temp_r5_12);
  new_var = -7;
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
  {
    play_sfx_80195B4(0x2E, -1);
    temp_r1_30 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
    if ((temp_r1_30 == 2) || (temp_r1_30 == 4))
    {
      sub_8082E1C(temp_r5_12, 8, 0x204D, 0);
      ;
      *((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r5_12) + 8)))) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r5_12) + 8)))) + 0x12)))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80B9624;
  }
}

extern s32 sub_80B62D8;
void sub_80B9490(void *arg0)
{
  s32 temp_r1_16;
  void *temp_r0_10;
  void *temp_r2_46;
  void *temp_r4_12;
  int new_var;
  temp_r0_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  temp_r4_12 = temp_r0_10 + 8;
  temp_r1_16 = 6 & (*((u8 *) (((s8 *) temp_r0_10) + 0x7E)));
  if ((temp_r1_16 == 2) || (temp_r1_16 == 4))
  {
    new_var = -7;
    if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) temp_r4_12) + 0x28)))) + 0xEC))) == (-1))
    {
      sub_8082E1C(temp_r4_12, 4, 0x2000, 0);
    }
    else
    {
      sub_8082E1C(temp_r4_12, 4, 0x204D, 0);
    }
    temp_r2_46 = *((void **) (((s8 *) temp_r4_12) + 8));
    *((u8 *) (((s8 *) temp_r2_46) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_46) + 0x12)))) | 2);
  }
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80B62D8;
}

s32 sub_80884AC(void *);                        /* extern */
void sub_80B9504(void *arg0)
{
  void **new_var;
  s32 temp_r1_26;
  int new_var2;
  void *temp_r2_37;
  void *temp_r4_10;
  void *temp_r5_12;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r5_12 = temp_r4_10 + 8;
  new_var = (void **) (((s8 *) temp_r5_12) + 8);
  sub_80884AC(temp_r5_12);
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
  {
    temp_r1_26 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
    new_var2 = -7;
    if ((temp_r1_26 == 2) || (temp_r1_26 == 4))
    {
      sub_8082E1C(temp_r5_12, 0, 0x205E, 0);
      temp_r2_37 = *new_var;
      *((u8 *) (((s8 *) temp_r2_37) + 0x12)) = (u8) ((new_var2 & (*((u8 *) (((s8 *) temp_r2_37) + 0x12)))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80B363C;
  }
}

void sub_80B956C(void *arg0)
{
  unsigned int new_var;
  s32 temp_r1_26;
  void *temp_r2_38;
  void *temp_r2_44;
  void *temp_r4_10;
  void *temp_r5_12;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r5_12 = temp_r4_10 + 8;
  sub_8087CE4(temp_r5_12);
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
  {
    new_var = -7;
    temp_r1_26 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
    if ((temp_r1_26 == 2) || (temp_r1_26 == 4))
    {
      sub_8082E1C(temp_r5_12, 0, -1, 0);
      temp_r2_38 = *((void **) (((s8 *) temp_r5_12) + 8));
      *((u8 *) (((s8 *) temp_r2_38) + 0x11)) = (u8) ((-0x41) & (*(((s8 *) temp_r2_38) + 0x11)));
      temp_r2_44 = *((void **) (((s8 *) temp_r5_12) + 8));
      *((u8 *) (((s8 *) temp_r2_44) + 0x12)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r2_44) + 0x12))));
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80B35C8;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B95D8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B9624.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B9704.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

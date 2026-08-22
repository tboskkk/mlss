#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8063BF0 needs.

asm_unified(".include \"asm/macros.inc\"");






extern s32 sub_8063CC8;

extern s32 sub_8063FC0;

extern s32 sub_8064424;
int sub_8086D80();

extern s32 sub_80643DC;
int sub_80871A8();

extern s32 sub_8063C60;
int sub_8082E1C();

extern s32 sub_808750C;
void sub_8063BF0(void *arg0)
{
  s32 temp_r1_8;
  s32 var_r0_10;
  temp_r1_8 = *((s32 *) (((s8 *) arg0) + 0x10));
  var_r0_10 = (*((s32 *) (((s8 *) arg0) + 0x10)) = temp_r1_8 + 0xFFFFFE00);
  if (var_r0_10 < 0)
  {
    var_r0_10 = temp_r1_8 + 0xFFFFFEFF;
  }
  if (((s32) (var_r0_10 >> 8)) < (-0x20))
  {
    *((s32 *) (((s8 *) arg0) + 0x10)) = 0x10000;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_808750C;
  }
}

void sub_8063C24(void *arg0)
{
  s32 temp_r0_11;
  void *temp_r2_20;
  int new_var;
  if (1)
  {
    temp_r0_11 = (*((s32 *) (((s8 *) arg0) + 0x84))) - 1;
    *((s32 *) (((s8 *) arg0) + 0x84)) = temp_r0_11;
  }
  new_var = -7;
  if (temp_r0_11 <= 0)
  {
    sub_8082E1C(arg0, 1, 0, 0);
    temp_r2_20 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_20) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_20) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8063C60;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063C60.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063C8C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063CC8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063F30.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063FC0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064184.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064224.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_806424C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_8064274(void *arg0)
{
  s32 var_r0_8;
  var_r0_8 = sub_80871A8();
  if (var_r0_8 == 0)
  {
    var_r0_8 = 0x4C;
    *((s32 **) (arg0 + var_r0_8)) = &sub_80643DC;
    var_r0_8 = 0;
  }
  return var_r0_8;
}

s32 sub_8064290(void *arg0)
{
  s32 var_r0_8;
  var_r0_8 = sub_8086D80();
  if (var_r0_8 == 0)
  {
    var_r0_8 = 0x4C;
    *((s32 **) (arg0 + var_r0_8)) = &sub_8064424;
    var_r0_8 = 0;
  }
  return var_r0_8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80642AC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806432C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_8064354(void *arg0) {
    sub_8082E1C(arg0, 0x06, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8063FC0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064370.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80643DC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064424.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_806446C(void *arg0) {
    sub_8082E1C(arg0, 0x03, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8063CC8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064488.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80644DC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064514.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

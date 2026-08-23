#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8063BF0 needs.

asm_unified(".include \"asm/macros.inc\"");







s32 sub_807C298();

extern s32 sub_8063CC8;

extern s32 sub_8063FC0;

extern s32 sub_8064424;
int sub_8086D80();

void sub_80643DC(void *arg0);
int sub_80871A8();

void sub_8063C60(struct Entity *arg0);
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8063C60;
  }
}

extern s32 sub_80874B4;

void sub_8063C60(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        arg0->handler = &sub_80874B4;
    }
}

void sub_8063C8C(void *arg0)
{
  u16 *new_var;
  unsigned int temp_r0_17;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    new_var = &(*((u16 *) (((s8 *) arg0) + 0xAC)));
    temp_r0_17 = (*new_var) - 1;
    *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_17;
    if (((s32) (temp_r0_17 << 0x10)) <= 0)
    {
      sub_8082E1C(arg0, 0xD, 0, 0);
      *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8063C60;
    }
  }
}

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

void sub_806432C(void *arg0);
s32 sub_8064224(void *arg0)
{
  s32 var_r0_8;
  var_r0_8 = sub_8086D80();
  if (var_r0_8 == 0)
  {
    var_r0_8 = 0x4C;
    sub_8082E1C(arg0, 1, 0, 0);
    *((s32 **) (((s8 *) arg0) + var_r0_8)) = (s32 *) &sub_806432C;
    var_r0_8 = 0;
  }
  return var_r0_8;
}

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
    *((s32 **) (arg0 + var_r0_8)) = (s32 *) &sub_80643DC;
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

void sub_806432C(void *arg0) {
    s32 temp_r0_15;

    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + 0x200);
    temp_r0_15 = (*(s32 *)((s8 *)(arg0) + (0x18))) + 0xFFFFFC80;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_15;
    if (temp_r0_15 <= 0) {
        sub_807C298(arg0);
    }
}

void sub_8064354(struct Entity *arg0) {
    sub_8082E1C(arg0, 0x06, 0, 0);
    arg0->handler = &sub_8063FC0;
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

s32 sub_807C298(void *);                        /* extern */
void sub_80643DC(void *arg0)
{
  s32 temp_r1_8;
  s32 temp_r3_14;
  s32 temp_r4_12;
  s32 var_r0_10;
  s32 var_r0_26;
  temp_r1_8 = *((s32 *) (((s8 *) arg0) + 0x10));
  var_r0_26 = temp_r1_8 + 0xFFFFFDE7;
  var_r0_10 = var_r0_26;
  *((s32 *) (((s8 *) arg0) + 0x10)) = var_r0_10;
  temp_r4_12 = *((s32 *) (((s8 *) arg0) + 0x18));
  temp_r3_14 = temp_r4_12 + 0xFFFFFF00;
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r3_14;
  if (var_r0_10 < 0)
  {
    var_r0_10 = temp_r1_8 - 0x11A;
  }
  if (((s32) (var_r0_10 >> 8)) > (-0x20))
  {
    var_r0_26 = temp_r3_14;
    if (var_r0_26 < 0)
    {
      var_r0_26 = temp_r4_12 - 1;
    }
    if (((s32) (var_r0_26 >> 8)) <= 0)
    {
      goto block_6;
    }
  }
  else
  {
    block_6:
    sub_807C298(arg0);

  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064424.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_806446C(struct Entity *arg0) {
    sub_8082E1C(arg0, 0x03, 0, 0);
    arg0->handler = &sub_8063CC8;
}

s32 sub_8082B00();                                  /* extern */
void sub_8064514(void *arg0);
extern s32 sub_8064540;
void sub_8064488(void *arg0)
{
  s32 *var_r0_29;
  void *temp_r2_16;
  if (sub_8082B00() == 0)
  {
    sub_8082E1C(arg0, 2, 0, 0);
    temp_r2_16 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_16) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_16) + 0x12))) | 2);
    if ((*((s32 *) (((s8 *) arg0) + 0x9C))) == 0)
    {
      var_r0_29 = &sub_8064540;
    }
    else
    {
      play_sfx_80195B4(0xAF, -1);
      var_r0_29 = (s32 *) &sub_8064514;
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = var_r0_29;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80644DC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_8064514(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 3, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8063CC8;
    }
}

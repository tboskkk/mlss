#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806814C needs.

asm_unified(".include \"asm/macros.inc\"");




void sub_806829C(struct Entity *arg0);
int sub_8082B00();
int sub_8082E1C();

extern s32 sub_808750C;

int sub_807C298();

void sub_806814C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        arg0->handler = &sub_808750C;
    }
}

extern s32 sub_8067DC8;

s32 sub_8068168(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = 2;
        (*(s32 *)((s8 *)((arg0 + 0x9C)) + (4))) = 1;
    }
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8067DC8;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068190.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_806819C(void *arg0)
{
  s32 temp_r1_8;
  s32 temp_r3_14;
  s32 temp_r4_12;
  s32 var_r0_10;
  s32 var_r0_26;
  temp_r1_8 = *((s32 *) (((s8 *) arg0) + 0x10));
  var_r0_10 = temp_r1_8 + 0xFFFFFECD;
  *((s32 *) (((s8 *) arg0) + 0x10)) = var_r0_10;
  temp_r4_12 = *((s32 *) (((s8 *) arg0) + 0x18));
  temp_r3_14 = temp_r4_12 + 0xFFFFFE00;
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r3_14;
  if (var_r0_10 < 0)
  {
    var_r0_10 = temp_r1_8 - 0x34;
  }
  temp_r1_8 = (s32) (var_r0_10 >> 8);
  if (temp_r1_8 > (-0x20))
  {
    var_r0_26 = temp_r3_14;
    if (var_r0_26 < 0)
    {
      var_r0_26 = temp_r4_12 + 0xFFFFFEFF;
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
asm_unified(".include \"asm/nonmatching/sub_80681EC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_8067E4C(void *arg0, s32 arg3);                       /* extern */
void sub_806822C(void *arg0)
{
  int temp_r0_17;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    temp_r0_17 = (*((u16 *) (((s8 *) arg0) + 0xAE))) - 1;
    *((u16 *) (((s8 *) arg0) + 0xAE)) = temp_r0_17;
    if (((s32) (temp_r0_17 << 0x10)) <= 0)
    {
      sub_8082E1C(arg0, 7, 0, 0);
      *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8067E4C;
    }
  }
}

void sub_8068268(void) {
    sub_807C298();
}

void sub_8068274(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        arg0->handler = (s32 *) &sub_806829C;
    }
}

void sub_8067A84(void *arg0, s32 arg3);                       /* extern */

void sub_806829C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 3, 0, 0);
        arg0->handler = (s32 *) &sub_8067A84;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80682C8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80683C4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */
extern s32 sub_80688B8;
void sub_80684B0(void *arg0)
{
  s32 temp_r5_58;
  long temp_r2_11;
  void *temp_r1_82;
  temp_r2_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) + 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r2_11;
  if ((*((s32 *) (((s8 *) arg0) + 0xA8))) == 0)
  {
    if (((s16) temp_r2_11) == 0x1E)
    {
      play_sfx_80195B4(0x63, -1);
    }
  }
  else
    if (((s16) temp_r2_11) == 0xA)
  {
    play_sfx_80195B4(0x63, -1);
  }
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    if ((*((s32 *) (((s8 *) arg0) + 0xA8))) == 0)
    {
      stop_sfx_80195A8(0x11B);
    }
    else
    {
      stop_sfx_80195A8(0x11B);
    }
    temp_r5_58 = *((s32 *) (((s8 *) arg0) + 0xA8));
    if (temp_r5_58 == 0)
    {
      sub_8082E1C(arg0, 3, 0, 0);
      *((u16 *) (((s8 *) arg0) + 0xAC)) = (u16) temp_r5_58;
    }
    else
    {
      sub_8082E1C(arg0, 6, 0, 0);
      *((u16 *) (((s8 *) arg0) + 0xAC)) = 3U;
    }
    temp_r1_82 = *((void **) (((s8 *) arg0) + 0x30));
    *((s32 *) (((s8 *) temp_r1_82) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x38))) + 0x2200);
    *((s32 *) (((s8 *) temp_r1_82) + 0x14)) = (s32) (*((s32 *) (((s8 *) arg0) + 0x3C)));
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80688B8;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806856C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_8068798(struct Entity *arg0) {
    s32 temp_r0_12;
    s32 temp_r0_18;
    s32 var_r1_29;

    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + 0xFFFFFECD);
    temp_r0_12 = arg0->unk18;
    if (temp_r0_12 > 0x800) {
        temp_r0_18 = temp_r0_12 + 0xFFFFFF00;
        arg0->unk18 = temp_r0_18;
        if (temp_r0_18 <= 0x800) {
            arg0->unk18 = 0x800;
            sub_8082E1C(arg0, 1, 0, 0);
        }
    }
    var_r1_29 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r1_29 < 0) {
        var_r1_29 += 0xFF;
    }
    if ((s32) (var_r1_29 >> 8) <= -0x20) {
        sub_807C298(arg0);
    }
}

void sub_80687EC(void *arg0)
{
  s32 temp_r1_8;
  s32 var_r0_10;
  temp_r1_8 = *((s32 *) (((s8 *) arg0) + 0x10));
  var_r0_10 = temp_r1_8 + 0xFFFFFDCD;
  *((s32 *) (((s8 *) arg0) + 0x10)) = var_r0_10;
  if (var_r0_10 < 0)
  {
    var_r0_10 = temp_r1_8 + 0xFFFFFECC;
  }
  temp_r1_8 = (s32) (var_r0_10 >> 8);
  if (temp_r1_8 <= (-0x20))
  {
    sub_807C298(arg0);
  }
}

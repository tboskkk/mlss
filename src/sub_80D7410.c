#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80D7410 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 stop_sfx_80195A8();
s32 sub_8087124();
s32 sub_810DD7C();




extern s32 sub_80D3224;

s32 sub_807F4FC();
s32 sub_808552C();

int sub_8087540();

ASM_FUNC("asm/nonmatching/sub_80D7410.s", void sub_80D7410(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D7488.s", void sub_80D7488(void));
ASM_FUNC("asm/nonmatching/sub_80D7688.s", void sub_80D7688(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D7774.s", void sub_80D7774(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D782C.s", void sub_80D782C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D7928.s", void sub_80D7928(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D8048.s", void sub_80D8048(void *arg0));
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4(void *);                        /* extern */
void sub_80D8238(void);                       /* extern */
void sub_80D8438(void *arg0);                       /* extern */
void sub_80D8180(void *arg0)
{
  s32 temp_r1_41;
  s32 temp_r1_65;
  void *temp_r1_16;
  void *temp_r2_76;
  void *temp_r4_12;
  void *temp_r5_13;
  void *temp_r6_10;
  temp_r6_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r4_12 = temp_r6_10 + 8;
  temp_r5_13 = *((void **) (((s8 *) arg0) + 0x2C));
  sub_8087CE4(temp_r4_12);
  temp_r1_16 = *((void **) (((s8 *) temp_r4_12) + 0x30));
  *((s32 *) (((s8 *) temp_r1_16) + 0x10)) = (s32) (*((s32 *) (((s8 *) temp_r4_12) + 0x10)));
  *((s32 *) (((s8 *) temp_r1_16) + 0x14)) = (s32) (*((s32 *) (((s8 *) temp_r4_12) + 0x14)));
  *((s32 *) (((s8 *) temp_r1_16) + 0x18)) = (s32) (*((s32 *) (((s8 *) temp_r4_12) + 0x18)));
  if ((((*((s32 *) (((s8 *) temp_r5_13) + 0xA8))) != 0) && (((s32) (*((s32 *) (((s8 *) temp_r5_13) + 0x40)))) < ((*((s32 *) (((s8 *) temp_r4_12) + 0x18))) + (*((s8 *) (((s8 *) temp_r6_10) + 0xCD)))))) && (((temp_r1_41 = 6 & (*((u8 *) (((s8 *) temp_r5_13) + 0x76))), temp_r1_41 == 2)) || (temp_r1_41 == 4)))
  {
    *((s32 **) (((s8 *) temp_r5_13) + 0x4C)) = (s32 *) &sub_80D8438;
  }
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_12) + 0x79))))
  {
    play_sfx_80195B4(0x65, -1);
    temp_r1_65 = 6 & (*((u8 *) (((s8 *) temp_r4_12) + 0x76)));
    if ((temp_r1_65 == 2) || (temp_r1_65 == 4))
    {
      sub_8082E1C(temp_r4_12, 0, 0x2005, 0);
      temp_r2_76 = *((void **) (((s8 *) temp_r4_12) + 8));
      *((u8 *) (((s8 *) temp_r2_76) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_76) + 0x12))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80D8238;
  }
}

ASM_FUNC("asm/nonmatching/sub_80D8238.s", void sub_80D8238(void));
ASM_FUNC("asm/nonmatching/sub_80D8438.s", void sub_80D8438(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D85D4.s", void sub_80D85D4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D86B0.s", void sub_80D86B0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D8798.s", void sub_80D8798(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D885C.s", void sub_80D885C(void));
ASM_FUNC("asm/nonmatching/sub_80D8A54.s", void sub_80D8A54(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D8C68.s", void sub_80D8C68(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D8CC0.s", void sub_80D8CC0(void *arg0));
s32 sub_8087DE4(void *);                        /* extern */
extern s32 sub_80D69D8;

void sub_80D8D18(struct Entity *arg0) {
    void *temp_r1_15;
    void *temp_r4_12;
    void *temp_r5_10;

    temp_r5_10 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x74)));
    temp_r4_12 = temp_r5_10 + 8;
    sub_8087DE4(temp_r4_12);
    temp_r1_15 = (*(void **)((s8 *)(temp_r4_12) + (0x30)));
    (*(s32 *)((s8 *)(temp_r1_15) + (0x10))) = (s32) (*(s32 *)((s8 *)(temp_r4_12) + (0x10)));
    (*(s32 *)((s8 *)(temp_r1_15) + (0x14))) = (s32) (*(s32 *)((s8 *)(temp_r4_12) + (0x14)));
    (*(s32 *)((s8 *)(temp_r1_15) + (0x18))) = (s32) (*(s32 *)((s8 *)(temp_r4_12) + (0x18)));
    if (0x20 & (*(u8 *)((s8 *)(temp_r5_10) + (0x81)))) {
        arg0->handler = &sub_80D69D8;
    }
}

void sub_80D8D58(void *arg0)
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80D3224;
  }
}

s32 sub_80873B8(void *, s32, s32);              /* extern */
void sub_80D8E5C(void *arg0);                       /* extern */
void sub_80D8DC4(void *arg0)
{
  s32 temp_r0_62;
  s32 temp_r1_58;
  s32 var_r0_15;
  s32 var_r0_29;
  s32 new_var;
  var_r0_15 = (*((s16 *) (((s8 *) arg0) + 0xAE))) * 0x104;
  if (var_r0_15 <= (0 - 1))
  {
    var_r0_15 += 0xFF;
  }
  *((s16 *) (((s8 *) arg0) + 0xAE)) = (s16) (var_r0_15 >> 8);
  var_r0_29 = (*((s16 *) (((s8 *) arg0) + 0xB0))) * 0x104;
  if (var_r0_29 < 0)
  {
    var_r0_29 += 0xFF;
  }
  *((s16 *) (((s8 *) arg0) + 0xB0)) = (s16) (var_r0_29 >> 8);
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  *((s32 *) (((s8 *) arg0) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x38))) + (*((s16 *) (((s8 *) arg0) + 0xAE))));
  *((s32 *) (((s8 *) arg0) + 0x14)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x3C))) + (*((s16 *) (((s8 *) arg0) + 0xB0))));
  temp_r1_58 = (*((s32 *) (((s8 *) arg0) + 0x40))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_58;
  temp_r0_62 = *((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0));
  if (temp_r1_58 <= temp_r0_62)
  {
    *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r0_62;
    new_var = *((s32 *) (((s8 *) arg0) + 0x9C));
    *((s16 *) (((s8 *) (arg0 + 0x9C)) + 0x10)) = (s16) new_var;
    sub_80873B8(arg0, 3, 0);
    *((s32 **) (((s8 *) arg0) + 0x50)) = (s32 *) &sub_80D8E5C;
  }
}

ASM_FUNC("asm/nonmatching/sub_80D8E5C.s", void sub_80D8E5C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D8EE4.s", void sub_80D8EE4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D8F68.s", void sub_80D8F68(void *arg0));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D8F94.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

ASM_FUNC("asm/nonmatching/sub_80D8FA0.s", void sub_80D8FA0(void *arg0));
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_80D909C(s32, s32, s32);
s32 sub_80D90BC(s32, s32, s32);

void sub_80D9018(void *arg0) {
    s32 temp_r5_10;

    temp_r5_10 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r5_10 == 0) {
        stop_sfx_80195A8(0x81);
        play_sfx_80195B4(0x30, -1);
        (*(s32 *)((s8 *)(arg0) + (0x94))) = sub_808552C(arg0 + 0xAE, arg0 + 0xB0, arg0 + 0xB2, 0, temp_r5_10, temp_r5_10, 0x1400, 0x4CC, 0x104, temp_r5_10);
        sub_8082E1C(arg0, 3, 0, 0);
        sub_807F4FC(arg0);
        (*(s32 **)((s8 *)(arg0) + (0x58))) = (s32 *) &sub_80D90BC;
        (*(s32 **)((s8 *)(arg0) + (0x60))) = (s32 *) &sub_80D909C;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_80D8DC4;
    }
}

s32 sub_80D909C(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x81);
    return sub_8087124(arg0, arg1, arg2);
}

s32 sub_80D90BC(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x81);
    return sub_810DD7C(arg0, arg1, arg2);
}

ASM_FUNC("asm/nonmatching/sub_80D90DC.s", void sub_80D90DC(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_80D92B0.s", void sub_80D92B0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D9378.s", void sub_80D9378(void *arg0));
void sub_80D94B8(void *arg0);                       /* extern */
void sub_80D9420(void *arg0)
{
  s32 **new_var;
  s32 temp_r0_58;
  s32 new_var2;
  s32 temp_r1_62;
  s32 var_r0_15;
  s32 var_r0_29;
  var_r0_15 = (*((s16 *) (((s8 *) arg0) + 0xAE))) * 0x104;
  if (var_r0_15 < 0)
  {
    var_r0_15 += 0xFF;
  }
  *((s16 *) (((s8 *) arg0) + 0xAE)) = (s16) (var_r0_15 >> 8);
  var_r0_29 = (*((s16 *) (((s8 *) arg0) + 0xB0))) * 0x104;
  if (var_r0_29 < 0)
  {
    var_r0_29 += 0xFF;
  }
  new_var = (s32 **) (((s8 *) arg0) + 0x50);
  *((s16 *) (((s8 *) arg0) + 0xB0)) = (s16) (var_r0_29 >> 8);
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  *((s32 *) (((s8 *) arg0) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x38))) + (*((s16 *) (((s8 *) arg0) + 0xAE))));
  *((s32 *) (((s8 *) arg0) + 0x14)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x3C))) + (*((s16 *) (((s8 *) arg0) + 0xB0))));
  temp_r0_58 = (*((s32 *) (((s8 *) arg0) + 0x40))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r0_58;
  temp_r1_62 = *((s32 *) (((s8 *) arg0) + 0x98));
  if (temp_r0_58 <= temp_r1_62)
  {
    *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_62;
    new_var2 = *((s32 *) (((s8 *) arg0) + 0x9C));
    *((s16 *) (((s8 *) (arg0 + 0x9C)) + 0x10)) = (s16) new_var2;
    sub_80873B8(arg0, 3, 0);
    *new_var = (s32 *) &sub_80D94B8;
  }
}

ASM_FUNC("asm/nonmatching/sub_80D94B8.s", void sub_80D94B8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D952C.s", void sub_80D952C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D95A4.s", void sub_80D95A4(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_80D977C.s", void sub_80D977C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D984C.s", void sub_80D984C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D98F8.s", void sub_80D98F8(void *arg0));
void sub_80D9984(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8087540(arg0);
    }
}

s32 sub_807F4FC();                              /* extern */
void sub_80D9A98(void *arg0);
void sub_80D99A0(void *arg0)
{
  void **new_var;
  void *temp_r2_14;
  sub_807F4FC();
  sub_8082E1C(arg0, 6, 0, 0);
  new_var = &(*((void **) (((s8 *) arg0) + 8)));
  temp_r2_14 = *new_var;
  *((u8 *) (((s8 *) temp_r2_14) + 0x12)) = (u8) (((-7) & (*(((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80D9A98;
}

void sub_80D99D4(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8087540(arg0);
    }
}

ASM_FUNC("asm/nonmatching/sub_80D99F0.s", s16 sub_80D99F0(void *arg0));
s32 sub_8082B00();                                  /* extern */
void sub_80D9B9C(void *arg0);                       /* extern */

void sub_80D9A7C(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        arg0->handler = (s32 *) &sub_80D9B9C;
    }
}

s32 sub_808552C(void *, void *, void *, s32, s32, s32, s32, s32, s32, s32); /* extern */
void sub_80D9A98(void *arg0)
{
  void *new_var;
  new_var = arg0;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) new_var) + 8)))) + 0x12))))
  {
    s32 temp_r4_19;
    *((s32 *) (((s8 *) new_var) + 0x98)) = (temp_r4_19 = *((s32 *) (((s8 *) (*((void **) (((s8 *) new_var) + 0x28)))) + 0xE0)));
    *((s32 *) (((s8 *) new_var) + 0x94)) = sub_808552C(new_var + 0xAE, (new_var + 0x98) + 0x18, new_var + 0xB2, 0, 0, temp_r4_19 - (*((s32 *) (((s8 *) new_var) + 0x40))), 0x1400, 0x4CC, 0x104, 0);
    sub_8082E1C(new_var, 3, 0, 0);
    *((s32 **) (((s8 *) new_var) + 0x4C)) = (s32 *) &sub_80D9420;
  }
}

void sub_80D9BE0(void *arg0);                       /* extern */

void sub_80D9B08(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        arg0->handler = (s32 *) &sub_80D9BE0;
    }
}

ASM_FUNC("asm/nonmatching/sub_80D9B24.s", void sub_80D9B24(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D9B9C.s", void sub_80D9B9C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D9BE0.s", void sub_80D9BE0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D9C24.s", void sub_80D9C24(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D9C6C.s", void sub_80D9C6C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D9CB4.s", void sub_80D9CB4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D9D08.s", void sub_80D9D08(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D9D5C.s", void sub_80D9D5C(void *arg0));
s32 sub_8086858(void *, s32);                   /* extern */
s32 sub_80D9E34(void *arg0);                       /* extern */
extern s32 sub_80D9E9C;
void sub_80D9DD4(void *arg0)
{
  s32 temp_r5_9;
  u16 temp_r0_15;
  temp_r5_9 = *((s32 *) (((s8 *) arg0) + 0x80));
  if (temp_r5_9 == 0)
  {
    temp_r0_15 = (*((u16 *) (((s8 *) arg0) + 0xAC)) = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
    if (((s32) (temp_r0_15 << 0x10)) < 0)
    {
      *((s32 *) (((s8 *) arg0) + 0xA8)) = temp_r5_9;
      sub_8082E1C(arg0, 9, 0, 0);
      sub_8086858(arg0, 0x138A);
      play_sfx_80195B4(0xAF, -1);
      *((s32 **) (((s8 *) arg0) + 0x5C)) = (s32 *) &sub_80D9E34;
      *((s32 *) (((s8 *) arg0) + 0x54)) = temp_r5_9;
      *((u16 *) (((s8 *) arg0) + 0xAC)) = (u16) temp_r5_9;
      *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80D9E9C;
    }
  }
}

ASM_FUNC("asm/nonmatching/sub_80D9E34.s", s32 sub_80D9E34(void *arg0));
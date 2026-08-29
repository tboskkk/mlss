#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8068818 needs.

asm_unified(".include \"asm/macros.inc\"");







void sub_8068EF4(struct Entity *arg0);
int sub_8086C64();

void sub_8068F10(struct Entity *arg0);

s32 sub_810DD7C();

s32 sub_8082B00();

void sub_8068DEC(void *arg0);

s32 sub_8082E1C();
void sub_8068818(struct Entity *arg0) {
    s32 temp_r0_16;

    if ((*(s16 *)((s8 *)(arg0) + (0xAC))) == 0) {
        temp_r0_16 = (*(s32 *)((s8 *)(arg0) + (0x10))) + 0xFFFFFE00;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r0_16;
        if ((s32) arg0->unk84 >= temp_r0_16) {
            (*(s16 *)((s8 *)(arg0) + (0xAC))) = 1;
        }
    }
}

ASM_FUNC("asm/nonmatching/sub_8068844.s", void sub_8068844(void *arg0));
extern s32 sub_806856C;
void sub_80688B8(void *arg0)
{
  u16 temp_r0_17;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    temp_r0_17 = (*((u16 *) (((s8 *) arg0) + 0xAC)) = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
    if (((s32) (temp_r0_17 << 0x10)) <= 0)
    {
      if ((*((s32 *) (((s8 *) arg0) + 0xA8))) == 0)
      {
        sub_8082E1C(arg0, 4, 0, 0);
      }
      else
      {
        sub_8082E1C(arg0, 7, 0, 0);
      }
      *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_806856C;
    }
  }
}

ASM_FUNC("asm/nonmatching/sub_806890C.s", void sub_806890C(void *arg0));
void sub_8068A28(void *arg0);
void sub_80689AC(struct Entity *arg0) {
    s32 temp_r5_9;
    void *temp_r1_17;

    temp_r5_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r5_9 == 0) {
        sub_8082E1C(arg0, 0, 0, 0);
        temp_r1_17 = (*(void **)((s8 *)(arg0) + (0x30)));
        (*(s32 *)((s8 *)(temp_r1_17) + (0x10))) = (s32) (arg0->unk38 + 0x2200);
        (*(s32 *)((s8 *)(temp_r1_17) + (0x14))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x3C)));
        (*(s32 **)((s8 *)(temp_r1_17) + (0x4C))) = (s32 *) &sub_8068A28;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = temp_r5_9;
    }
}

ASM_FUNC("asm/nonmatching/sub_80689E4.s", void sub_80689E4(void *arg0));
s32 sub_807C298(void *);                        /* extern */

void sub_8068A28(void *arg0) {
    s32 temp_r2_8;
    s32 var_r0_11;

    temp_r2_8 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    var_r0_11 = temp_r2_8 + 0x200;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_11;
    if (var_r0_11 < 0) {
        var_r0_11 = temp_r2_8 + 0x2FF;
    }
    if ((s32) (var_r0_11 >> 8) > 0xFF) {
        sub_807C298(arg0);
    }
}

extern s32 sub_80684B0;
void sub_8068A50(void *arg0)
{
  u16 temp_r0_17;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    temp_r0_17 = *((u16 *) (((s8 *) arg0) + 0xAC));
    temp_r0_17 = (*((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_17 - 1);
    if (((s32) (temp_r0_17 << 0x10)) <= 0)
    {
      if ((*((s32 *) (((s8 *) arg0) + 0xA8))) == 0)
      {
        sub_8082E1C(arg0, 0xD, 0, 0);
      }
      else
      {
        sub_8082E1C(arg0, 0x10, 0, 0);
      }
      *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80684B0;
      *((u16 *) (((s8 *) arg0) + 0xAC)) = 0U;
    }
  }
}

ASM_FUNC("asm/nonmatching/sub_8068AA8.s", void sub_8068AA8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8068B68.s", void sub_8068B68(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8068BF0.s", void sub_8068BF0(void *arg0));
void sub_8068C70(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

ASM_FUNC("asm/nonmatching/sub_8068C98.s", void sub_8068C98(void *arg0));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068D0C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068D40.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_8068D74(void *arg0)
{
  u16 temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC)) = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    if ((*((s32 *) (((s8 *) arg0) + 0xA8))) == 0)
    {
      sub_8082E1C(arg0, 5, 0, 0);
    }
    else
    {
      sub_8082E1C(arg0, 8, 0, 0);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8068DEC;
  }
}

void sub_8068AA8(void *arg0);                       /* extern */

void sub_8068DBC(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 2, 0, 0);
        arg0->unk8C = 0x300;
        arg0->handler = (s32 *) &sub_8068AA8;
    }
}

s32 sub_807F4FC(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_8068B68(void *arg0);                       /* extern */
s32 sub_8068E60(struct Entity *arg0);
s32 sub_8068E7C(void *arg0);
void sub_8068E98(struct Entity *arg0);
void sub_8068DEC(void *arg0) {
    s32 temp_r1_16;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r1_16 = (*(s32 *)((s8 *)(arg0) + (0xA8)));
        if (temp_r1_16 == 0) {
            (*(s16 *)((s8 *)((arg0 + 0xA8)) + (4))) = (s16) temp_r1_16;
            sub_8082E1C(arg0, 6, 0, 0);
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8068B68;
            sub_807F4FC(arg0);
            (*(s32 **)((s8 *)(arg0) + (0x58))) = (s32 *) &sub_8068E60;
            (*(s32 **)((s8 *)(arg0) + (0x5C))) = (s32 *) &sub_8068E7C;
            play_sfx_80195B4(0x11A, -1);
            return;
        }
        sub_8082E1C(arg0, 9, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8068E98;
    }
}

s32 sub_8068E60(struct Entity *arg0) {
    sub_810DD7C(arg0, (*(s32 *)((s8 *)(arg0) + (0x2C))), 0xFF);
    arg0->handler = (s32 *) &sub_8068B68;
    return 0;
}

s32 sub_8068E7C(void *arg0)
{
  s32 var_r0_8;
  var_r0_8 = sub_8086C64();
  if (var_r0_8 == 0)
  {
    var_r0_8 = 0x4C;
    *((s32 **) (arg0 + var_r0_8)) = (s32 *) &sub_8068EF4;
    var_r0_8 = 0;
  }
  return var_r0_8;
}

s32 sub_8086858(void *, s32);                       /* extern */
void sub_8068E98(struct Entity *arg0) {
    s32 temp_r0_19;
    s32 temp_r1_11;

    temp_r1_11 = (*(s32 *)((s8 *)(arg0) + (0x10))) - (*(s32 *)((s8 *)(arg0) + (0xA0)));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r1_11;
    temp_r0_19 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0->unk2C) + (0x28)))) + (0xD8))) + 0x1600;
    if (temp_r0_19 >= temp_r1_11) {
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r0_19;
        sub_8082E1C(arg0, 0xA, 0, 0);
        *(s32 *)0x03000E3C = sub_8086858(arg0, 0x1608);
        play_sfx_80195B4(0xAF, -1);
        arg0->handler = (s32 *) &sub_8068F10;
    }
}

s32 stop_sfx_80195A8(s32);                      /* extern */
extern s32 sub_808750C;

void sub_8068EF4(struct Entity *arg0) {
    stop_sfx_80195A8(0x11A);
    arg0->handler = &sub_808750C;
}

void sub_8068F10(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0xB, 0, 0);
        arg0->handler = &sub_808750C;
    }
}

ASM_FUNC("asm/nonmatching/sub_8068F3C.s", void sub_8068F3C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8069014.s", void sub_8069014(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80690F8.s", void sub_80690F8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80691F4.s", void sub_80691F4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80692DC.s", void sub_80692DC(void *arg0));
s32 sub_8086D80();                                  /* extern */
void sub_80690F8(void *arg0);                       /* extern */

s32 sub_8069354(struct Entity *arg0) {
    s32 var_r0_8;

    var_r0_8 = sub_8086D80();
    if (var_r0_8 == 0) {
        if ((*(s16 *)((s8 *)(arg0) + (0xAE))) == 0) {
            stop_sfx_80195A8(0x81);
        } else {
            stop_sfx_80195A8(0x81);
        }
        (*(s32 *)((s8 *)(arg0) + (0x80))) = 0;
        arg0->handler = (s32 *) &sub_80690F8;
        var_r0_8 = 0;
    }
    return var_r0_8;
}

ASM_FUNC("asm/nonmatching/sub_8069394.s", void sub_8069394(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80693BC.s", void sub_80693BC(void *arg0));
void sub_8069450(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 9, 0, 0);
        arg0->handler = &sub_808750C;
    }
}

s32 sub_8082B00();                                  /* extern */
void sub_8068F3C(void *arg0);                       /* extern */

void sub_806947C(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 2, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0xA4))) = 0x300;
        (*(s32 *)((s8 *)((arg0 + 0xA4)) + (4))) = 0x66;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8068F3C;
    }
}

ASM_FUNC("asm/nonmatching/sub_80694B4.s", void sub_80694B4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8069558.s", void sub_8069558(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80695E4.s", void sub_80695E4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8069688.s", void sub_8069688(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8069794.s", void sub_8069794(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80698C4.s", void sub_80698C4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80699E4.s", void sub_80699E4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8069AE8.s", void sub_8069AE8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8069C40.s", void sub_8069C40(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8069DC8.s", void sub_8069DC8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8069EC8.s", void sub_8069EC8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_806A058.s", void sub_806A058(void *arg0));
ASM_FUNC("asm/nonmatching/sub_806A118.s", void sub_806A118(void *arg0));
s32 sub_806A180(void *arg0)
{
  unsigned int new_var;
  s32 var_r0_8;
  var_r0_8 = (new_var = sub_8086D80());
  if (var_r0_8 == 0)
  {
    var_r0_8 = 0x9C;
    *((s32 *) (((s8 *) arg0) + var_r0_8)) = 1;
    var_r0_8 = 0;
  }
  return var_r0_8;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808750C;
void sub_806A19C(void *arg0)
{
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 0, 0x4071, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_808750C;
  }
}

s32 sub_80871A8();                                  /* extern */
extern s32 sub_808750C;
s32 sub_806A1CC(void *arg0)
{
  s32 var_r0_8;
  var_r0_8 = sub_80871A8();
  if (var_r0_8 == 0)
  {
    var_r0_8 = 0x4C;
    *((s32 **) (arg0 + var_r0_8)) = &sub_808750C;
    var_r0_8 = 0;
  }
  return var_r0_8;
}

s32 sub_810DD7C(void *, s32, s32);              /* extern */
extern s32 sub_806A22C;

s32 sub_806A1E8(struct Entity *arg0) {
    sub_810DD7C(arg0, (*(s32 *)((s8 *)(arg0) + (0x2C))), 0xFF);
    arg0->handler = &sub_806A22C;
    return 0;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808750C;

void sub_806A204(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 6, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

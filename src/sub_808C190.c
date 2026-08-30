#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808C190 needs.

asm_unified(".include \"asm/macros.inc\"");













void sub_808C968(struct Entity *arg0);

void sub_808C90C(struct Entity *arg0);

void sub_808C8E0(struct Entity *arg0);

void sub_808C83C(struct Entity *arg0);

s32 sub_8082E1C();
void sub_808C510(struct Entity *arg0);

void sub_808C810(struct Entity *arg0);

void sub_808C7E4(struct Entity *arg0);

void sub_808C7B8(struct Entity *arg0);

s32 sub_80873B8();
s32 stop_sfx_80195A8();
s32 sub_8087540();
s32 sub_807C298();
u32 sub_808C190(u32* param_1) {
    param_1[0x4C / 4] = 0x0808C4C9;
    return 1;
}

void sub_808C19C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8087540(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C1B6.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_807F47C(void *);                        /* extern */
void sub_808C1C4(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        play_sfx_80195B4(0xAD, -1);
        sub_8082E1C(arg0, 1, 0, 0);
        sub_807F47C(arg0);
        arg0->handler = (s32 *) &sub_808C510;
    }
}

void sub_808C1FC(struct Entity *arg0) {
    void *temp_r0_14;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x6C);
        temp_r0_14 = arg0->unk08;
        (*(u8 *)((s8 *)(temp_r0_14) + (0x11))) = (u8) ((*(u8 *)((s8 *)(temp_r0_14) + (0x11))) | 0x40);
        sub_8087540(arg0);
    }
}

void sub_808C52C(void *arg0);
void sub_808C224(void *arg0)
{
  void **new_var2;
  void *temp_r2_22;
  void *temp_r2_8;
  void *new_var;
  temp_r2_8 = (void *) (*((void **) (((s8 *) arg0) + 0x30)));
  new_var = temp_r2_8;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) new_var) + 8)))) + 0x12))))
  {
    sub_8082E1C(temp_r2_8, 1, 0, 0);
    temp_r2_22 = (void *) (*(new_var2 = (void **) (((s8 *) (*((void **) (0x30 + ((s8 *) arg0))))) + 8)));
    *((u8 *) (((s8 *) temp_r2_22) + 0x12)) = (u8) ((-7) & (*(((s8 *) temp_r2_22) + 0x12)));
    *((s16 *) (((s8 *) arg0) + 0xAC)) = 8;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_808C52C);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C268.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

extern s32 sub_808B7D0;
void sub_808C274(void *arg0, unsigned int arg1)
{
  int var_r1_0;
  s32 temp_r0_10;
  s8 *new_var3;
  int new_var;
  void *temp_r5_8;
  s8 *new_var2;
  var_r1_0 = arg1;
  temp_r5_8 = *((void **) (((s8 *) arg0) + 0x2C));
  temp_r0_10 = *((s32 *) (((s8 *) arg0) + 0x98));
  if (temp_r0_10 != 1)
  {
    if (temp_r0_10 <= 1)
    {
      if (temp_r0_10 != 0)
      {
      }
      else
      {
        goto block_6;
      }
    }
    else
    {
      new_var = 2;
      if ((temp_r0_10 == new_var) || (temp_r0_10 == 3))
      {
        goto block_6;
      }
    }
  }
  else
  {
    block_6:
    var_r1_0 = 8;

  }
  new_var3 = (s8 *) temp_r5_8;
  *((s16 *) (((s8 *) arg0) + 0xAC)) = var_r1_0;
  if ((*((s16 *) (((s8 *) (*((void **) (new_var3 + 0x28)))) + 0xEC))) == (-1))
  {
    sub_80873B8(arg0, 2, 8);
  }
  new_var2 = new_var3;
  if ((*((s16 *) (((s8 *) (*((void **) (new_var2 + 0x28)))) + 0xEC))) == (-2))
  {
    sub_80873B8(arg0, 6, 8);
  }
  *((s32 **) (((s8 *) arg0) + 0x50)) = &sub_808B7D0;
}

void sub_808C2E0(void *arg0) {
    s32 temp_r5_9;

    temp_r5_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r5_9 == 0) {
        stop_sfx_80195A8(0x5E);
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xB4))) = (s16) temp_r5_9;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0x0808C601;
    }
}

void sub_808C308(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8087540(arg0);
    }
}

extern s32 sub_808B2D4;

void sub_808C324(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xC;
    sub_80873B8(arg0, 2, 0xC);
    (*(s32 **)((s8 *)(arg0) + (0x50))) = &sub_808B2D4;
}

extern s32 sub_808AEE4;

void sub_808C348(struct Entity *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x18;
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(arg0->unk2C) + (0x28)))) + (0xEC))) == -1) {
        sub_80873B8(arg0, 4, 0);
    }
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(arg0->unk2C) + (0x28)))) + (0xEC))) == -2) {
        sub_80873B8(arg0, 6, 0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x50))) = &sub_808AEE4;
}

s32 sub_80873B8(void *, s32, s32);              /* extern */
void sub_808C62C(void *arg0);
void sub_808C39C(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 5;
    sub_80873B8(arg0, 6, 5);
    (*(s32 **)((s8 *)(arg0) + (0x50))) = (s32 *) &sub_808C62C;
}

s32 sub_80873B8(void *, s32, s32);              /* extern */
void sub_808C65C(void *arg0);
void sub_808C3C0(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 5;
    sub_80873B8(arg0, 2, 5);
    (*(s32 **)((s8 *)(arg0) + (0x50))) = (s32 *) &sub_808C65C;
}

s32 sub_80873B8(void *, s32, s32);              /* extern */
void sub_808C68C(void *arg0);
void sub_808C3E4(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 5;
    sub_80873B8(arg0, 6, 5);
    (*(s32 **)((s8 *)(arg0) + (0x50))) = (s32 *) &sub_808C68C;
}

s32 sub_80873B8(void *, s32, s32);              /* extern */
void sub_808C6BC(void *arg0);
void sub_808C408(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 5;
    sub_80873B8(arg0, 2, 5);
    (*(s32 **)((s8 *)(arg0) + (0x50))) = (s32 *) &sub_808C6BC;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808A5DC;

void sub_808C42C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x80))) = 0;
    (*(s16 *)((s8 *)((arg0 + 0x80)) + (0x2C))) = 0;
    sub_8082E1C(arg0, 2, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808A5DC;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C454.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_80873B8(void *, s32, s32);              /* extern */
void sub_808C724(void *arg0);
void sub_808C4C8(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 3;
    sub_80873B8(arg0, 7, 3);
    (*(s32 **)((s8 *)(arg0) + (0x50))) = (s32 *) &sub_808C724;
}

s32 sub_80873B8(void *, s32, s32);              /* extern */
void sub_808C754(void *arg0);
void sub_808C4EC(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 3;
    sub_80873B8(arg0, 2, 3);
    (*(s32 **)((s8 *)(arg0) + (0x50))) = (s32 *) &sub_808C754;
}

void sub_808C510(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_807C298(arg0);
    }
}

s32 sub_810DD7C(void *, void *, s32);           /* extern */
extern s32 sub_808A32C;
void sub_808C52C(void *arg0)
{
  int new_var;
  u16 temp_r1_26;
  void *temp_r2_43;
  void *temp_r2_8;
  new_var = -7;
  temp_r2_8 = *((void **) (((s8 *) arg0) + 0x2C));
  if ((!(0x80 & (*((u8 *) (((s8 *) temp_r2_8) + 0x76))))) && ((*((s32 *) (((s8 *) temp_r2_8) + 0x18))) == 0))
  {
    sub_810DD7C(arg0, temp_r2_8, 0xFF);
  }
  temp_r1_26 = *((u16 *) (((s8 *) arg0) + 0xAC));
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (u16) (temp_r1_26 - 1);
  if (((s32) (temp_r1_26 << 0x10)) <= 0)
  {
    sub_8082E1C(arg0, 7, 0, 0);
    sub_8082E1C(*((void **) (((s8 *) arg0) + 0x30)), 2, 0, 0);
    temp_r2_43 = *((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x30)))) + 8));
    *((u8 *) (((s8 *) temp_r2_43) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_43) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_808A32C;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C598.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C600.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_808C62C(void *arg0)
{
  void *temp_r2_12;
  s32 **new_var2;
  int new_var;
  if (1)
  {
    new_var = 8;
    sub_8082E1C(arg0, 7, 0, 0);
    temp_r2_12 = *((void **) (((s8 *) arg0) + new_var));
    *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) ((-7) & (*(((s8 *) temp_r2_12) + 0x12)));
  }
  *((s16 *) (((s8 *) arg0) + 0xAC)) = 0x2D;
  new_var2 = (s32 **) (((s8 *) arg0) + 0x4C);
  if (1)
  {
    *new_var2 = (s32 *) &sub_808C7B8;
  }
}

void sub_808C65C(void *arg0)
{
  s32 **new_var;
  void *temp_r2_12;
  sub_8082E1C(arg0, 3, 0, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) ((-7) & (*(((s8 *) temp_r2_12) + 0x12)));
  temp_r2_12 = (s8 *) arg0;
  *((s16 *) (temp_r2_12 + 0xAC)) = 0x2D;
  new_var = (s32 **) (temp_r2_12 + 0x4C);
  *new_var = (s32 *) &sub_808C7E4;
}

void sub_808C68C(void *arg0)
{
  void *temp_r2_12;
  if (1)
  {
    sub_8082E1C(arg0, 7, 0, 0);
    temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) ((-7) & (*(((s8 *) temp_r2_12) + 0x12)));
  }
  *((s16 *) (((s8 *) arg0) + 0xAC)) = 0x2D;
  *((s32 **) ((temp_r2_12 = (s8 *) arg0) + 0x4C)) = (s32 *) &sub_808C810;
}

void sub_808C6BC(void *arg0)
{
  void *temp_r2_12;
  sub_8082E1C(arg0, 3, 0, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) ((-7) & (*(((s8 *) temp_r2_12) + 0x12)));
  *((s16 *) (((s8 *) arg0) + 0xAC)) = 0x2D;
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_808C83C;
}

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_807F4FC(void *);                        /* extern */
s32 sub_80873B8(void *, s32, s32);              /* extern */
extern s32 sub_808C868;

void sub_808C6EC(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x81);
        sub_807F4FC(arg0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x18;
        sub_80873B8(arg0, 3, 0);
        (*(s32 **)((s8 *)(arg0) + (0x50))) = &sub_808C868;
    }
}

void sub_808C724(void *arg0)
{
  void *temp_r2_12;
  sub_8082E1C(arg0, 8, 0, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) ((-7) & (*(((s8 *) temp_r2_12) + 0x12)));
  *((s16 *) (((s8 *) arg0) + 0xAC)) = 0xC;
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_808C8E0);
}

void sub_808C754(void *arg0)
{
  void *temp_r2_12;
  long long new_var;
  sub_8082E1C(arg0, 3, 0, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  new_var = -7;
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r2_12) + 0x12))));
  *((s16 *) (((s8 *) arg0) + 0xAC)) = 0xC;
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_808C90C);
}

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_80873B8(void *, s32, s32);              /* extern */
void sub_808C938(void *arg0);
void sub_808C784(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x6C);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x18;
        sub_80873B8(arg0, 3, 0x20);
        (*(s32 **)((s8 *)(arg0) + (0x50))) = (s32 *) &sub_808C938;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808AA60;

void sub_808C7B8(struct Entity *arg0) {
    u16 temp_r1_9;

    temp_r1_9 = (*(u16 *)((s8 *)(arg0) + (0xAC)));
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) (temp_r1_9 - 1);
    if ((s32) (temp_r1_9 << 0x10) <= 0) {
        sub_8082E1C(arg0, 8, 0, 0);
        arg0->handler = &sub_808AA60;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808A8F8;

void sub_808C7E4(struct Entity *arg0) {
    u16 temp_r1_9;

    temp_r1_9 = (*(u16 *)((s8 *)(arg0) + (0xAC)));
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) (temp_r1_9 - 1);
    if ((s32) (temp_r1_9 << 0x10) <= 0) {
        sub_8082E1C(arg0, 4, 0, 0);
        arg0->handler = &sub_808A8F8;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808A7B0;

void sub_808C810(struct Entity *arg0) {
    u16 temp_r1_9;

    temp_r1_9 = (*(u16 *)((s8 *)(arg0) + (0xAC)));
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) (temp_r1_9 - 1);
    if ((s32) (temp_r1_9 << 0x10) <= 0) {
        sub_8082E1C(arg0, 8, 0, 0);
        arg0->handler = &sub_808A7B0;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808A660;

void sub_808C83C(struct Entity *arg0) {
    u16 temp_r1_9;

    temp_r1_9 = (*(u16 *)((s8 *)(arg0) + (0xAC)));
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) (temp_r1_9 - 1);
    if ((s32) (temp_r1_9 << 0x10) <= 0) {
        sub_8082E1C(arg0, 4, 0, 0);
        arg0->handler = &sub_808A660;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C868.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808A4D0;

void sub_808C8E0(struct Entity *arg0) {
    u16 temp_r1_9;

    temp_r1_9 = (*(u16 *)((s8 *)(arg0) + (0xAC)));
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) (temp_r1_9 - 1);
    if ((s32) (temp_r1_9 << 0x10) <= 0) {
        sub_8082E1C(arg0, 9, 0, 0);
        arg0->handler = &sub_808A4D0;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808A3C4;

void sub_808C90C(struct Entity *arg0) {
    u16 temp_r1_9;

    temp_r1_9 = (*(u16 *)((s8 *)(arg0) + (0xAC)));
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) (temp_r1_9 - 1);
    if ((s32) (temp_r1_9 << 0x10) <= 0) {
        sub_8082E1C(arg0, 5, 0, 0);
        arg0->handler = &sub_808A3C4;
    }
}

void sub_808C938(void *arg0)
{
  void *temp_r2_12;
  sub_8082E1C(arg0, 4, 0, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) ((-7) & (*(((s8 *) temp_r2_12) + 0x12)));
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_808C968);
  *((s16 *) (((s8 *) arg0) + 0xAC)) = 0x1E;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808A27C;

void sub_808C968(struct Entity *arg0) {
    u16 temp_r1_9;

    temp_r1_9 = (*(u16 *)((s8 *)(arg0) + (0xAC)));
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) (temp_r1_9 - 1);
    if ((s32) (temp_r1_9 << 0x10) <= 0) {
        sub_8082E1C(arg0, 5, 0, 0);
        arg0->handler = &sub_808A27C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C994.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808CAC4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808CB60.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808CC08.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808CCD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808CD50.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808CDD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808CEAC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808CF94.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808D084.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808D1D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808D36C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808D408.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808D4E0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808D5CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808D6BC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808D804.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808D9A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808DA40.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808DAD8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808DB74.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808DC10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_808DCB0(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

void sub_808DCDC(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x2000, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_808CDD4(void *);                        /* extern */
s32 sub_808D408(void *);                        /* extern */

void sub_808DD04(void *arg0) {
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC))) == -1) {
        sub_808CDD4(arg0);
        return;
    }
    sub_808D408(arg0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808DD2C.s\"");
#else
s32 sub_807C298();                              /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_808DD2C(void *arg0) {
    void *temp_r1_14;
    void *temp_r2_32;
    void *temp_r2_38;

    if ((6 & (*(u8 *)((s8 *)(arg0) + (0x76)))) == 2) {
        temp_r1_14 = (*(void **)((s8 *)(arg0) + (0x28)));
        if (temp_r1_14 != NULL) {
            (*(u8 *)((s8 *)(temp_r1_14) + (0x111))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r1_14) + (0x111))));
        }
        if ((*(s32 *)((s8 *)(arg0) + (0x30))) != 0) {
            sub_807C298();
            (*(s32 *)((s8 *)(arg0) + (0x30))) = 0;
        }
        temp_r2_32 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_32) + (0x11))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_32) + (0x11))));
        temp_r2_38 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_38) + (0x12))) = (u8) (-0x11 & (*(u8 *)((s8 *)(temp_r2_38) + (0x12))));
        (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x20))) = 0x10;
        sub_8082E1C(arg0, 0, -1, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808DD9C.s\"");
#else
void sub_808DE44(void *arg0);                       /* extern */

s32 sub_808DD9C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0x084FE9A4;
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + 0x3C)) + (0x2A)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_808DE44;
    return 1;
}
#endif

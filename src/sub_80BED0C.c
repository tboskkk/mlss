#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80BED0C needs.

asm_unified(".include \"asm/macros.inc\"");


extern s32 sub_80B992C;

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BED0C.s\"");
#else
extern void sub_80BF3BC();
extern void sub_80BED8C();

void sub_80BED0C(void* p0)
{
    u32* r3 = (u32*)p0;
    u32** r2 = (u32**)((u8*)p0 + 0x2C);
    u32* r0 = *(u32**)0x03000FD8;
    r0 = *(u32**)((u8*)r0 + 0x70);
    r0 += 0x08;
    u32* r12 = r0;
    r0 = *(u32**)0x0300034C;
    u16 r1 = *(u16*)((u8*)r0 + 0x3E);
    r0 = 0x03;
    r0 &= r1;
    if (r0 == 0)
        goto _080BED3E;
    r0 = (u32*)((u8*)p0 + 0x76);
    r0 = *(u8*)r0;
    r1 = 0x06;
    r1 &= r0;
    if (r1 == 0x02)
        goto _080BED3A;
    if (r1 != 0x04)
        goto _080BED3E;
_080BED3A:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_80BF3BC;
_080BED3E:
    r0 = *(u32*)((u8*)(*r2) + 0x4C);
    if (r0 == 0)
        goto _080BED62;
    r0 = *(u32*)((u8*)(*r2) + 0x40);
    u32* r1 = *(u32**)((u8*)(*r2) + 0x18);
    if (r0 < (u32)r1)
        goto _080BED72;
    r0 = r12;
    r0 += 0xB2;
    u16 r2_ = *(u16*)((u8*)r0 + 0x0);
    r0 = (u32)r1;
    if (r0 < 0)
        r0 += 0xFF;
    r0 >>= 8;
    if (r2_ < (s16)r0)
        goto _080BED72;
_080BED62:
    r2 = (u32*)((u8*)r12 + 0xAE);
    u16 r1_ = *(u16*)((u8*)r2 + 0x00);
    r0 = 0x00000FFF;
    r0 &= r1_;
    *(u16*)((u8*)r2 + 0x00) = (u16)r0;
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_80BED8C;
_080BED72:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BED8C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BF3BC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BF5B0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BF628.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BF72C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BF848.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BF8F4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BF9F8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BFC90.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80BFEB4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C0610.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C0718.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80BE8D0;
void sub_80C0930(void *arg0)
{
  s32 temp_r1_16;
  void *temp_r0_10;
  void **new_var;
  void *temp_r2_27;
  void *temp_r4_12;
  temp_r0_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r4_12 = temp_r0_10 + 8;
  temp_r1_16 = 6 & (*((u8 *) (((s8 *) temp_r0_10) + 0x7E)));
  if ((temp_r1_16 == 2) || (temp_r1_16 == 4))
  {
    sub_8082E1C(temp_r4_12, 0xF, 0x2062, 0);
    new_var = (void **) (((s8 *) temp_r4_12) + 8);
    temp_r2_27 = *new_var;
    *((u8 *) (((s8 *) temp_r2_27) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_27) + 0x12))) | 2);
  }
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80BE8D0;
}

s32 sub_8087CE4();                              /* extern */
extern s32 sub_80C0CC0;

void sub_80C0980(struct Entity *arg0) {
    void *temp_r5_8;

    temp_r5_8 = arg0->unk2C;
    sub_8087CE4();
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x79)))) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
        (*(s32 **)((s8 *)(temp_r5_8) + (0x4C))) = &sub_80C0CC0;
    }
}

extern s32 sub_80BCF60;
void sub_80C09AC(void *arg0)
{
  s32 temp_r1_23;
  void *temp_r2_10;
  void *temp_r2_34;
  void *temp_r4_12;
  temp_r2_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r4_12 = temp_r2_10 + 8;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r4_12) + 8)))) + 0x12))))
  {
    temp_r1_23 = 6 & (*((u8 *) (((s8 *) temp_r2_10) + 0x7E)));
    if ((temp_r1_23 == 2) || (temp_r1_23 == 4))
    {
      sub_8082E1C(temp_r4_12, 0xE, 0x2062, 0);
      temp_r2_34 = *((void **) (((s8 *) temp_r4_12) + 8));
      *((u8 *) (((s8 *) temp_r2_34) + 0x12)) = (u8) ((-7) & (*(((s8 *) temp_r2_34) + 0x12)));
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80BCF60;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C0A08.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

extern s32 sub_80BC044;
void sub_80C0A58(void *arg0)
{
  int new_var;
  s32 temp_r1_23;
  void *temp_r2_10;
  void *temp_r2_34;
  void *temp_r4_12;
  temp_r2_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  temp_r4_12 = temp_r2_10 + 8;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r4_12) + 8)))) + 0x12))))
  {
    new_var = -7;
    temp_r1_23 = 6 & (*((u8 *) (((s8 *) temp_r2_10) + 0x7E)));
    if ((temp_r1_23 == 2) || (temp_r1_23 == 4))
    {
      sub_8082E1C(temp_r4_12, 6, 0x2033, 0);
      temp_r2_34 = *((void **) (((s8 *) temp_r4_12) + 8));
      *((u8 *) (((s8 *) temp_r2_34) + 0x12)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r2_34) + 0x12))));
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80BC044;
  }
}

extern s32 sub_80BB584;
void sub_80C0AB4(void *arg0)
{
  s32 temp_r1_20;
  void *temp_r2_31;
  void *temp_r4_10;
  void *new_var;
  void *temp_r5_12;
  int new_var2;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r5_12 = temp_r4_10 + 8;
  new_var2 = -7;
  play_sfx_80195B4(0x38, -1);
  temp_r1_20 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
  if ((temp_r1_20 == 2) || (temp_r1_20 == 4))
  {
    sub_8082E1C(temp_r5_12, 0xC, 0x2062, 0);
    temp_r2_31 = *((void **) (((s8 *) temp_r5_12) + 8));
    new_var = temp_r2_31;
    *((u8 *) (((s8 *) new_var) + 0x12)) = (u8) (2 | (new_var2 & (*((u8 *) (((s8 *) new_var) + 0x12)))));
  }
  *((s8 *) (((s8 *) temp_r5_12) + 0x74)) = 0;
  *((s8 *) (((s8 *) (temp_r5_12 + 0x74)) + 1)) = 0;
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80BB584;
}

extern s32 sub_80BA6F8;
void sub_80C0B1C(void *arg0)
{
  s32 temp_r1_23;
  void *temp_r2_10;
  int new_var;
  void *temp_r2_34;
  void *temp_r4_12;
  temp_r2_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  temp_r4_12 = temp_r2_10 + 8;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r4_12) + 8)))) + 0x12))))
  {
    new_var = -7;
    temp_r1_23 = 6 & (*((u8 *) (((s8 *) temp_r2_10) + 0x7E)));
    if ((temp_r1_23 == 2) || (temp_r1_23 == 4))
    {
      sub_8082E1C(temp_r4_12, 4, 0x2024, 0);
      temp_r2_34 = *((void **) (((s8 *) temp_r4_12) + 8));
      *((u8 *) (((s8 *) temp_r2_34) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_34) + 0x12)))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80BA6F8;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C0B7C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_80884AC(void *);                        /* extern */
extern s32 sub_80B99A0;
void sub_80C0BE4(void *arg0)
{
  s8 *new_var;
  s32 temp_r1_30;
  void *temp_r2_41;
  int new_var2;
  void *temp_r4_10;
  void *temp_r5_12;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  temp_r5_12 = temp_r4_10 + 8;
  sub_80884AC(temp_r5_12);
  new_var = ((s8 *) temp_r5_12) + 8;
  new_var2 = -7;
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
  {
    play_sfx_80195B4(0xAF, -1);
    temp_r1_30 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
    if ((temp_r1_30 == 2) || (temp_r1_30 == 4))
    {
      sub_8082E1C(temp_r5_12, 0, 0x2024, 0);
      temp_r2_41 = *((void **) new_var);
      *((u8 *) (((s8 *) temp_r2_41) + 0x12)) = (u8) ((new_var2 & (*((u8 *) (((s8 *) temp_r2_41) + 0x12)))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80B99A0;
  }
}

void sub_80C0C54(void *arg0)
{
  unsigned int new_var;
  s32 temp_r1_26;
  void *temp_r2_38;
  void *temp_r2_44;
  void *temp_r4_10;
  void *temp_r5_12;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80B992C;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C0CC0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C0CFC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C0D90.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C0F30.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

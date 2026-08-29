#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80C8A7C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C8A7C.s\"");
#else
extern void sub_80C8AF0();

void sub_80C8A7C(u32* p0)
{
    u32* r0;
    u32* r1;
    u32* r4;
    u32* r5;
    u8* r2;
    u16 r1_2;
    u16 r0_2;
    u16 r0_3;
    u16 r1_3;
    u16 r0_4;
    
    r0 = (u32*)0x03000FD8;
    r0 = *(u32**)r0;
    r1 = (u32*)((u8*)r0 + 0x70);
    r4 = (u32*)((u8*)r0 + 0x74);
    r5 = (u32*)((u8*)r1 + 0x54);
    
    if (*(u32**)r5 == 0)
    {
        r0 = (u32*)((u8*)r4 + 0x7E);
        r0_2 = *(u8*)r0;
        r1_2 = r0_2 & 0x06;
        if (r1_2 == 0x02)
            goto _080C8AA0;
        if (r1_2 != 0x04)
            goto _080C8AD0;
_080C8AA0:
        r2 = (u8*)0x03001038;
        r0 = (u32*)0x0819832C;
        r1 = (u32*)0x08198220;
        r0_3 = *(u32*)r0 - *(u32*)r1;
        r2 = *(u8**)r2;
        r2 = (u8*)((u8*)r2 + r0_3);
        r0_4 = 0x80 << 7;
        r1_3 = 0x10;
        (*(void(*)(u32, u32))r2)(r0_4, r1_3);
        *(u16*)((u8*)r4 + 0x82) = r0;
        *(u16*)((u8*)r4 + 0x86) = *(u16*)r5;
        r1 = (u16*)((u8*)r4 + 0x81);
        r0_2 = *(u8*)r1;
        r0_2 = ~0x21 & r0_2;
        *(u8*)r1 = r0_2;
    }
_080C8AD0:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_80C8AF0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C8AF0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C8BA0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C8C64.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C92E8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C9384.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C943C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C954C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C964C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C971C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C9854.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C9A4C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C9AEC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C9BA8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C9D2C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CA510.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CA5D8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_807E680(void *, s32, s32, s32, s32);    /* extern */
s32 sub_807EA24(void *);                        /* extern */
s32 sub_807F448();                              /* extern */
s32 sub_80CB890(void *);                        /* extern */
extern s32 sub_80CA510;
void sub_80CAA98(void *arg0)
{
  s32 temp_r0_58;
  s32 new_var2;
  s32 temp_r0_64;
  s32 temp_r0_92;
  s32 temp_r1_109;
  s32 temp_r1_21;
  s32 temp_r1_81;
  s32 var_r0_37;
  int new_var;
  s32 var_r0_48;
  void *temp_r0_12;
  void *temp_r4_13;
  void *temp_r5_15;
  void *temp_r6_18;
  s32 new_var3;
  temp_r0_12 = *((void **) 0x03000FD8);
  temp_r4_13 = (void *) (*((void **) (((s8 *) temp_r0_12) + 0x70)));
  temp_r5_15 = (void *) (temp_r4_13 + 8);
  temp_r6_18 = (void *) ((*((s32 *) (((s8 *) temp_r0_12) + 0x74))) + 8);
  temp_r1_21 = *((s32 *) (((s8 *) temp_r4_13) + 0xA8));
  if (temp_r1_21 != 0)
  {
    sub_807E680(temp_r6_18, temp_r1_21, 0, -0x30, 0);
  }
  var_r0_37 = (*((s16 *) (((s8 *) temp_r4_13) + 0xB6))) * 0xE6;
  if (var_r0_37 < 0)
  {
    var_r0_37 += 0xFF;
  }
  *((s16 *) (((s8 *) temp_r4_13) + 0xB6)) = (s16) (var_r0_37 >> 8);
  var_r0_48 = (*((s16 *) (((s8 *) temp_r4_13) + 0xB8))) * 0xE6;
  if (var_r0_48 < 0)
  {
    var_r0_48 += 0xFF;
  }
  new_var2 = var_r0_48;
  *((s16 *) (((s8 *) temp_r4_13) + 0xB8)) = (s16) (new_var2 >> 8);
  temp_r0_58 = (*((s32 *) (((s8 *) temp_r5_15) + 0x10))) + (*((s16 *) (((s8 *) temp_r4_13) + 0xB6)));
  *((s32 *) (((s8 *) temp_r5_15) + 0x10)) = temp_r0_58;
  *((s32 *) (((s8 *) temp_r6_18) + 0x10)) = temp_r0_58;
  temp_r0_64 = (*((s32 *) (((s8 *) temp_r5_15) + 0x14))) + (*((s16 *) (((s8 *) temp_r4_13) + 0xB8)));
  *((s32 *) (((s8 *) temp_r5_15) + 0x14)) = temp_r0_64;
  *((s32 *) (((s8 *) temp_r6_18) + 0x14)) = temp_r0_64;
  if ((*((s32 *) (((s8 *) temp_r4_13) + 0xA8))) != 0)
  {
    sub_80CB890(temp_r6_18);
    new_var = 0x0300034C;
    if (0xF3 & (*((u16 *) (((s8 *) ((void *) new_var)) + 0x3C))))
    {
      *((s32 *) (((s8 *) temp_r4_13) + 0xA8)) = 0;
      new_var3 = *((s32 *) (((s8 *) temp_r5_15) + 0x2C));
      temp_r1_81 = *((s32 *) (((s8 *) temp_r6_18) + 0x2C));
      if (new_var3 != temp_r1_81)
      {
        *((s32 *) (((s8 *) temp_r5_15) + 0x2C)) = temp_r1_81;
      }
      sub_807EA24(temp_r6_18);
      sub_807F448();
    }
  }
  temp_r0_92 = *((s32 *) (((s8 *) temp_r5_15) + 0x9C));
  if (temp_r0_92 > 0)
  {
    *((s32 *) (((s8 *) temp_r5_15) + 0x9C)) = (s32) (temp_r0_92 - 1);
    return;
  }
  sub_807EA24(temp_r6_18);
  sub_807F448();
  temp_r1_109 = 6 & (*((u8 *) (((s8 *) arg0) + 0x76)));
  if ((temp_r1_109 == 2) || (temp_r1_109 == 4))
  {
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80CA510;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CAB8C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CACCC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CB444.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CB59C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CB6AC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CB780.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CB890.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CBAE4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CBDD8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CBE70.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CBF64.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CC634.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CC764.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CC964.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CCA38.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CCB80.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4(void *);                        /* extern */
extern s32 sub_80CB780;
void sub_80CCD80(void *arg0)
{
  s32 temp_r1_30;
  int new_var;
  void *temp_r2_41;
  void *temp_r4_10;
  void *temp_r5_12;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  new_var = -7;
  temp_r5_12 = temp_r4_10 + 8;
  if (1)
  {
    sub_8087CE4(temp_r5_12);
    if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
    {
      play_sfx_80195B4(0x2E, -1);
      temp_r1_30 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
      if ((temp_r1_30 == 2) || (temp_r1_30 == 4))
      {
        sub_8082E1C(temp_r5_12, 0xA, 0x2035, 0);
        temp_r2_41 = *((void **) (((s8 *) temp_r5_12) + 8));
        *((u8 *) (((s8 *) temp_r2_41) + 0x12)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r2_41) + 0x12))));
      }
      *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80CB780;
    }
  }
}

extern s32 sub_80C9854;
void sub_80CCDEC(void *arg0)
{
  s32 temp_r1_23;
  void *temp_r2_10;
  void *temp_r2_34;
  void *temp_r4_12;
  int new_var;
  temp_r2_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  new_var = -7;
  temp_r4_12 = temp_r2_10 + 8;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r4_12) + 8)))) + 0x12))))
  {
    temp_r1_23 = 6 & (*((u8 *) (((s8 *) temp_r2_10) + 0x7E)));
    if ((temp_r1_23 == 2) || (temp_r1_23 == 4))
    {
      sub_8082E1C(temp_r4_12, 8, 0x2034, 0);
      temp_r2_34 = *((void **) (((s8 *) temp_r4_12) + 8));
      *((u8 *) (((s8 *) temp_r2_34) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_34) + 0x12)))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80C9854;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CCE4C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CCE7C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CCF10.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

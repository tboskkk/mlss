#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80B30D8 needs.

asm_unified(".include \"asm/macros.inc\"");



s32 sub_8082E1C();
void sub_80AC950(void *arg0);                       /* extern */

s32 sub_8087CE4();

void sub_80B328C(void *arg0);
void sub_80B30D8(void *arg0)
{
  s32 temp_r1_21;
  void *temp_r0_15;
  void *temp_r2_32;
  void *temp_r2_9;
  void *temp_r4_17;
  temp_r2_9 = *((void **) 0x03000FD8);
  *((u8 *) (((s8 *) temp_r2_9) + 0xA)) = (u8) ((*((u8 *) (((s8 *) temp_r2_9) + 0xA))) | 0xC0);
  temp_r0_15 = (void *) (*((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70)));
  temp_r4_17 = (void *) (temp_r0_15 + 8);
  temp_r1_21 = 6 & (*((u8 *) (((s8 *) temp_r0_15) + 0x7E)));
  if ((temp_r1_21 == 2) || (temp_r1_21 == 4))
  {
    sub_8082E1C(temp_r4_17, 8, 0x2032, 0);
    temp_r2_32 = (void *) (*((void **) (((s8 *) temp_r4_17) + 8)));
    *((u8 *) (((s8 *) temp_r2_32) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_32) + 0x12))) | 2);
  }
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_80B328C);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B3134.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B3140.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B314C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B3170.s\"");
#else
s32 sub_8087CE4(void *);                        /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
void sub_80AD188(void *arg0);                       /* extern */

void sub_80B3170(void *arg0) {
    s32 temp_r0_51;
    s32 temp_r0_54;
    s32 var_r1_23;
    s32 var_r2_29;
    s32 var_r3_35;
    void *temp_r4_11;
    void *temp_r5_13;
    void *temp_r7_14;

    temp_r4_11 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x74)));
    temp_r5_13 = temp_r4_11 + 8;
    temp_r7_14 = (*(void **)((s8 *)(arg0) + (0x2C)));
    sub_8087CE4(temp_r5_13);
    if (0x20 & (*(u8 *)((s8 *)(temp_r4_11) + (0x81)))) {
        var_r1_23 = (*(s32 *)((s8 *)(temp_r5_13) + (0x10)));
        if (var_r1_23 < 0) {
            var_r1_23 += 0xFF;
        }
        var_r2_29 = (*(s32 *)((s8 *)(temp_r5_13) + (0x14)));
        if (var_r2_29 < 0) {
            var_r2_29 += 0xFF;
        }
        var_r3_35 = (*(s32 *)((s8 *)(temp_r5_13) + (0x18)));
        if (var_r3_35 < 0) {
            var_r3_35 += 0xFF;
        }
        sub_80DF024(0x2FF9, var_r1_23 >> 8, var_r2_29 >> 8, var_r3_35 >> 8, temp_r5_13);
        play_sfx_80195B4(0x30, -1);
        temp_r0_51 = (*(s32 *)((s8 *)(temp_r5_13) + (0x10))) + 0x12000;
        (*(s32 *)((s8 *)(temp_r5_13) + (0x10))) = temp_r0_51;
        (*(s32 *)((s8 *)(temp_r5_13) + (0x38))) = temp_r0_51;
        temp_r0_54 = (*(s32 *)((s8 *)(temp_r7_14) + (0x14)));
        (*(s32 *)((s8 *)(temp_r5_13) + (0x14))) = temp_r0_54;
        (*(s32 *)((s8 *)(temp_r5_13) + (0x3C))) = temp_r0_54;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_80AD188;
    }
}
#endif

void sub_80B31F0(void *arg0)
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80AC950;
  }
}

s32 sub_807C298(s32);                           /* extern */
s32 sub_810D00C();                              /* extern */
void sub_80B325C(s32 arg0)
{
  s8 *new_var2;
  s32 *new_var;
  void *temp_r0_9;
  int new_var3;
  temp_r0_9 = *((void **) 0x03000FD8);
  new_var2 = (s8 *) temp_r0_9;
  new_var = (s32 *) (((s8 *) (*((void **) (new_var2 + 0x70)))) + 0x54);
  new_var3 = (*((s32 *) (new_var2 + 0x74))) + 8;
  if (((*new_var) == 0) && ((*((s32 *) (((s8 *) new_var3) + 0x4C))) == 0))
  {
    sub_810D00C();
    sub_807C298(arg0);
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_80B1508(void *arg0);                       /* extern */
void sub_80B328C(void *arg0)
{
  s32 temp_r1_30;
  void *temp_r0_9;
  int new_var;
  void *temp_r2_41;
  void *temp_r4_12;
  void *temp_r5_10;
  new_var = -7;
  temp_r0_9 = *((void **) 0x03000FD8);
  temp_r5_10 = *((void **) (((s8 *) temp_r0_9) + 0x70));
  temp_r4_12 = temp_r5_10 + 8;
  sub_8087CE4((*((s32 *) (((s8 *) temp_r0_9) + 0x74))) + 8);
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r4_12) + 8)))) + 0x12))))
  {
    play_sfx_80195B4(0x53, -1);
    temp_r1_30 = 6 & (*((u8 *) (((s8 *) temp_r5_10) + 0x7E)));
    if ((temp_r1_30 == 2) || (temp_r1_30 == 4))
    {
      sub_8082E1C(temp_r4_12, 9, 0x2032, 0);
      temp_r2_41 = *((void **) (((s8 *) temp_r4_12) + 8));
      *((u8 *) (((s8 *) temp_r2_41) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_41) + 0x12)))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80B1508;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B32FC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80B3390.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

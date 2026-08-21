#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809B3DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B3DC.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_809B3DC(void *arg0) {
    s32 temp_r0_25;
    void *temp_r1_8;

    temp_r1_8 = (*(void **)((s8 *)(arg0) + (8)));
    if ((*(u8 *)((s8 *)(temp_r1_8) + (0x21))) != 0) {
        if (8 & (*(u8 *)((s8 *)(temp_r1_8) + (0x12)))) {
            sub_8082E1C(arg0, 0, 0, 0);
            goto block_3;
        }
    } else {
block_3:
        temp_r0_25 = (*(s32 *)((s8 *)(arg0) + (0x30)));
        if (temp_r0_25 == 0) {
            (*(s32 *)((s8 *)(arg0) + (0x4C))) = temp_r0_25;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B410.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B478.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_809B1A0;

void sub_809B478(void *arg0) {
    s32 temp_r5_13;
    s32 temp_r6_12;
    s32 var_r1_34;
    void *temp_r2_45;

    temp_r6_12 = (*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x70))) + 8;
    temp_r5_13 = (*(s32 *)((s8 *)(arg0) + (0x2C)));
    if (((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) || (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12))))) {
        play_sfx_80195B4(0x65, -1);
        if (temp_r5_13 == temp_r6_12) {
            var_r1_34 = 3;
        } else {
            var_r1_34 = 6;
        }
        sub_8082E1C(arg0, var_r1_34, 0x40BF, 0);
        temp_r2_45 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_45) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_45) + (0x12)))) | 2);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809B1A0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B504.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B558.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B5A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B610.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_810DD7C(void *, void *, s32);           /* extern */
extern s32 sub_809B738;
void sub_809B678(void *arg0)
{
  void *temp_r2_35;
  void *temp_r2_8;
  void **new_var;
  int new_var2;
  temp_r2_35 = *((void **) (((s8 *) arg0) + 0x2C));
  temp_r2_8 = temp_r2_35;
  new_var2 = -7;
  if (((*((s32 *) (((s8 *) temp_r2_8) + 0x40))) == 0) && ((0x3E & (*((u8 *) (((s8 *) temp_r2_8) + 0x76)))) == 2))
  {
    sub_810DD7C(arg0, temp_r2_8, 0xFF);
  }
  if (8 & (*((u8 *) (((s8 *) (*(new_var = (void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 3, 0x40C2, 0);
    temp_r2_35 = *new_var;
    *((u8 *) (((s8 *) temp_r2_35) + 0x12)) = (u8) ((new_var2 & (*((u8 *) (((s8 *) temp_r2_35) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_809B738;
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_810DD7C(void *, void *, s32);           /* extern */
extern s32 sub_809B754;
void sub_809B6D8(void *arg0)
{
  void *temp_r2_35;
  void *temp_r2_8;
  temp_r2_8 = *((void **) (((s8 *) arg0) + 0x2C));
  if (((*((s32 *) (((s8 *) temp_r2_8) + 0x40))) == 0) && ((0x3E & (*((u8 *) (((s8 *) temp_r2_8) + 0x76)))) == 2))
  {
    sub_810DD7C(arg0, temp_r2_8, 0xFF);
  }
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 3, 0x40C2, 0);
    temp_r2_35 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_35) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_35) + 0x12))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_809B754;
  }
}

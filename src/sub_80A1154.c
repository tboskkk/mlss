#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A1154 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A1154.s\"");
#else
extern s32 sub_80A11AC;

void sub_80A1154(void *arg0) {
    s32 temp_r1_21;
    u8 *temp_r2_36;
    void *temp_r3_10;

    temp_r3_10 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x70)));
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r3_10) + (0x10)))) + (0x12)))) {
        temp_r1_21 = 6 & (*(u8 *)((s8 *)(temp_r3_10) + (0x7E)));
        if ((temp_r1_21 == 2) || (temp_r1_21 == 4)) {
            (*(s16 *)((s8 *)(temp_r3_10) + (0x82))) = 0x4000;
            (*(s16 *)((s8 *)(temp_r3_10) + (0x86))) = 0;
            temp_r2_36 = (temp_r3_10 + 0x82) - 1;
            *temp_r2_36 &= -0x21;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80A11AC;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A11AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A1264.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A139C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8086764(void *);                        /* extern */
s32 sub_810D738(void *, void *, s32, s32, s32);     /* extern */
extern s32 sub_80A1628;
extern s32 sub_80A1AB8;
void sub_80A158C(void *arg0)
{
  s32 temp_r0_59;
  int new_var;
  s32 temp_r1_28;
  void *temp_r4_14;
  void *temp_r5_13;
  int new_var2;
  temp_r5_13 = (void *) ((*((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + 0x70))) + 8);
  new_var2 = -0x80;
  new_var = 0x100;
  temp_r4_14 = *((void **) (((s8 *) arg0) + 0x2C));
  if ((((*((s32 **) (((s8 *) temp_r4_14) + 0x4C))) == ((void *) 0)) && (((s32) (*((s32 *) (((s8 *) temp_r4_14) + 0x40)))) > 0x800)) && (((*((void **) (((s8 *) temp_r4_14) + 0x2C)) = arg0, temp_r1_28 = 6 & (*((u8 *) (((s8 *) temp_r4_14) + 0x76))), temp_r1_28 == 2)) || (temp_r1_28 == 4)))
  {
    *((s32 **) (((s8 *) temp_r4_14) + 0x4C)) = &sub_80A1AB8;
  }
  play_sfx_80195B4(0x63, -1);
  *((u8 *) (((s8 *) temp_r5_13) + 0xCC)) = (u8) (new_var2 & (*((u8 *) (((s8 *) temp_r5_13) + 0xCC))));
  *((s16 *) (((s8 *) temp_r5_13) + 0xCA)) = new_var;
  temp_r0_59 = sub_810D738(temp_r5_13, temp_r4_14, 0, 0, 0x040A1100);
  *((u16 *) (((s8 *) temp_r5_13) + 0x24)) = (u16) ((*((u16 *) (((s8 *) temp_r5_13) + 0x24))) + 1);
  if (temp_r0_59 == 1)
  {
    sub_8086764(temp_r5_13);
    return;
  }
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80A1628;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A1628.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806F7D8 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806F7D8.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_806F7D8(void *arg0) {
    s32 temp_r0_10;
    s32 temp_r0_16;
    s32 var_r0_34;

    temp_r0_10 = (*(s32 *)((s8 *)(arg0) + (0x8C)));
    temp_r0_16 = temp_r0_10 + 0xFFFFF400;
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = temp_r0_16;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0xC))) = (s16) temp_r0_16;
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x8C))) < 0) {

    }
    var_r0_34 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_34 < 0) {
        var_r0_34 += 0x3F;
    }
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) (0xE00 - ((var_r0_34 >> 6) * 2));
    if ((s32) ((*(s32 *)((s8 *)(arg0) + (0x8C))) & 0xFF00) >= (s32) (temp_r0_10 & 0xFF00)) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0xC))) = 0;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806F84C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_806F978;
void sub_806F90C(void *arg0)
{
  s8 *new_var;
  unsigned int temp_r0_17;
  void *temp_r2_45;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    temp_r0_17 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
    *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_17;
    if (((s32) (temp_r0_17 << 0x10)) <= 0)
    {
      if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x2C)))) + 0x28)))) + 0xEC))) == (-1))
      {
        sub_8082E1C(arg0, 3, 0, 0);
      }
      else
      {
        sub_8082E1C(arg0, 0x21, 0, 0);
      }
      temp_r2_45 = *((void **) (((s8 *) arg0) + 8));
      *((u8 *) (((s8 *) temp_r2_45) + 0x11)) = (u8) ((-0x41) & (*(((s8 *) temp_r2_45) + 0x11)));
      new_var = (s8 *) arg0;
      *((u16 *) (new_var + 0xAC)) = 0x3CU;
      *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_806F978;
    }
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806F978.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806FA00.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806FADC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806FBD0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806FC68.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806FCF0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80700C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070168.s\"");
#else
s32 sub_807C298(void *);                        /* extern */

void sub_8070168(void *arg0) {
    s32 temp_r0_46;
    s32 temp_r1_88;
    s32 temp_r2_50;
    s32 var_r0_107;
    s32 var_r0_99;
    s32 var_r1_72;

    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (((s32) ((*(s32 *)((s8 *)(arg0) + (0xA4))) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) / (s32) (*(s32 *)((s8 *)(arg0) + (0xA0)))) + (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8));
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (((s32) ((*(s32 *)((s8 *)(arg0) + (0xA8))) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) / (s32) (*(s32 *)((s8 *)(arg0) + (0xA0)))) + (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8));
    temp_r0_46 = (*(s32 *)((s8 *)(arg0) + (0xA0)));
    temp_r2_50 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) - ((s32) (temp_r0_46 + ((u32) temp_r0_46 >> 0x1F)) >> 1);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((temp_r2_50 * temp_r2_50 * (*(s32 *)((s8 *)(arg0) + (0x9C)))) + (*(s32 *)((s8 *)(arg0) + (0x88))) + (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8));
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xAC))) + 1);
    var_r1_72 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r1_72 < 0) {
        var_r1_72 += 0xFF;
    }
    if ((s32) (var_r1_72 >> 8) < -0x20) {
        sub_807C298(arg0);
        return;
    }
    temp_r1_88 = (*(s32 *)((s8 *)(arg0) + (0xA0)));
    if (((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) >= (s32) ((s32) (temp_r1_88 + ((u32) temp_r1_88 >> 0x1F)) >> 1)) && ((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) <= 0)) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = 0U;
        var_r0_99 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r0_99 < 0) {
            var_r0_99 += 0xFF;
        }
        (*(s16 *)((s8 *)(arg0) + (0xAE))) = (s16) (var_r0_99 >> 8);
        var_r0_107 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r0_107 < 0) {
            var_r0_107 += 0xFF;
        }
        (*(s16 *)((s8 *)(arg0) + (0xB0))) = (s16) (var_r0_107 >> 8);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070248.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8070B70;

void sub_80703B0(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        if ((*(s32 *)((s8 *)(arg0) + (0xA8))) != 0) {
            sub_8082E1C(arg0, 0x29, 0, 0);
        } else {
            sub_8082E1C(arg0, 0x2A, 0, 0);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8070B70;
    }
}

extern s32 sub_80700C8;

void sub_80703F0(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0x27, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 1;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80700C8;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070424.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070494.s\"");
#else
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
s32 sub_810DD7C(void *, s32, s32);              /* extern */
extern s32 sub_806FC68;

s32 sub_8070494(void *arg0, s32 arg1) {
    s32 var_r1_18;
    s32 var_r2_24;
    s32 var_r3_30;

    play_sfx_80195B4(0x12B, -1);
    sub_810DD7C(arg0, arg1, 0xFF);
    var_r1_18 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r1_18 < 0) {
        var_r1_18 += 0xFF;
    }
    var_r2_24 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r2_24 < 0) {
        var_r2_24 += 0xFF;
    }
    var_r3_30 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r3_30 < 0) {
        var_r3_30 += 0xFF;
    }
    sub_80DF024(0x2012, var_r1_18 >> 8, var_r2_24 >> 8, var_r3_30 >> 8, arg0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806FC68;
    return 0;
}
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_80704F0(void *arg0) {
    s32 temp_r5_9;

    temp_r5_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r5_9 == 0) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = temp_r5_9;
    }
}

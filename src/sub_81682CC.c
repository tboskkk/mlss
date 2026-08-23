#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81682CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81682CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168390.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168580.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816863C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816881C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168910.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168CAC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168D74.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168EB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8169440.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8161C9C(void *, s32, s32);              /* extern */
s32 sub_8163A6C(void *);                        /* extern */
s32 sub_8163E0C(s32, s32, s32, s32);                /* extern */
void sub_81694F0(void *arg0)
{
  s16 *var_r0_23;
  s32 temp_r2_11;
  s32 var_r1_15;
  u16 temp_r0_54;
  void *temp_r3_49;
  int new_var;
  sub_8163A6C(*((void **) (((s8 *) arg0) + 0xC)));
  temp_r2_11 = *((s32 *) (((s8 *) arg0) + 4));
  if (temp_r2_11 < ((s32) (*((s32 *) (((s8 *) arg0) + 0)))))
  {
    var_r1_15 = *((s32 *) (((s8 *) arg0) + 8));
    if (var_r1_15 != 0)
    {
      *((s32 *) (((s8 *) arg0) + 8)) = (s32) (var_r1_15 - 1);
      *((s32 *) (((s8 *) arg0) + 4)) = (s32) (temp_r2_11 + 4);
      var_r0_23 = (*((void **) (((s8 *) arg0) - -0xC))) + 0x56;
      var_r1_15 = 1;
    }
    else
    {
      new_var = temp_r2_11 + 1;
      *((s32 *) (((s8 *) arg0) + 4)) = (s32) new_var;
      var_r0_23 = (*((void **) (((s8 *) arg0) + 0xC))) + 0x56;
    }
    *var_r0_23 = (s16) var_r1_15;
    *((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0xC)))) + 0x18)) = sub_8163E0C(0x1000, 0xE000, (long) (*((s32 *) (((s8 *) arg0) + 0))), *((s32 *) (((s8 *) arg0) + 4)));
  }
  else
  {
    *((u16 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0xC)))) + 0x56)) = 0U;
  }
  temp_r3_49 = *((void **) (((s8 *) arg0) + 0xC));
  ;
  if ((*((u16 *) (((s8 *) temp_r3_49) + 0x56))) != (*((u16 *) (((s8 *) temp_r3_49) + 0x58))))
  {
    switch (*((u16 *) (((s8 *) temp_r3_49) + 0x56)))
    {
      case 0:
        sub_801E150(*((void **) (((s8 *) temp_r3_49) + 0x10)), 0xE, 0, 0, (s32) (*((u16 *) (((s8 *) temp_r3_49) + 0x56))));
        break;

      case 1:
        sub_801E150(*((void **) (((s8 *) temp_r3_49) + 0x10)), 0x14, 0, 0, 0);
        break;

    }

  }
  sub_8161C9C(*((void **) (((s8 *) arg0) + 0xC)), 0, 0);
  *((s16 *) (((s8 *) (*((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0xC)))) + 0x10)))) + 0xE)) = 0;
  sub_8161C9C(*((void **) (((s8 *) arg0) + 0x10)), 0, 0);
  *((s16 *) (((s8 *) (*((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x10)))) + 0x10)))) + 0xE)) = 4;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81695AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816994C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 process_enable(s32);                        /* extern */
s32 process_remove(void *, s32);                /* extern */
s32 sub_8150A38();                              /* extern */
s32 sub_8163280(s32, s32);                      /* extern */
s32 sub_8163308(void *, s32);                   /* extern */
s32 sub_8163528(s32, s32);                      /* extern */
s32 sub_8163804(s32, s32);                      /* extern */
s32 sub_8165144(s32, s32);                      /* extern */

void sub_8169D10(void *arg0, s32 arg1) {
    s32 temp_r0_17;
    s32 temp_r0_28;
    s32 temp_r0_67;
    s32 temp_r0_84;
    void *temp_r0_23;
    void *temp_r0_62;
    void *temp_r1_40;
    void *temp_r1_51;
    void *temp_r1_76;
    void *temp_r1_93;
    void *temp_r2_37;
    void *temp_r2_48;
    void *temp_r2_73;
    void *temp_r2_90;
    void *temp_r5_34;

    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDD198;
    sub_8018B78(2, NULL);
    *(s16 *)0x040000BA = 0;
    temp_r0_17 = (*(s32 *)((s8 *)(arg0) + (0x30)));
    if (temp_r0_17 != 0) {
        sub_8163280(temp_r0_17, 3);
    }
    temp_r0_23 = (*(void **)((s8 *)(arg0) + (0x20)));
    if (temp_r0_23 != NULL) {
        free_heap_8018DA8(temp_r0_23);
    }
    temp_r0_28 = (*(s32 *)((s8 *)(arg0) + (0x6C)));
    if (temp_r0_28 != 0) {
        sub_8163528(temp_r0_28, 3);
    }
    temp_r5_34 = (*(void **)((s8 *)(arg0) + (0x3C)));
    if (temp_r5_34 != NULL) {
        temp_r2_37 = (*(void **)((s8 *)(temp_r5_34) + (0x10)));
        if (temp_r2_37 != NULL) {
            temp_r1_40 = (*(void **)((s8 *)(temp_r2_37) + (0xC)));
            (*(s32 (**)(void *, s32))((s8 *)(temp_r1_40) + (0xC)))(temp_r2_37 + (*(s16 *)((s8 *)(temp_r1_40) + (8))), 3);
        }
        temp_r2_48 = (*(void **)((s8 *)(temp_r5_34) + (0xC)));
        if (temp_r2_48 != NULL) {
            temp_r1_51 = (*(void **)((s8 *)(temp_r2_48) + (0xC)));
            (*(s32 (**)(void *, s32))((s8 *)(temp_r1_51) + (0xC)))(temp_r2_48 + (*(s16 *)((s8 *)(temp_r1_51) + (8))), 3);
        }
        free_heap_8018DA8(temp_r5_34);
    }
    temp_r0_62 = (*(void **)((s8 *)(arg0) + (0x24)));
    if (temp_r0_62 != NULL) {
        free_heap_8018DA8(temp_r0_62);
    }
    temp_r0_67 = (*(s32 *)((s8 *)(arg0) + (0x28)));
    if (temp_r0_67 != 0) {
        sub_8163804(temp_r0_67, 3);
    }
    temp_r2_73 = (*(void **)((s8 *)(arg0) + (0x2C)));
    if (temp_r2_73 != NULL) {
        temp_r1_76 = (*(void **)((s8 *)(temp_r2_73) + (0x18)));
        (*(s32 (**)(void *, s32))((s8 *)(temp_r1_76) + (0x14)))(temp_r2_73 + (*(s16 *)((s8 *)(temp_r1_76) + (0x10))), 3);
    }
    temp_r0_84 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (temp_r0_84 != 0) {
        sub_8165144(temp_r0_84, 3);
    }
    temp_r2_90 = (*(void **)((s8 *)(arg0) + (0x1C)));
    if (temp_r2_90 != NULL) {
        temp_r1_93 = (*(void **)((s8 *)(temp_r2_90) + (0xC)));
        (*(s32 (**)(void *, s32))((s8 *)(temp_r1_93) + (0xC)))(temp_r2_90 + (*(s16 *)((s8 *)(temp_r1_93) + (8))), 3);
    }
    sub_8150A38();
    process_enable((*(s32 *)((s8 *)(arg0) + (0x14))));
    sub_8163308(arg0 + 0x70, 2);
    process_remove(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8169DFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8169F28.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816A1E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816A810.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816AE5C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816AF94.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80796B8 needs.

asm_unified(".include \"asm/macros.inc\"");






void sub_8079C0C(void *arg0);

void sub_8079C3C(void *arg0);

void sub_8079C9C(void *arg0);

s32 sub_8082E1C();
s32 sub_807C298();
void sub_80796B8(void) {
    sub_807C298();
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80796C4.s\"");
#else
extern s32 sub_8078678;

void sub_80796C4(void *arg0) {
    s32 temp_r3_9;
    void *temp_r1_17;

    temp_r3_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r3_9 == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = 0x100;
        temp_r1_17 = (arg0 + 0x9C) - 0x10;
        (*(s32 *)((s8 *)(temp_r1_17) + (0))) = 0x10;
        (*(s16 *)((s8 *)(temp_r1_17) + (0x20))) = 1;
        (*(s16 *)((s8 *)(arg0) + (0xB2))) = (s16) temp_r3_9;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8078678;
        play_sfx_80195B4(0x9C, -1);
    }
}
#endif

void sub_8079704(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807972C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079774.s\"");
#else
s32 sub_807C298(void *);                        /* extern */

void sub_8079774(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x30))) == 0) {
        sub_807C298(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80797E0.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_807F47C(void *);                        /* extern */
s32 sub_8086D80();                                  /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */

s32 sub_80797E0(void *arg0) {
    s32 var_r0_9;
    s32 var_r1_19;
    s32 var_r2_25;
    s32 var_r3_31;
    void *temp_r2_42;

    var_r0_9 = sub_8086D80();
    if (var_r0_9 == 0) {
        sub_807F47C(arg0);
        play_sfx_80195B4(0xE3, -1);
        var_r1_19 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_19 < 0) {
            var_r1_19 += 0xFF;
        }
        var_r2_25 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_25 < 0) {
            var_r2_25 += 0xFF;
        }
        var_r3_31 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_31 < 0) {
            var_r3_31 += 0xFF;
        }
        sub_80DF024(0x2AA6, var_r1_19 >> 8, var_r2_25 >> 8, var_r3_31 >> 8, arg0);
        sub_807C298(arg0);
        temp_r2_42 = (*(void **)((s8 *)(arg0) + (0x28)));
        (*(s32 *)((s8 *)(temp_r2_42) + (0xA4))) = 1;
        (*(s8 *)((s8 *)(temp_r2_42) + (0x113))) = 1;
        var_r0_9 = -1;
    }
    return var_r0_9;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079850.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */

void sub_8079850(void *arg0) {
    s32 var_r1_10;
    s32 var_r2_16;
    s32 var_r3_22;
    void *temp_r0_9;

    temp_r0_9 = (*(void **)((s8 *)(arg0) + (0x30)));
    var_r1_10 = (*(s32 *)((s8 *)(temp_r0_9) + (0x38)));
    if (var_r1_10 < 0) {
        var_r1_10 += 0xFF;
    }
    var_r2_16 = (*(s32 *)((s8 *)(temp_r0_9) + (0x3C)));
    if (var_r2_16 < 0) {
        var_r2_16 += 0xFF;
    }
    var_r3_22 = (*(s32 *)((s8 *)(temp_r0_9) + (0x40)));
    if (var_r3_22 < 0) {
        var_r3_22 += 0xFF;
    }
    sub_80DF024(0x2AA6, var_r1_10 >> 8, var_r2_16 >> 8, var_r3_22 >> 8, temp_r0_9);
    sub_807C298((*(void **)((s8 *)(arg0) + (0x30))));
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    play_sfx_80195B4(0x55, -1);
    *(s8 *)0x03000ED0 = 0;
}
#endif

void sub_80798A8(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_807C298(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80798C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_807940C;
void sub_8079BA8(void *arg0);
void sub_807991C(void *arg0) {
    s32 *temp_r0_8;
    s32 *temp_r2_21;

    temp_r0_8 = (*(s32 **)((s8 *)(arg0) + (0x30)));
    if (temp_r0_8 == NULL) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = temp_r0_8;
        return;
    }
    sub_8082E1C(arg0, 0x11, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8079BA8;
    temp_r2_21 = (*(s32 **)((s8 *)(arg0) + (0x30)));
    (*(s32 *)((s8 *)(temp_r2_21) + (0xA0))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x9C)));
    (*(s32 **)((s8 *)(temp_r2_21) + (0x4C))) = &sub_807940C;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807995C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_8078E2C;

void sub_807995C(void *arg0) {
    s32 var_r1_13;
    s32 var_r2_19;
    s32 var_r3_25;

    sub_8082E1C(arg0, 0xF, 0, 0);
    var_r1_13 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r1_13 < 0) {
        var_r1_13 += 0xFF;
    }
    var_r2_19 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r2_19 < 0) {
        var_r2_19 += 0xFF;
    }
    var_r3_25 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r3_25 < 0) {
        var_r3_25 += 0xFF;
    }
    sub_80DF024(0x2A8B, var_r1_13 >> 8, var_r2_19 >> 8, var_r3_25 >> 8, arg0);
    play_sfx_80195B4(0x119, -1);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8078E2C;
}
#endif

extern s32 sub_8078A5C;

void sub_80799B4(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, (*(s32 *)((s8 *)(arg0) + (0xA8))) + 5, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x14;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8078A5C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80799EC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079A38.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_8078524;

void sub_8079A38(void *arg0) {
    s32 var_r1_13;
    s32 var_r2_19;
    s32 var_r3_25;

    sub_8082E1C(arg0, 0x13, 0, 0);
    var_r1_13 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r1_13 < 0) {
        var_r1_13 += 0xFF;
    }
    var_r2_19 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r2_19 < 0) {
        var_r2_19 += 0xFF;
    }
    var_r3_25 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r3_25 < 0) {
        var_r3_25 += 0xFF;
    }
    sub_80DF024(0x29D2, var_r1_13 >> 8, var_r2_19 >> 8, var_r3_25 >> 8, arg0);
    play_sfx_80195B4(0x10C, -1);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8078524;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079A90.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079AD8.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8199F30();                                  /* extern */
extern s32 sub_8077704;

void sub_8079AD8(void *arg0) {
    s32 temp_r2_13;
    s32 var_r1_28;

    temp_r2_13 = sub_8199F30() & 3;
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r2_13;
    switch (temp_r2_13) {                           /* irregular */
    case 0:
        var_r1_28 = 7;
block_9:
        sub_8082E1C(arg0, var_r1_28, 0, 0);
        break;
    case 1:
        var_r1_28 = 8;
        goto block_9;
    case 2:
        var_r1_28 = 9;
        goto block_9;
    default:
        sub_8082E1C(arg0, 0xA, 0, 0);
        break;
    }
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8077704;
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 4;
    play_sfx_80195B4(0x42, -1);
}
#endif

void sub_8079B48(void *arg0)
{
  u16 *new_var;
  u16 temp_r0_17;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    temp_r0_17 = (*new_var = (*(new_var = (u16 *) (((s8 *) arg0) + 0xAC))) - 1);
    if (((s32) (temp_r0_17 << 0x10)) <= 0)
    {
      if ((*((s32 *) 0x03000F6C)) == 0)
      {
        sub_8082E1C(arg0, 5, 0x4029, 0);
      }
      else
      {
        sub_8082E1C(arg0, 9, 0x4029, 0);
      }
      *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8079C0C;
    }
  }
}

void sub_8079BA8(void *arg0) {
    if ((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x4C))) == 0) {
        sub_8082E1C(arg0, 0x12, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8079C3C;
    }
}

extern s32 sub_8078894;
void sub_8079BD0(void *arg0)
{
  int new_var3;
  s8 *new_var2;
  s8 *new_var;
  if (8 & (*((u8 *) (((s8 *) (*((void **) ((new_var2 = (s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 0x16, 0, 0);
    new_var = new_var2 + 0xAC;
    new_var3 = 0;
    *((s16 *) new_var) = 6;
    *((s32 *) (new_var2 + 0x9C)) = new_var3;
    *((s32 **) (new_var2 + 0x4C)) = &sub_8078894;
  }
}

void sub_8079C70(void *arg0);
void sub_8079C0C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0xD, 0x4029, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8079C70;
    }
}

void sub_8079C3C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
        *(u8 *)0x03000ED0 += 1;
    }
}

void sub_8079C70(void *arg0) {
    sub_8082E1C(arg0, 0xD, 0x4029, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8079C9C;
    (*(s32 *)((s8 *)(arg0) + (0xA4))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0xA8))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079C9C.s\"");
#else
s32 sub_80790CC(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8079018;

void sub_8079C9C(void *arg0) {
    s32 temp_r0_11;
    s32 temp_r0_26;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0xA4))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0xA4))) = temp_r0_11;
    if (temp_r0_11 <= 0) {
        sub_80790CC(arg0);
        play_sfx_80195B4(0x86, -1);
        (*(s32 *)((s8 *)(arg0) + (0xA4))) = 6;
        temp_r0_26 = (*(s32 *)((s8 *)(arg0) + (0xA8))) + 1;
        (*(s32 *)((s8 *)(arg0) + (0xA8))) = temp_r0_26;
        if ((temp_r0_26 > 5) && (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12))))) {
            if (*(s32 *)0x03000F6C == 0) {
                sub_8082E1C(arg0, 6, 0x4029, 0);
            } else {
                sub_8082E1C(arg0, 0xA, 0x4029, 0);
            }
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8079018;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079D1C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/wipe_update.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 free_heap_memory_8018C68();                 /* extern */
s32 process_remove(void *, s32);                /* extern */
s32 sub_80E4FC8();                              /* extern */

void sub_807A658(void *arg0, s32 arg1) {
    s32 (*temp_r1_22)(s32);

    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDC2D8;
    if ((*(s32 *)((s8 *)(arg0) + (0x1C))) != -1) {
        sub_80E4FC8();
        if ((*(s32 *)((s8 *)(arg0) + (0x1C))) != 0) {
            free_heap_memory_8018C68();
        }
        temp_r1_22 = (*(s32 (**)(s32))((s8 *)(arg0) + (0x20)));
        if (temp_r1_22 != NULL) {
            temp_r1_22((*(s32 *)((s8 *)(arg0) + (0x24))));
        }
    }
    process_remove(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807A698.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807AD2C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807AF64.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807AFD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807B7A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807B838.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807B8C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807BA44.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807BBDC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807BC90.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807BDDC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807BF34.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807C0D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807C1C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

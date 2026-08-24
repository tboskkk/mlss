#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8089BD4 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 stop_sfx_80195A8();
s32 sub_8086C64();
s32 sub_8087124();
s32 sub_810DD7C();





void sub_8089F44(void *arg0);

s32 sub_8082E1C();

s32 sub_807C298();
s32 sub_807FC08();

s32 sub_8087540();
void sub_8089BD4(void *arg0)
{
  u16 temp_r0_17;
  int new_var;
  *((s32 *) (((s8 *) arg0) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x38))) + (*((s16 *) (((s8 *) arg0) + 0xAE))));
  temp_r0_17 = (*((u16 *) (((s8 *) arg0) + 0xAC)) = (*((u16 *) (((s8 *) arg0) + (new_var = 0xAC)))) - 1);
  if (((s32) (temp_r0_17 << 0x10)) <= 0)
  {
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_8089F44);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089C00.s\"");
#else
s32 sub_8087540(void *);                        /* extern */

void sub_8089C00(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8087540(arg0);
    }
}
#endif

s32 sub_808552C(void *, void *, void *, s32, s32, s32, s32, s32, s32, s32); /* extern */
extern s32 sub_80895D8;
void sub_8089C88(void *arg0)
{
  s32 temp_r6_29;
  void *temp_r1_12;
  s32 *new_var2;
  s8 *new_var;
  new_var = ((s8 *) (*((void **) (((s8 *) arg0) + 0x2C)))) + 0x28;
  new_var2 = (s32 *) (((s8 *) arg0) + 0x84);
  temp_r1_12 = *((void **) new_var);
  *((s32 *) (((s8 *) arg0) + 0x84)) = (s32) ((*((s32 *) (((s8 *) temp_r1_12) + 0xD8))) + 0x3000);
  *((s32 *) (((s8 *) arg0) + 0x88)) = (s32) (*((s32 *) (((s8 *) temp_r1_12) + 0xDC)));
  *((s32 *) (((s8 *) arg0) + 0x8C)) = (temp_r6_29 = *((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)));
  *((s32 *) (((s8 *) arg0) + 0x94)) = sub_808552C(arg0 + 0xAE, (arg0 + 0x8C) + 0x24, arg0 + 0xB2, (*new_var2) - (*((s32 *) (((s8 *) arg0) + 0x38))), (*((s32 *) (((s8 *) arg0) + 0x88))) - (*((s32 *) (((s8 *) arg0) + 0x3C))), temp_r6_29 - (*((s32 *) (((s8 *) arg0) + 0x40))), 0x400, 0x400, 0x100, 0);
  play_sfx_80195B4(0x8D, -1);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80895D8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089D10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8088F9C;

void sub_8089D88(struct Entity *arg0) {
    void *temp_r5_8;

    temp_r5_8 = (*(void **)((s8 *)(arg0) + (0x2C)));
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r5_8) + (0x28)))) + (0xEC))) == -1) {
        sub_8082E1C(arg0, 7, 0, 0);
    }
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r5_8) + (0x28)))) + (0xEC))) == -2) {
        sub_8082E1C(arg0, 8, 0, 0);
    }
    arg0->handler = &sub_8088F9C;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089DD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089E4C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089EC4.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_807FC08(s32 *, s32 *, s32 *, s32);      /* extern */

void sub_8089EC4(void *arg0) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 var_r0_25;
    s32 var_r0_32;
    s32 var_r0_39;

    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x38))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x40))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(u16 *)((s8 *)(arg0) + (0xB2))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xB2))) - 0x5E);
    var_r0_25 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r0_25 < 0) {
        var_r0_25 += 0xFF;
    }
    sp0 = var_r0_25 >> 8;
    var_r0_32 = (*(s32 *)((s8 *)(arg0) + (0x14)));
    if (var_r0_32 < 0) {
        var_r0_32 += 0xFF;
    }
    sp4 = var_r0_32 >> 8;
    var_r0_39 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r0_39 < 0) {
        var_r0_39 += 0xFF;
    }
    sp8 = var_r0_39 >> 8;
    sub_807FC08(&sp0, &sp4, &sp8, 0);
    if (sp4 > 0x110) {
        sub_807C298(arg0);
        return;
    }
    if (sp0 < -0x10) {
        sub_807C298(arg0);
    }
}
#endif

void sub_8089F44(void *arg0) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 var_r0_17;
    s32 var_r0_25;
    s32 var_r0_32;

    (*(u16 *)((s8 *)(arg0) + (0xAE))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xAE))) - 8);
    var_r0_17 = (*(s32 *)((s8 *)(arg0) + (0x38))) + (s16) (*(u16 *)((s8 *)(arg0) + (0xAE)));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_17;
    if (var_r0_17 < 0) {
        var_r0_17 += 0xFF;
    }
    sp0 = var_r0_17 >> 8;
    var_r0_25 = (*(s32 *)((s8 *)(arg0) + (0x14)));
    if (var_r0_25 < 0) {
        var_r0_25 += 0xFF;
    }
    sp4 = var_r0_25 >> 8;
    var_r0_32 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r0_32 < 0) {
        var_r0_32 += 0xFF;
    }
    sp8 = var_r0_32 >> 8;
    sub_807FC08(&sp0, &sp4, &sp8, 0);
    if (sp0 < -0x10) {
        sub_807C298(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089FA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A01C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_807F4FC();                              /* extern */

void sub_808A098(void *arg0) {
    sub_807F4FC();
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0x0808A201;
}

s32 sub_80873B8(void *, s32, s32);              /* extern */
extern s32 sub_80894B8;

void sub_808A0B0(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x1E;
        sub_80873B8(arg0, 3, 0);
        (*(s32 **)((s8 *)(arg0) + (0x50))) = &sub_80894B8;
    }
}

s32 sub_808A174(s32, s32, s32);
s32 sub_808A194(s32, s32, s32);
s32 sub_808A1B4(s32, s32, s32);
extern s32 sub_808A204;
void sub_808A0DC(void *arg0)
{
  s32 **new_var;
  s32 new_var2;
  if ((*((s32 *) (((s8 *) arg0) + 0x80))) == 0)
  {
    sub_807F4FC(arg0);
    new_var = (s32 **) (((s8 *) arg0) + 0x5C);
 do { *((s32 **) (((s8 *) arg0) + 0x58)) = (s32 *) &sub_808A1B4; *new_var = (s32 *) &sub_808A194; *((s32 **) (((s8 *) arg0) + 0x60)) = (s32 *) &sub_808A174; } while (0); new_var2 = *((s32 *) (((s8 *) arg0) + 0x9C));
    *((s16 *) (((s8 *) (arg0 + 0x9C)) + 0x10)) = (s16) new_var2;
    sub_80873B8(arg0, 3, 0);
    *((s32 **) (((s8 *) arg0) + 0x50)) = &sub_808A204;
  }
}

extern s32 sub_8088BC0;
void sub_808A128(void *arg0)
{
  s32 *new_var;
  s32 new_var2;
  if ((*((s32 *) (((s8 *) arg0) + 0x80))) == 0)
  {
    sub_807F4FC(arg0);
    *((s32 **) (((s8 *) arg0) + 0x58)) = (s32 *) &sub_808A1B4;
    *((s32 **) (((s8 *) arg0) + 0x5C)) = (s32 *) &sub_808A194;
    *((s32 **) (((s8 *) arg0) + 0x60)) = (s32 *) &sub_808A174;
    new_var = (s32 *) (((s8 *) arg0) + 0x9C);
    new_var2 = *new_var;
    *((s16 *) (((s8 *) (arg0 + 0x9C)) + 0x10)) = (s16) new_var2;
    sub_80873B8(arg0, 3, 0);
    *((s32 **) (((s8 *) arg0) + 0x50)) = &sub_8088BC0;
  }
}

s32 sub_808A174(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x81);
    return sub_8087124(arg0, arg1, arg2);
}

s32 sub_808A194(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x81);
    return sub_8086C64(arg0, arg1, arg2);
}

s32 sub_808A1B4(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x81);
    return sub_810DD7C(arg0, arg1, arg2);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A1D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A204.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A27C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A32C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A3C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A4D0.s\"");
#else
void *sub_807BF34(s32, s32, s32, s32, s32, s32, s32); /* extern */
s32 sub_807F4C4(void *, s32);                   /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_808C174;
extern s32 sub_808C1C4;

void sub_808A4D0(void *arg0) {
    s32 var_r0_28;
    s32 var_r0_42;
    s32 var_r3_36;
    void *temp_r0_55;
    void *temp_r1_107;
    void *temp_r1_71;
    void *temp_r1_76;
    void *temp_r1_81;
    void *temp_r1_91;
    void *temp_r1_97;
    void *temp_r2_92;
    void *temp_r6_26;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0xA, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808C174;
        play_sfx_80195B4(0x85, -1);
        temp_r6_26 = (*(void **)((s8 *)(arg0) + (0x2C)));
        var_r0_28 = (*(s32 *)((s8 *)(arg0) + (0x10)));
        if (var_r0_28 < 0) {
            var_r0_28 += 0xFF;
        }
        var_r3_36 = (*(s32 *)((s8 *)(arg0) + (0x14)));
        if (var_r3_36 < 0) {
            var_r3_36 += 0xFF;
        }
        var_r0_42 = (*(s32 *)((s8 *)(arg0) + (0x18)));
        if (var_r0_42 < 0) {
            var_r0_42 += 0xFF;
        }
        temp_r0_55 = sub_807BF34((*(s32 *)((s8 *)(arg0) + (0x28))), 0x4059, (var_r0_28 >> 8) - 0xC, var_r3_36 >> 8, (var_r0_42 >> 8) + 0x32, 1, 1);
        (*(void **)((s8 *)(arg0) + (0x30))) = temp_r0_55;
        (*(s8 *)((s8 *)(temp_r0_55) + (0x74))) = 0xFF;
        (*(u8 *)((s8 *)(temp_r0_55) + (0x78))) = (u8) ((0x1F & (*(u8 *)((s8 *)(temp_r0_55) + (0x78)))) | 0x20);
        temp_r1_71 = temp_r0_55 + 0x9C;
        (*(s32 *)((s8 *)(temp_r0_55) + (0x9C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x9C)));
        temp_r1_76 = temp_r1_71 + 4;
        (*(s32 *)((s8 *)(temp_r1_71) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0xA0)));
        temp_r1_81 = temp_r1_76 + 4;
        (*(s32 *)((s8 *)(temp_r1_76) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0xA4)));
        (*(s32 *)((s8 *)(temp_r1_81) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0xA8)));
        temp_r1_91 = (temp_r1_81 + 4) - 0x24;
        temp_r2_92 = (*(void **)((s8 *)(temp_r6_26) + (0x28)));
        (*(s32 *)((s8 *)(temp_r1_91) + (0))) = (s32) (*(s32 *)((s8 *)(temp_r2_92) + (0xD8)));
        temp_r1_97 = temp_r1_91 + 4;
        (*(s32 *)((s8 *)(temp_r1_91) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_92) + (0xDC)));
        (*(s32 *)((s8 *)(temp_r1_97) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_92) + (0xE0)));
        temp_r1_107 = (temp_r1_97 + 4) - 0x13;
        (*(u8 *)((s8 *)(temp_r1_107) + (0))) = (u8) ((*(u8 *)((s8 *)(temp_r1_107) + (0))) | 0x20);
        (*(s16 *)((s8 *)(temp_r1_107) + (3))) = 0x300;
        (*(s16 *)((s8 *)(temp_r0_55) + (0x7A))) = 0;
        sub_8085B38(temp_r0_55);
        (*(s32 *)((s8 *)(temp_r0_55) + (0x6C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x6C)));
        sub_807F4C4(temp_r0_55, 0);
        (*(s32 **)((s8 *)(temp_r0_55) + (0x4C))) = &sub_808C1C4;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A5DC.s\"");
#else
s32 sub_807F47C(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_808750C;

void sub_808A5DC(void *arg0) {
    s32 temp_r5_9;
    u16 temp_r0_15;
    void *temp_r1_23;
    void *temp_r2_56;

    temp_r5_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r5_9 == 0) {
        temp_r0_15 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_15;
        if ((s32) (temp_r0_15 << 0x10) <= 0) {
            sub_807F47C(arg0);
            temp_r1_23 = arg0 + 0x84;
            (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x38))) + 0x3000);
            (*(s32 *)((s8 *)(temp_r1_23) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x3C)));
            (*(s32 *)((s8 *)((temp_r1_23 + 4)) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x40)));
            (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
            (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x600;
            (*(s16 *)((s8 *)(arg0) + (0x7A))) = (s16) temp_r5_9;
            sub_8085B38(arg0);
            sub_8082E1C(arg0, 2, 0, 0);
            temp_r2_56 = (*(void **)((s8 *)(arg0) + (8)));
            (*(u8 *)((s8 *)(temp_r2_56) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_56) + (0x12))));
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A660.s\"");
#else
void *sub_807BF34(s32, s32, s32, s32, s32, s32, s32); /* extern */
s32 sub_807F4C4(void *, s32);                   /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_808C0E8;
extern s32 sub_808C110;

void sub_808A660(void *arg0, s32 arg3) {
    s32 temp_r1_36;
    s32 temp_r4_49;
    s32 temp_r5_43;
    s32 var_r1_31;
    s32 var_r2_38;
    s32 var_r4_44;
    void *temp_r1_109;
    void *temp_r1_118;
    void *temp_r1_133;
    void *temp_r1_85;
    void *temp_r1_90;
    void *temp_r1_95;
    void *temp_r4_111;
    void *temp_r6_64;
    void *temp_r9_51;

    if (!(8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12))))) {
        return;
    }
    sub_8082E1C(arg0, 5, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808C0E8;
    play_sfx_80195B4(0x85, -1);
    var_r1_31 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r1_31 < 0) {
        var_r1_31 += 0xFF;
    }
    temp_r1_36 = var_r1_31 >> 8;
    var_r2_38 = (*(s32 *)((s8 *)(arg0) + (0x14)));
    if (var_r2_38 < 0) {
        var_r2_38 += 0xFF;
    }
    temp_r5_43 = var_r2_38 >> 8;
    var_r4_44 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r4_44 < 0) {
        var_r4_44 += 0xFF;
    }
    temp_r4_49 = var_r4_44 >> 8;
    temp_r9_51 = (*(void **)((s8 *)(arg0) + (0x2C)));
    temp_r6_64 = sub_807BF34((*(s32 *)((s8 *)(arg0) + (0x28))), 0x4068, temp_r1_36 - 0xC, temp_r5_43, temp_r4_49 + 0x32, 1, 1);
    sub_80DF024(0xC52, temp_r1_36, temp_r5_43, temp_r4_49, arg0);
    (*(void **)((s8 *)(arg0) + (0x30))) = temp_r6_64;
    (*(s8 *)((s8 *)(temp_r6_64) + (0x74))) = 0xFF;
    (*(u8 *)((s8 *)(temp_r6_64) + (0x78))) = (u8) ((0x1F & (*(u8 *)((s8 *)(temp_r6_64) + (0x78)))) | 0x20);
    temp_r1_85 = temp_r6_64 + 0x9C;
    (*(s32 *)((s8 *)(temp_r6_64) + (0x9C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x9C)));
    temp_r1_90 = temp_r1_85 + 4;
    (*(s32 *)((s8 *)(temp_r1_85) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0xA0)));
    temp_r1_95 = temp_r1_90 + 4;
    (*(s32 *)((s8 *)(temp_r1_90) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0xA4)));
    (*(s32 *)((s8 *)(temp_r1_95) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0xA8)));
    (*(s16 *)((s8 *)(temp_r6_64) + (0xAC))) = 0;
    temp_r1_109 = (temp_r1_95 + 4) - 0x24;
    temp_r4_111 = (*(void **)((s8 *)(temp_r9_51) + (0x28)));
    (*(s32 *)((s8 *)(temp_r1_109) + (0))) = (s32) ((*(s32 *)((s8 *)(temp_r4_111) + (0xD8))) + 0xFFFFE000);
    temp_r1_118 = temp_r1_109 + 4;
    (*(s32 *)((s8 *)(temp_r1_109) + (4))) = (s32) ((*(s32 *)((s8 *)(temp_r4_111) + (0xDC))) + 0xFFFFFC00);
    (*(s32 *)((s8 *)(temp_r1_118) + (4))) = (s32) ((*(s32 *)((s8 *)(temp_r4_111) + (0xE0))) + 0x1000);
    temp_r1_133 = (temp_r1_118 + 4) - 0x13;
    (*(u8 *)((s8 *)(temp_r1_133) + (0))) = (u8) ((*(u8 *)((s8 *)(temp_r1_133) + (0))) | 0x20);
    (*(s16 *)((s8 *)(temp_r1_133) + (3))) = 0x400;
    (*(s16 *)((s8 *)(temp_r6_64) + (0x7A))) = 0;
    sub_8085B38(temp_r6_64);
    (*(s32 *)((s8 *)(temp_r6_64) + (0x6C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x6C)));
    sub_807F4C4(temp_r6_64, 0);
    (*(s32 **)((s8 *)(temp_r6_64) + (0x4C))) = &sub_808C110;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A7B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A8F8.s\"");
#else
void *sub_807BF34(s32, s32, s32, s32, s32, s32, s32); /* extern */
s32 sub_807F4C4(void *, s32);                   /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_808C098;
extern s32 sub_808C110;

void sub_808A8F8(void *arg0, s32 arg3) {
    s32 temp_r4_53;
    s32 temp_r5_46;
    s32 temp_r6_39;
    s32 var_r1_34;
    s32 var_r2_41;
    s32 var_r4_48;
    void *temp_r0_121;
    void *temp_r1_100;
    void *temp_r1_95;
    void *temp_r2_119;
    void *temp_r2_85;
    void *temp_r7_70;
    void *temp_r9_56;

    if (!(8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12))))) {
        return;
    }
    sub_8082E1C(arg0, 5, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808C098;
    play_sfx_80195B4(0x85, -1);
    var_r1_34 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r1_34 < 0) {
        var_r1_34 += 0xFF;
    }
    temp_r6_39 = var_r1_34 >> 8;
    var_r2_41 = (*(s32 *)((s8 *)(arg0) + (0x14)));
    if (var_r2_41 < 0) {
        var_r2_41 += 0xFF;
    }
    temp_r5_46 = var_r2_41 >> 8;
    var_r4_48 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r4_48 < 0) {
        var_r4_48 += 0xFF;
    }
    temp_r4_53 = var_r4_48 >> 8;
    temp_r9_56 = (*(void **)((s8 *)(arg0) + (0x2C)));
    temp_r7_70 = sub_807BF34((*(s32 *)((s8 *)(arg0) + (0x28))), 0x4068, temp_r6_39 - 0xC, temp_r5_46, temp_r4_53 + 0x32, 1, 1);
    sub_80DF024(0xC59, temp_r6_39, temp_r5_46, temp_r4_53, arg0);
    (*(void **)((s8 *)(arg0) + (0x30))) = temp_r7_70;
    (*(s8 *)((s8 *)(temp_r7_70) + (0x74))) = 0xFF;
    temp_r2_85 = temp_r7_70 + 0x78;
    (*(u8 *)((s8 *)(temp_r7_70) + (0x78))) = (u8) ((0x1F & (*(u8 *)((s8 *)(temp_r7_70) + (0x78)))) | 0x20);
    temp_r1_95 = temp_r7_70 + 0x9C;
    (*(s32 *)((s8 *)(temp_r7_70) + (0x9C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x9C)));
    temp_r1_100 = temp_r1_95 + 4;
    (*(s32 *)((s8 *)(temp_r1_95) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0xA0)));
    (*(s32 *)((s8 *)(temp_r1_100) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0xA4)));
    (*(s32 *)((s8 *)((temp_r1_100 + 4)) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0xA8)));
    (*(s16 *)((s8 *)(temp_r7_70) + (0xAC))) = 0;
    temp_r2_119 = temp_r2_85 + 0xC;
    temp_r0_121 = (*(void **)((s8 *)(temp_r9_56) + (0x28)));
    (*(s32 *)((s8 *)(temp_r2_85) + (0xC))) = (s32) ((*(s32 *)((s8 *)(temp_r0_121) + (0xD8))) + ((*(s32 *)((s8 *)(arg0) + (0x9C))) << 8));
    (*(s32 *)((s8 *)(temp_r2_119) + (4))) = (s32) ((*(s32 *)((s8 *)(temp_r0_121) + (0xDC))) + ((*(s32 *)((s8 *)(arg0) + (0xA0))) << 8));
    (*(s32 *)((s8 *)((temp_r2_119 + 4)) + (4))) = (s32) ((*(s32 *)((s8 *)(temp_r0_121) + (0xE0))) + ((*(s32 *)((s8 *)(arg0) + (0xA4))) << 8));
    (*(u8 *)((s8 *)(temp_r7_70) + (0x79))) = (u8) ((*(u8 *)((s8 *)(temp_r7_70) + (0x79))) | 0x20);
    (*(s16 *)((s8 *)((temp_r7_70 + 0x79)) + (3))) = 0x300;
    (*(s16 *)((s8 *)(temp_r7_70) + (0x7A))) = 0;
    sub_8085B38(temp_r7_70);
    (*(s32 *)((s8 *)(temp_r7_70) + (0x6C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x6C)));
    sub_807F4C4(temp_r7_70, 0);
    (*(s32 **)((s8 *)(temp_r7_70) + (0x4C))) = &sub_808C110;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808AA60.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808AC10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808AEE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808B0EC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808B20C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808B2D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808B560.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808B684.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808B748.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808B7D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808B85C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808B9B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808BBC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808BE24.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_808BEB4(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8087540(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808BED0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808BFBC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_810DD7C(void *, void *, s32);           /* extern */

void sub_808BFF8(void *arg0) {
    s32 temp_r1_33;
    u16 temp_r1_26;
    void *temp_r0_32;
    void *temp_r2_8;

    temp_r2_8 = (*(void **)((s8 *)(arg0) + (0x2C)));
    if (!(0x80 & (*(u8 *)((s8 *)(temp_r2_8) + (0x76)))) && ((*(s32 *)((s8 *)(temp_r2_8) + (0x18))) == 0)) {
        sub_810DD7C(arg0, temp_r2_8, 0xFF);
    }
    temp_r1_26 = (*(u16 *)((s8 *)(arg0) + (0xAC)));
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) (temp_r1_26 - 1);
    if ((s32) (temp_r1_26 << 0x10) <= 0) {
        temp_r0_32 = (*(void **)((s8 *)(arg0) + (0x28)));
        temp_r1_33 = (*(s32 *)((s8 *)(temp_r0_32) + (0x38)));
        if (temp_r1_33 == 0) {
            (*(s16 *)((s8 *)(temp_r0_32) + (0xB4))) = (s16) temp_r1_33;
        }
        stop_sfx_80195A8(0x5E);
        sub_807C298(arg0);
    }
}

s32 sub_8087540(void *);                        /* extern */

void sub_808C04C(void *arg0) {
    if ((*(s16 *)((s8 *)(arg0) + (0xAC))) == 0) {
        sub_8087540(arg0);
    }
}

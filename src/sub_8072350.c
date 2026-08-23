#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8072350 needs.

asm_unified(".include \"asm/macros.inc\"");



extern s32 sub_807197C;
s32 sub_8082E1C();
extern s32 sub_8071B14;

extern s32 sub_80722F8;
void sub_8072350(void *arg0)
{
  u16 temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC)) = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80722F8;
  }
}

void sub_8072370(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x1E;
        arg0->handler = &sub_8071B14;
    }
}

s32 stop_sfx_80195A8(s32);                      /* extern */
extern s32 sub_8071A64;
void sub_8072390(void *arg0)
{
  u16 temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAE))) + 1;
  *((u16 *) (((s8 *) arg0) + 0xAE)) = (*((u16 *) (((s8 *) arg0) + 0xAE))) + 1;
  if (((s16) temp_r0_11) == 0x46)
  {
    play_sfx_80195B4(0xA7, -1);
  }
  if (((s16) (*((u16 *) (((s8 *) arg0) + 0xAE)))) == 0x14)
  {
    play_sfx_80195B4(0x6C, -1);
  }
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 3, 0x40B7, 0);
    sub_8082E1C(*((void **) (((s8 *) arg0) + 0x30)), 3, 0, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8071A64;
    stop_sfx_80195A8(0x6C);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072400.s\"");
#else
s32 sub_8087124();                                  /* extern */
extern s32 sub_8071900;

s32 sub_8072400(void *arg0) {
    s32 var_r0_8;

    var_r0_8 = sub_8087124();
    if (var_r0_8 == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x8C))) = 0x300;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8071900;
        var_r0_8 = 0;
    }
    return var_r0_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072428.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807249C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8072550;

void sub_8072500(struct Entity *arg0) {
    sub_8082E1C((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x58))) + 8, 0x2F, 0, 0);
    arg0->handler = &sub_8072550;
}

extern s32 sub_80725D0;

void sub_8072528(struct Entity *arg0) {
    sub_8082E1C((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x58))) + 8, 0x2F, 0, 0);
    arg0->handler = &sub_80725D0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072550.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80725D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8072650(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 0x16, 0, 0);
        arg0->handler = &sub_807197C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072678.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80726D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_80712D8;

void sub_8072738(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0x15, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80712D8;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072764.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80728D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072944.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072A24.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072B68.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072BE8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072CE8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072DCC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072F44.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_80741EC;

void sub_8072F44(void *arg0) {
    s32 temp_r5_20;
    u16 temp_r0_14;
    void *temp_r1_33;
    void *temp_r2_34;

    temp_r0_14 = (*(u16 *)((s8 *)(arg0) + (0xAC))) + 0x800;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_14;
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0xC))) = temp_r0_14;
    temp_r5_20 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r5_20 == 0) {
        sub_8082E1C(arg0, 1, 0, 0);
        (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0xC))) = 0x8000U;
        temp_r1_33 = arg0 + 0x84;
        temp_r2_34 = (*(void **)((s8 *)(arg0) + (0x28)));
        (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) (*(s32 *)((s8 *)(temp_r2_34) + (0xD8)));
        (*(s32 *)((s8 *)(temp_r1_33) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_34) + (0xDC)));
        (*(s32 *)((s8 *)((temp_r1_33 + 4)) + (4))) = (s32) ((*(s32 *)((s8 *)(temp_r2_34) + (0xE0))) + 0x2000);
        (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
        (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x500;
        (*(s16 *)((s8 *)(arg0) + (0x7A))) = (s16) temp_r5_20;
        sub_8085B38(arg0);
        play_sfx_80195B4(0x8B, -1);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80741EC;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072FDC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80730C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80731B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8073798.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8073C18.s\"");
#else
void *sub_807BF34(void *, s32, s32, s32, s32, u32, s32); /* extern */
s32 sub_807F4FC(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_8073EAC;
extern s32 sub_80740D4;
extern s32 sub_807413C;
extern s32 sub_8087540;

void sub_8073C18(void *arg0, s32 arg3) {
    s32 *spC;
    s32 var_r0_171;
    s32 var_r0_179;
    s32 var_r0_38;
    s32 var_r0_46;
    s32 var_r0_54;
    s32 var_r0_73;
    s32 var_r0_81;
    s32 var_r2_165;
    s32 var_r2_67;
    s32 var_r7_151;
    u8 *temp_r2_213;
    void *temp_r0_195;
    void *temp_r3_35;
    void *var_r5_98;

    if (!(8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12))))) {
        return;
    }
    sub_8082E1C(arg0, 5, 0, 0);
    play_sfx_80195B4(0x116, -1);
    play_sfx_80195B4(0xD5, -1);
    temp_r3_35 = (*(void **)((s8 *)(arg0) + (0x28)));
    var_r0_38 = (*(s32 *)((s8 *)(temp_r3_35) + (0xD8)));
    if (var_r0_38 < 0) {
        var_r0_38 += 0xFF;
    }
    var_r0_46 = (*(s32 *)((s8 *)(temp_r3_35) + (0xDC)));
    if (var_r0_46 < 0) {
        var_r0_46 += 0xFF;
    }
    var_r0_54 = (*(s32 *)((s8 *)(temp_r3_35) + (0xE0)));
    if (var_r0_54 < 0) {
        var_r0_54 += 0xFF;
    }
    sub_80DF024(0x22E8, var_r0_38 >> 8, var_r0_46 >> 8, var_r0_54 >> 8, arg0);
    var_r2_67 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r2_67 < 0) {
        var_r2_67 += 0xFF;
    }
    var_r0_73 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r0_73 < 0) {
        var_r0_73 += 0xFF;
    }
    var_r0_81 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r0_81 < 0) {
        var_r0_81 += 0xFF;
    }
    var_r5_98 = sub_807BF34((*(void **)((s8 *)(arg0) + (0x28))), 0x414E, var_r2_67 >> 8, (var_r0_73 >> 8) - 0xA, var_r0_81 >> 8, (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x11))) << 0x19) >> 0x1F, 1);
    (*(void **)((s8 *)(arg0) + (0x30))) = var_r5_98;
    (*(u8 *)((s8 *)(var_r5_98) + (0x78))) = (u8) ((0x1F & (*(u8 *)((s8 *)(var_r5_98) + (0x78)))) | 0x20);
    (*(u8 *)((s8 *)(var_r5_98) + (0x74))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x74)));
    (*(s32 *)((s8 *)(var_r5_98) + (0x2C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x2C)));
    (*(u8 *)((s8 *)(var_r5_98) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(var_r5_98) + (0x77))) & ~0x20);
    (*(s32 **)((s8 *)(var_r5_98) + (0x68))) = &sub_8087540;
    (*(s32 *)((s8 *)(var_r5_98) + (0x6C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x6C)));
    (*(s32 *)((s8 *)(var_r5_98) + (0x9C))) = 0;
    (*(s32 *)((s8 *)((var_r5_98 + 0x9C)) + (8))) = 0;
    sub_807F4FC(var_r5_98);
    (*(s32 **)((s8 *)(var_r5_98) + (0x4C))) = &sub_8073EAC;
    (*(s32 **)((s8 *)(var_r5_98) + (0x60))) = &sub_80740D4;
    (*(s32 *)((s8 *)(var_r5_98) + (0x84))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x38)));
    (*(s32 *)((s8 *)((var_r5_98 + 0x84)) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x3C))) + 0xFFFFF600);
    var_r7_151 = 1;
    spC = arg0 + 0xA8;
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x9C))) > 1) {
        do {
            var_r2_165 = (*(s32 *)((s8 *)(arg0) + (0x38)));
            if (var_r2_165 < 0) {
                var_r2_165 += 0xFF;
            }
            var_r0_171 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
            if (var_r0_171 < 0) {
                var_r0_171 += 0xFF;
            }
            var_r0_179 = (*(s32 *)((s8 *)(arg0) + (0x40)));
            if (var_r0_179 < 0) {
                var_r0_179 += 0xFF;
            }
            temp_r0_195 = sub_807BF34((*(void **)((s8 *)(arg0) + (0x28))), 0x414E, var_r2_165 >> 8, (var_r0_171 >> 8) - 0xA, var_r0_179 >> 8, (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x11))) << 0x19) >> 0x1F, 1);
            (*(void **)((s8 *)(var_r5_98) + (0x30))) = temp_r0_195;
            var_r5_98 = temp_r0_195;
            (*(u8 *)((s8 *)(var_r5_98) + (0x78))) = (u8) ((0x1F & (*(u8 *)((s8 *)(var_r5_98) + (0x78)))) | 0x20);
            (*(u8 *)((s8 *)(var_r5_98) + (0x74))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x74)));
            (*(s32 *)((s8 *)(var_r5_98) + (0x2C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x2C)));
            temp_r2_213 = (var_r5_98 + 0x78) - 1;
            *temp_r2_213 = *temp_r2_213 & ~0x40 & ~0x20;
            (*(s32 **)((s8 *)(var_r5_98) + (0x68))) = &sub_8087540;
            (*(s32 *)((s8 *)(var_r5_98) + (0x6C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x6C)));
            (*(s32 *)((s8 *)(var_r5_98) + (0x9C))) = var_r7_151;
            (*(s32 *)((s8 *)(var_r5_98) + (0xA4))) = (s32) (((s32) (var_r7_151 << 8) / (s32) (*(s32 *)((s8 *)(arg0) + (0x9C)))) << 8);
            sub_807F4FC(var_r5_98);
            (*(s32 **)((s8 *)(var_r5_98) + (0x4C))) = &sub_8073EAC;
            (*(s32 **)((s8 *)(var_r5_98) + (0x60))) = &sub_80740D4;
            (*(s32 *)((s8 *)(var_r5_98) + (0x84))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x38)));
            (*(s32 *)((s8 *)((var_r5_98 + 0x84)) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x3C))) + 0xFFFFF600);
            var_r7_151 += 1;
        } while (var_r7_151 < (s32) (*(s32 *)((s8 *)(arg0) + (0x9C))));
    }
    (*(s32 *)((s8 *)(var_r5_98) + (0x30))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0xA0))) = 0;
    *spC = 0x30;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_807413C;
}
#endif

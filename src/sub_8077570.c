#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8077570 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();

void sub_8077570(struct Entity *arg0) {
    s32 var_r0_17;

    arg0->unk18 = (s32) (arg0->unk18 + arg0->unk8C);
    arg0->unk8C = (s32) (arg0->unk8C - 0x80);
    var_r0_17 = arg0->unk18;
    if (var_r0_17 < 0) {
        var_r0_17 += 0xFF;
    }
    if ((s32) (var_r0_17 >> 8) <= 0x28) {
        arg0->unk18 = 0x2800;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80775A4.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */

void sub_80775A4(void *arg0) {
    s32 var_r1_26;
    s32 var_r2_32;
    s32 var_r3_38;
    void *temp_r3_25;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        if ((*(void **)((s8 *)(arg0) + (0x30))) != NULL) {
            do {
                temp_r3_25 = (*(void **)((s8 *)(arg0) + (0x30)));
                var_r1_26 = (*(s32 *)((s8 *)(temp_r3_25) + (0x38)));
                if (var_r1_26 < 0) {
                    var_r1_26 += 0xFF;
                }
                var_r2_32 = (*(s32 *)((s8 *)(temp_r3_25) + (0x3C)));
                if (var_r2_32 < 0) {
                    var_r2_32 += 0xFF;
                }
                var_r3_38 = (*(s32 *)((s8 *)(temp_r3_25) + (0x40)));
                if (var_r3_38 < 0) {
                    var_r3_38 += 0xFF;
                }
                sub_80DF024(0x24E0, var_r1_26 >> 8, var_r2_32 >> 8, var_r3_38 >> 8, arg0);
                sub_807C298((*(void **)((s8 *)(arg0) + (0x30))));
            } while ((*(void **)((s8 *)(arg0) + (0x30))) != NULL);
        }
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8077610.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_8076414;

void sub_8077610(void *arg0) {
    s32 var_r1_20;
    s32 var_r2_26;
    s32 var_r3_32;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 6, 0, 0);
        var_r1_20 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_20 < 0) {
            var_r1_20 += 0xFF;
        }
        var_r2_26 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_26 < 0) {
            var_r2_26 += 0xFF;
        }
        var_r3_32 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_32 < 0) {
            var_r3_32 += 0xFF;
        }
        sub_80DF024(0x24FB, var_r1_20 >> 8, var_r2_26 >> 8, var_r3_32 >> 8, arg0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8076414;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8077668.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_80761E8;

void sub_8077668(void *arg0) {
    s32 var_r1_13;
    s32 var_r2_19;
    s32 var_r3_25;

    sub_8082E1C(arg0, 2, 0, 0);
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
    sub_80DF024(0x24BA, var_r1_13 >> 8, var_r2_19 >> 8, var_r3_25 >> 8, arg0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80761E8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80776B4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8076C14;

void sub_80776B4(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0xE, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x9C)));
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = 0x32;
        (*(s32 *)((s8 *)(arg0) + (0xA0))) = 0x14;
        (*(s32 *)((s8 *)(arg0) + (0xA8))) = 0;
        (*(s16 *)((s8 *)((arg0 + 0xA0)) + (0x12))) = 3;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8076C14;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8077704.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807777C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8077924;
void sub_80778D4(void *arg0)
{
  u16 temp_r0_11;
  u16 temp_r0_26;
  *((u16 *) (((s8 *) arg0) + 0xAE)) = (temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAE))) - 1);
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    play_sfx_80195B4(0x54, -1);
    *((u16 *) (((s8 *) arg0) + 0xAE)) = 0xAU;
  }
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (temp_r0_26 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) (temp_r0_26 << 0x10)) <= 0)
  {
    sub_8082E1C(arg0, 0x11, 0, 0);
    *((u16 *) (((s8 *) arg0) + 0xAC)) = 0x64U;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8077924;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8077924.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8077ECC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078000.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807815C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078234.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807830C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078524.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078678.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078768.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078894.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80789B4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8199F30();                                  /* extern */
extern s32 sub_8079568;
extern s32 sub_80795D4;

void sub_80789B4(void *arg0) {
    s32 *var_r0_27;
    s32 temp_r0_11;
    s32 var_r2_35;
    u16 temp_r0_17;
    u8 var_r5_31;
    void *temp_r1_9;

    temp_r1_9 = arg0 + 0x9C;
    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_11;
    if (temp_r0_11 <= 0) {
        temp_r0_17 = (*(u16 *)((s8 *)(temp_r1_9) + (0x10))) - 1;
        (*(u16 *)((s8 *)(temp_r1_9) + (0x10))) = temp_r0_17;
        if ((s32) (temp_r0_17 << 0x10) > 0) {
            sub_8082E1C(arg0, 2, 0, 0);
            var_r0_27 = &sub_80795D4;
        } else {
            var_r5_31 = 0;
            var_r2_35 = sub_8199F30() & 1;
loop_5:
            var_r5_31 += 1;
            var_r2_35 = (u8) (var_r2_35 + 1) & 1;
            if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
                if ((u32) var_r5_31 > 2U) {
                    goto block_7;
                }
            } else {
                if ((u32) var_r5_31 <= 2U) {
                    goto loop_5;
                }
block_7:
                var_r2_35 = 0;
            }
            (*(s32 *)((s8 *)(arg0) + (0xA8))) = var_r2_35;
            sub_8082E1C(arg0, var_r2_35 + 3, 0, 0);
            var_r0_27 = &sub_8079568;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = var_r0_27;
        play_sfx_80195B4(0x119, -1);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078A5C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078B94.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078D2C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078E2C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078F84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079018.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_80793F4;

void sub_8079018(void *arg0) {
    s32 temp_r0_22;
    s32 temp_r1_31;
    s32 var_r0_42;
    void *var_r1_40;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x4029, 0);
        temp_r0_22 = (*(s32 *)((s8 *)(arg0) + (0xA0))) - 1;
        (*(s32 *)((s8 *)(arg0) + (0xA0))) = temp_r0_22;
        if (temp_r0_22 > 0) {
            temp_r1_31 = ((*(s32 *)((s8 *)(arg0) + (0x9C))) + 1) & 1;
            (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r1_31;
            if (temp_r1_31 == 0) {
                (*(s32 *)((s8 *)(arg0) + (0x84))) = 0x7800;
                var_r1_40 = arg0 + 0x84 + 4;
                var_r0_42 = 0x8000;
            } else {
                (*(s32 *)((s8 *)(arg0) + (0x84))) = 0x7000;
                var_r1_40 = arg0 + 0x84 + 4;
                var_r0_42 = 0x6000;
            }
            (*(s32 *)((s8 *)(var_r1_40) + (0))) = var_r0_42;
            (*(s32 *)((s8 *)(var_r1_40) + (4))) = 0x1800;
            (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
            (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x300;
            (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
            sub_8085B38(arg0);
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80793F4;
            play_sfx_80195B4(0xD7, -1);
            return;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = NULL;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80790CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80791D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079284.s\"");
#else
s32 sub_807F47C(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_8079320;

void sub_8079284(void *arg0) {
    s32 var_r0_40;
    u16 temp_r0_17;
    void *var_r1_38;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r0_17 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_17;
        if ((s32) (temp_r0_17 << 0x10) <= 0) {
            sub_807F47C(arg0);
            sub_8082E1C(arg0, 0, 0, 0);
            if (*(s32 *)0x03000F6C == 0) {
                (*(s32 *)((s8 *)(arg0) + (0x84))) = 0x7800;
                var_r1_38 = arg0 + 0x84 + 4;
                var_r0_40 = 0x8000;
            } else {
                (*(s32 *)((s8 *)(arg0) + (0x84))) = 0x7000;
                var_r1_38 = arg0 + 0x84 + 4;
                var_r0_40 = 0x6000;
            }
            (*(s32 *)((s8 *)(var_r1_38) + (0))) = var_r0_40;
            (*(s32 *)((s8 *)(var_r1_38) + (4))) = 0x1800;
            (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
            (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x300;
            (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
            sub_8085B38(arg0);
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8079320;
        }
    }
}
#endif

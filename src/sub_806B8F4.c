#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806B8F4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B8F4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BAB8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BB48.s\"");
#else
void *sub_807BF34(s32, s32, s32, s32, s32, u32, s32); /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806BFD4;
extern s32 sub_8087540;

void sub_806BB48(void *arg0) {
    s32 var_r0_54;
    s32 var_r2_42;
    s32 var_r3_48;
    u16 temp_r0_18;
    u8 temp_r2_93;
    void *temp_r0_70;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r0_18 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_18;
        if ((s32) (temp_r0_18 << 0x10) <= 0) {
            if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
                sub_8082E1C(arg0, 7, 0, 0);
            } else {
                sub_8082E1C(arg0, 0xF, 0, 0);
            }
            var_r2_42 = (*(s32 *)((s8 *)(arg0) + (0x38)));
            if (var_r2_42 < 0) {
                var_r2_42 += 0xFF;
            }
            var_r3_48 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
            if (var_r3_48 < 0) {
                var_r3_48 += 0xFF;
            }
            var_r0_54 = (*(s32 *)((s8 *)(arg0) + (0x40)));
            if (var_r0_54 < 0) {
                var_r0_54 += 0xFF;
            }
            temp_r0_70 = sub_807BF34((*(s32 *)((s8 *)(arg0) + (0x28))), 0x40D0, var_r2_42 >> 8, var_r3_48 >> 8, var_r0_54 >> 8, (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x11))) << 0x19) >> 0x1F, 1);
            (*(void **)((s8 *)(arg0) + (0x30))) = temp_r0_70;
            (*(u8 *)((s8 *)(temp_r0_70) + (0x79))) = (u8) ((*(u8 *)((s8 *)(temp_r0_70) + (0x79))) | 1);
            temp_r2_93 = (-0x41 & (*(u8 *)((s8 *)(temp_r0_70) + (0x77)))) | ((1 & ((u32) ((*(u8 *)((s8 *)(arg0) + (0x77))) << 0x19) >> 0x1F)) << 6);
            (*(u8 *)((s8 *)(temp_r0_70) + (0x77))) = temp_r2_93;
            (*(u8 *)((s8 *)(temp_r0_70) + (0x77))) = (u8) ((temp_r2_93 & ~0x20) | ((1 & ((u32) ((*(u8 *)((s8 *)(arg0) + (0x77))) << 0x1A) >> 0x1F)) << 5));
            (*(s32 **)((s8 *)(temp_r0_70) + (0x68))) = &sub_8087540;
            (*(s32 *)((s8 *)(temp_r0_70) + (0x6C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x6C)));
            (*(s32 *)((s8 *)(temp_r0_70) + (0x2C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x2C)));
            (*(s8 *)((s8 *)(temp_r0_70) + (0x75))) = (s8) ((*(u8 *)((s8 *)(arg0) + (0x75))) + 1);
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806BFD4;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BC40.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8086858(void *, s32);                       /* extern */
extern s32 sub_806BEA8;
extern s32 sub_806BF70;

void sub_806BC40(void *arg0) {
    s32 var_r1_58;
    u16 temp_r0_17;
    u8 temp_r2_24;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r0_17 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_17;
        if ((s32) (temp_r0_17 << 0x10) <= 0) {
            temp_r2_24 = (*(u8 *)((s8 *)(arg0) + (0x77)));
            (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (((-0x41 & temp_r2_24) | (0x40 & temp_r2_24)) & ~0x20);
            (*(s32 *)((s8 *)(arg0) + (0x84))) = 0;
            play_sfx_80195B4(0x119, -1);
            if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
                sub_8082E1C(arg0, 9, 0, 0);
                sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 9, 0, 0);
                var_r1_58 = 0x1534;
            } else {
                sub_8082E1C(arg0, 0x11, 0, 0);
                sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 0x11, 0, 0);
                var_r1_58 = 0x159E;
            }
            *(s32 *)0x03000E3C = sub_8086858(arg0, var_r1_58);
            (*(s32 **)((s8 *)(arg0) + (0x58))) = &sub_806BEA8;
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806BF70;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BD00.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8086858(void *, s32);                       /* extern */
extern s32 sub_806BDA4;
extern s32 sub_806BEA8;

void sub_806BD00(void *arg0) {
    s32 var_r1_44;
    u16 temp_r0_17;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r0_17 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_17;
        if ((s32) (temp_r0_17 << 0x10) <= 0) {
            *((arg0 + 0xAC) - 0x28) = 1;
            play_sfx_80195B4(0x119, -1);
            if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
                sub_8082E1C(arg0, 0xB, 0, 0);
                sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 0xB, 0, 0);
                var_r1_44 = 0x1569;
            } else {
                sub_8082E1C(arg0, 0x13, 0, 0);
                sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 0x13, 0, 0);
                var_r1_44 = 0x15D3;
            }
            *(s32 *)0x03000E3C = sub_8086858(arg0, var_r1_44);
            (*(s32 **)((s8 *)(arg0) + (0x58))) = &sub_806BEA8;
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806BDA4;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BDA4.s\"");
#else
s32 sub_807C298(s32);                           /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806BC40;
extern s32 sub_806BE30;

void sub_806BDA4(void *arg0) {
    s32 *var_r0_43;
    s32 temp_r0_17;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r0_17 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - 1;
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_17;
        if (temp_r0_17 > 0) {
            if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
                sub_8082E1C(arg0, 8, 0, 0);
            } else {
                sub_8082E1C(arg0, 0x10, 0, 0);
            }
            (*(s16 *)((s8 *)(arg0) + (0xAC))) = 8;
            var_r0_43 = &sub_806BC40;
        } else {
            sub_807C298((*(s32 *)((s8 *)(arg0) + (0x30))));
            if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
                sub_8082E1C(arg0, 0xC, 0, 0);
            } else {
                sub_8082E1C(arg0, 0x14, 0, 0);
            }
            var_r0_43 = &sub_806BE30;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = var_r0_43;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BE30.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_806BF0C;

void sub_806BE30(void *arg0) {
    void *temp_r1_20;
    void *temp_r2_21;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0xD, 0, 0);
        temp_r1_20 = arg0 + 0x84;
        temp_r2_21 = (*(void **)((s8 *)(arg0) + (0x28)));
        (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) (*(s32 *)((s8 *)(temp_r2_21) + (0xD8)));
        (*(s32 *)((s8 *)(temp_r1_20) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_21) + (0xDC)));
        (*(s32 *)((s8 *)((temp_r1_20 + 4)) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_21) + (0xE0)));
        (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
        (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x180;
        (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
        sub_8085B38(arg0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xA;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806BF0C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BEA8.s\"");
#else
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
s32 sub_810DD7C(void *, void *, s32);           /* extern */
extern s32 sub_806BDA4;
extern s32 sub_806BF70;

s32 sub_806BEA8(void *arg0, void *arg1) {
    s32 *var_r0_40;
    s32 var_r1_10;
    s32 var_r2_16;
    s32 var_r3_22;

    var_r1_10 = (*(s32 *)((s8 *)(arg1) + (0x38)));
    if (var_r1_10 < 0) {
        var_r1_10 += 0xFF;
    }
    var_r2_16 = (*(s32 *)((s8 *)(arg1) + (0x3C)));
    if (var_r2_16 < 0) {
        var_r2_16 += 0xFF;
    }
    var_r3_22 = (*(s32 *)((s8 *)(arg1) + (0x40)));
    if (var_r3_22 < 0) {
        var_r3_22 += 0xFF;
    }
    sub_80DF024(0x1C4A, var_r1_10 >> 8, var_r2_16 >> 8, var_r3_22 >> 8, arg0);
    sub_810DD7C(arg0, arg1, 0xFF);
    if ((*(s32 *)((s8 *)(arg0) + (0x84))) == 0) {
        var_r0_40 = &sub_806BF70;
    } else {
        var_r0_40 = &sub_806BDA4;
    }
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = var_r0_40;
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BF0C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */

void sub_806BF0C(void *arg0) {
    s32 temp_r5_43;
    s32 var_r1_19;
    s32 var_r2_25;
    s32 var_r3_31;
    u16 temp_r0_12;

    temp_r0_12 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_12;
    if ((s32) (temp_r0_12 << 0x10) <= 0) {
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = 0xAU;
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
        sub_80DF024(0x1C5B, var_r1_19 >> 8, var_r2_25 >> 8, var_r3_31 >> 8, arg0);
    }
    temp_r5_43 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r5_43 == 0) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = temp_r5_43;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BF70.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BFD4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806BC40;

void sub_806BFD4(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
            sub_8082E1C(arg0, 8, 0, 0);
        } else {
            sub_8082E1C(arg0, 0x10, 0, 0);
        }
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 8;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806BC40;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C020.s\"");
#else
s32 sub_806C020(void *arg0)
{
  int new_var2;
  int new_var3;
  s32 **new_var;
  s32 var_r0_8;
  ;
  if (sub_8086D80() == 0)
  {
    new_var2 = 0x4C;
    new_var3 = 0;
    new_var = (s32 **) (((s8 *) arg0) + new_var2);
    *new_var = &sub_806B824;
    var_r0_8 = new_var3;
  }
  return var_r0_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C03C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C0E0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C190.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

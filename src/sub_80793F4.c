#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80793F4 needs.

asm_unified(".include \"asm/macros.inc\"");



s32 sub_807C298();
s32 sub_8082E1C();
extern s32 sub_807940C;

void sub_80793F4(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_807940C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807940C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8079450(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

void sub_8079478(void) {
    sub_807C298();
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079484.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_807F47C(void *);                        /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
s32 sub_810DD7C(void *, s32, s32);              /* extern */

s32 sub_8079484(void *arg0, s32 arg1) {
    s32 var_r1_10;
    s32 var_r2_16;
    s32 var_r3_22;
    void *var_r4_40;

    var_r1_10 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r1_10 < 0) {
        var_r1_10 += 0xFF;
    }
    var_r2_16 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r2_16 < 0) {
        var_r2_16 += 0xFF;
    }
    var_r3_22 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r3_22 < 0) {
        var_r3_22 += 0xFF;
    }
    sub_80DF024(0x2A7E, var_r1_10 >> 8, var_r2_16 >> 8, var_r3_22 >> 8, arg0);
    sub_810DD7C(arg0, arg1, 0xFF);
    sub_807F47C(arg0);
    sub_807C298(arg0);
    var_r4_40 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x38)));
    if (var_r4_40 != NULL) {
        do {
            if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) == 0x2222) {
                sub_807C298(var_r4_40);
            }
            var_r4_40 = (*(void **)((s8 *)(var_r4_40) + (0x30)));
        } while (var_r4_40 != NULL);
    }
    return 0;
}
#endif

void sub_80794FC(void *arg0) {
    s32 temp_r0_16;
    s32 var_r1_23;
    s32 var_r2_8;
    void *var_r1_12;

    var_r2_8 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (var_r2_8 + 0xFFFFFD80);
    var_r1_12 = (*(void **)((s8 *)(arg0) + (0xC)));
    if (var_r1_12 != NULL) {
        do {
            temp_r0_16 = (*(s32 *)((s8 *)(var_r1_12) + (4)));
            (*(s32 *)((s8 *)(var_r1_12) + (4))) = var_r2_8;
            var_r2_8 = temp_r0_16;
            var_r1_12 = (*(void **)((s8 *)(var_r1_12) + (0)));
        } while (var_r1_12 != NULL);
    }
    var_r1_23 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r1_23 < 0) {
        var_r1_23 += 0xFF;
    }
    if ((s32) (var_r1_23 >> 8) <= -0x28) {
        sub_807C298(arg0);
    }
}

void sub_807953C(void *arg0)
{
  s32 temp_r1_8;
  void *new_var;
  s32 var_r0_10;
  new_var = arg0;
  temp_r1_8 = *((s32 *) (((s8 *) arg0) + 0x10));
  var_r0_10 = (*((s32 *) (((s8 *) arg0) + 0x10)) = temp_r1_8 + 0xFFFFFD80);
  if (var_r0_10 < 0)
  {
    var_r0_10 = temp_r1_8 + 0xFFFFFE7F;
  }
  if (((s32) (var_r0_10 >> 8)) <= (-0x20))
  {
    sub_807C298(new_var);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079568.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80795D4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
u32 sub_8199F30();                                  /* extern */
extern s32 sub_8079654;

void sub_80795D4(void *arg0) {
    s32 temp_r1_34;
    s32 temp_r4_29;
    s32 temp_r5_24;
    s32 var_r7_16;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        var_r7_16 = 1;
loop_2:
        temp_r5_24 = ((sub_8199F30() % 7U) + 1) << 0xD;
        temp_r4_29 = ((sub_8199F30() & 7) + 4) << 0xC;
        temp_r1_34 = ((3 & sub_8199F30()) + 2) << 0xC;
        if (temp_r5_24 <= 0x5800) {
            if (temp_r1_34 > (s32) (temp_r4_29 + 0xFFFFD000)) {
                var_r7_16 = 0;
            }
            if (var_r7_16 != 0) {
                goto loop_2;
            }
        }
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r5_24;
        (*(s32 *)((s8 *)(arg0) + (0x14))) = temp_r4_29;
        (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r1_34;
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8079654;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079654.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079688.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8079688(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80796B2.s\"");
#else
s32 sub_80796B2(s32 arg0) {
    return 0 - arg0;
}
#endif

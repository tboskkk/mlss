#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807D5E8 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807D5E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807D77C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807DAD4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_807F53C;
extern s32 sub_807F648;

void sub_807DAD4(void *arg0, s32 arg1, s32 arg3) {
    s32 temp_r8_11;
    s32 var_r0_45;
    s32 var_r2_98;
    u8 temp_r1_179;
    void *temp_r1_169;
    void *temp_r2_147;
    void *temp_r2_168;
    void *temp_r2_178;
    void *var_r1_200;

    temp_r8_11 = (*(s32 *)((s8 *)(arg0) + (0x28)));
    switch (arg1) {                                 /* irregular */
    case 0x100:
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
            sub_8082E1C(arg0, 1, 0x2028, 0);
            var_r0_45 = 0x148;
        } else {
            sub_8082E1C(arg0, 1, 0x2057, 0);
            var_r0_45 = 0x14C;
        }
block_19:
        play_sfx_80195B4(var_r0_45, -1);
block_21:
        temp_r2_147 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_147) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_147) + (0x12))));
        (*(u8 *)((s8 *)(arg0) + (0x76))) = (u8) ((-0x39 & (*(u8 *)((s8 *)(arg0) + (0x76)))) | 8);
        (*(s16 *)((s8 *)(arg0) + (0xB8))) = 0;
        temp_r2_168 = *(void **)0x03000FD8;
        temp_r1_169 = (*(void **)((s8 *)(temp_r2_168) + (0x3C)));
        (*(void **)((s8 *)(temp_r2_168) + (0x3C))) = (void *) (*(void **)((s8 *)(temp_r1_169) + (0)));
        (*(void **)((s8 *)(temp_r1_169) + (0))) = (void *) (*(void **)((s8 *)(temp_r2_168) + (0x4C)));
        (*(s32 **)((s8 *)(temp_r1_169) + (4))) = &sub_807F648;
        (*(s16 *)((s8 *)(temp_r1_169) + (0x10))) = 0;
        (*(void **)((s8 *)(temp_r2_168) + (0x4C))) = temp_r1_169;
        (*(void **)((s8 *)(temp_r1_169) + (8))) = arg0;
        temp_r2_178 = *(void **)0x03000FD8;
        temp_r1_179 = (*(u8 *)((s8 *)(temp_r2_178) + (0xC)));
        if ((0x80 & temp_r1_179) && (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) == 0)) {
            (*(u8 *)((s8 *)(temp_r2_178) + (0xC))) = (u8) (0x7F & temp_r1_179);
            if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
                var_r1_200 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x74)));
            } else {
                var_r1_200 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x70)));
            }
            (*(s32 **)((s8 *)(var_r1_200) + (0x54))) = &sub_807F53C;
        }
        return;
    case 0x200:
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
            sub_8082E1C(arg0, 1, 0x2029, 0);
            var_r0_45 = 0xE7;
        } else {
            sub_8082E1C(arg0, 1, 0x2058, 0);
            var_r0_45 = 0x14B;
        }
        goto block_19;
    case 0x1:
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
            var_r2_98 = 0x202A;
block_18:
            sub_8082E1C(arg0, 0, var_r2_98, 0);
            var_r0_45 = 0x149;
        } else {
            sub_8082E1C(arg0, 0, 0x2059, 0);
            var_r0_45 = 0x104;
        }
        goto block_19;
    case 0x2:
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
            var_r2_98 = 0x202C;
            goto block_18;
        }
        sub_8082E1C(arg0, 0, 0x205B, 0);
        play_sfx_80195B4(0x104, -1);
        goto block_21;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807DC8C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807DD38.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807DDE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807DFE8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807E084.s\"");
#else
s32 sub_807DDE4(void *, void *);                /* extern */
s32 sub_807DFE8(void *, void *);                    /* extern */

void sub_807E084(void) {
    void *temp_r2_34;
    void *temp_r2_77;
    void *temp_r2_8;
    void *temp_r4_23;
    void *temp_r4_66;
    void *temp_r6_19;
    void *var_r5_15;

    temp_r2_8 = *(void **)0x03000FD8;
    (*(u8 *)((s8 *)(temp_r2_8) + (0xD))) = (u8) (-0xD & (*(u8 *)((s8 *)(temp_r2_8) + (0xD))));
    var_r5_15 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x54)));
    if (var_r5_15 != NULL) {
        do {
            temp_r6_19 = (*(void **)((s8 *)(var_r5_15) + (0x34)));
            temp_r4_23 = (*(void **)((s8 *)(*(u32 *)0x03000FD8) + (0x80)));
            if ((temp_r4_23 != NULL) && ((6 & (*(u8 *)((s8 *)(temp_r4_23) + (0x7E)))) == 2)) {
                temp_r2_34 = (*(void **)((s8 *)(temp_r4_23) + (0x38)));
                if ((temp_r2_34 == NULL) || ((6 & (*(u8 *)((s8 *)(temp_r2_34) + (0x76)))) != 2)) {
                    sub_807DDE4(var_r5_15, temp_r4_23 + 8);
                } else if (sub_807DFE8(var_r5_15, temp_r2_34) == 0) {
                    sub_807DDE4(var_r5_15, temp_r4_23 + 8);
                }
            }
            temp_r4_66 = (*(void **)((s8 *)(*(u32 *)0x03000FD8) + (0x84)));
            if ((temp_r4_66 != NULL) && ((6 & (*(u8 *)((s8 *)(temp_r4_66) + (0x7E)))) == 2)) {
                temp_r2_77 = (*(void **)((s8 *)(temp_r4_66) + (0x38)));
                if ((temp_r2_77 == NULL) || ((6 & (*(u8 *)((s8 *)(temp_r2_77) + (0x76)))) != 2)) {
                    sub_807DDE4(var_r5_15, temp_r4_66 + 8);
                } else if (sub_807DFE8(var_r5_15, temp_r2_77) == 0) {
                    sub_807DDE4(var_r5_15, temp_r4_66 + 8);
                }
            }
            var_r5_15 = temp_r6_19;
        } while (var_r5_15 != NULL);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807E534.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807E680.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807EA24.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807EAE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807EF54.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F3AC.s\"");
#else
s32 sub_8086700(void *);                        /* extern */
s32 sub_810E03C(s32, void *, s32, s32, s32, s32); /* extern */

s32 sub_807F3AC(s32 arg0, void *arg1, s32 arg2) {
    s32 var_r0_32;
    void *temp_r5_10;
    void *var_r4_9;

    var_r4_9 = arg1;
    temp_r5_10 = (*(void **)((s8 *)(var_r4_9) + (0x28)));
    if (temp_r5_10 != NULL) {
        if ((*(s32 *)((s8 *)(var_r4_9) + (8))) == 0) {
            var_r4_9 = temp_r5_10 + 8;
        }
        if ((s32) (*(s32 *)((s8 *)(var_r4_9) + (0x10))) < 0) {

        }
        var_r0_32 = (*(s32 *)((s8 *)(var_r4_9) + (0x18)));
        if (var_r0_32 < 0) {
            var_r0_32 += 0xFF;
        }
        sub_810E03C(arg0, var_r4_9, arg2, 0, (var_r0_32 >> 8) + (s8) (*(u8 *)((s8 *)(var_r4_9) + (0xC5))), 0);
        (*(s16 *)((s8 *)(var_r4_9) + (0xB8))) = 0x193;
        if (!(2 & (*(u8 *)((s8 *)(temp_r5_10) + (0x111)))) && (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) == 0)) {
            sub_8086700(temp_r5_10 + 8);
            return -1;
        }
        goto block_10;
    }
block_10:
    return 0;
}
#endif

s32 sub_81165CC(s32, s32);                      /* extern */
void sub_807F448(void)
{
  s8 *new_var2;
  s8 *new_var;
  s8 **new_var3;
  void *temp_r2_20;
  void *temp_r2_8;
  s8 *new_var4;
  unsigned long long new_var5;
  new_var3 = &new_var;
  temp_r2_8 = *((void **) 0x03000FD8);
  new_var2 = (s8 *) temp_r2_8;
  new_var = (s8 *) temp_r2_8;
  new_var4 = *new_var3;
  if (2 & (*((u8 *) (new_var2 + 0xC))))
  {
    sub_81165CC(*((s32 *) (new_var4 + 0x248)), 1);
    temp_r2_20 = *((void **) 0x03000FD8);
    new_var5 = -3;
    *((u8 *) (((s8 *) temp_r2_20) + 0xC)) = (u8) (new_var5 & (*((u8 *) (((s8 *) temp_r2_20) + 0xC))));
  }
}

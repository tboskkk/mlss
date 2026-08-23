#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8113420 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113420.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8112D78;
void sub_8113458(void *arg0)
{
  void *temp_r2_30;
  unsigned int new_var;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    new_var = *((u16 *) (((s8 *) arg0) + 0xAC));
    if (((s16) new_var) != 0)
    {
      *((u16 *) (0xAC + ((s8 *) arg0))) = (u16) (new_var - 1);
      return;
    }
    sub_8082E1C(arg0, 0x17, 0, 0);
    temp_r2_30 = *((void **) (8 + ((s8 *) arg0)));
    *((u8 *) (((s8 *) temp_r2_30) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_30) + 0x12))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8112D78;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81134A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81135C0.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8086858(void *, s32);                   /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_8113EA0;
extern s32 sub_8113F30;
extern s32 sub_8114110;

void sub_81135C0(void *arg0) {
    s32 var_r1_50;
    s32 var_r2_56;
    s32 var_r3_62;
    void *temp_r2_42;
    void *temp_r4_29;

    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113))) = 1;
    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xAC))) - 1);
        return;
    }
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8114110;
    temp_r4_29 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x30)));
    (*(s8 *)((s8 *)(temp_r4_29) + (0x75))) = (s8) ((*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r4_29) + (0x2C)))) + (0x75))) - 1);
    sub_8082E1C(temp_r4_29, 5, 0, 0);
    temp_r2_42 = (*(void **)((s8 *)(temp_r4_29) + (8)));
    (*(u8 *)((s8 *)(temp_r2_42) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_42) + (0x12)))) | 2);
    var_r1_50 = (*(s32 *)((s8 *)(temp_r4_29) + (0x38)));
    if (var_r1_50 < 0) {
        var_r1_50 += 0xFF;
    }
    var_r2_56 = (*(s32 *)((s8 *)(temp_r4_29) + (0x3C)));
    if (var_r2_56 < 0) {
        var_r2_56 += 0xFF;
    }
    var_r3_62 = (*(s32 *)((s8 *)(temp_r4_29) + (0x40)));
    if (var_r3_62 < 0) {
        var_r3_62 += 0xFF;
    }
    sub_80DF024(0x2ABF, var_r1_50 >> 8, var_r2_56 >> 8, var_r3_62 >> 8, temp_r4_29);
    sub_8086858(temp_r4_29, 0x18CE);
    (*(s32 **)((s8 *)(temp_r4_29) + (0x58))) = &sub_8113F30;
    (*(s32 **)((s8 *)(temp_r4_29) + (0x60))) = &sub_8113EA0;
    stop_sfx_80195A8(0x120);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113674.s\"");
#else
void sub_8113674(void *arg0) {
    s32 temp_r4_22;
    s32 temp_r5_21;
    s32 temp_r6_20;
    s32 var_r0_49;
    s32 var_r0_58;
    s32 var_r0_67;
    s32 var_r1_44;
    void *temp_r1_12;
    void *temp_r2_14;
    void *temp_r3_11;
    void *var_r3_43;

    temp_r3_11 = arg0 + 0xC;
    temp_r1_12 = (*(void **)((s8 *)(arg0) + (0x30)));
    temp_r2_14 = temp_r1_12 + 0xC;
    (*(s8 *)((s8 *)(temp_r1_12) + (0x75))) = (s8) ((*(u8 *)((s8 *)(arg0) + (0x75))) - 0xC);
    temp_r6_20 = (*(s32 *)((s8 *)(temp_r3_11) + (4)));
    temp_r5_21 = (*(s32 *)((s8 *)(temp_r3_11) + (8)));
    temp_r4_22 = (*(s32 *)((s8 *)(temp_r3_11) + (0xC)));
    var_r3_43 = (*(void **)((s8 *)(arg0) + (0xC)));
    var_r1_44 = 1;
    if (var_r3_43 != NULL) {
        do {
            var_r0_49 = (((*(s32 *)((s8 *)(temp_r2_14) + (4))) + (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8)) - temp_r6_20) * var_r1_44;
            if (var_r0_49 < 0) {
                var_r0_49 += 3;
            }
            (*(s32 *)((s8 *)(var_r3_43) + (4))) = (s32) ((var_r0_49 >> 2) + temp_r6_20);
            var_r0_58 = (((*(s32 *)((s8 *)(temp_r2_14) + (8))) + (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8)) - temp_r5_21) * var_r1_44;
            if (var_r0_58 < 0) {
                var_r0_58 += 3;
            }
            (*(s32 *)((s8 *)(var_r3_43) + (8))) = (s32) ((var_r0_58 >> 2) + temp_r5_21);
            var_r0_67 = (((*(s32 *)((s8 *)(temp_r2_14) + (0xC))) + (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8)) - temp_r4_22) * var_r1_44;
            if (var_r0_67 < 0) {
                var_r0_67 += 3;
            }
            (*(s32 *)((s8 *)(var_r3_43) + (0xC))) = (s32) ((var_r0_67 >> 2) + temp_r4_22);
            var_r3_43 = (*(void **)((s8 *)(var_r3_43) + (0)));
            var_r1_44 += 1;
        } while (var_r3_43 != NULL);
    }
}
#endif

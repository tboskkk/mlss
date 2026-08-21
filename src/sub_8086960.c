#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8086960 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086960.s\"");
#else
s32 sub_807C298(void *);                        /* extern */

void sub_8086960(void *arg0) {
    s32 temp_r5_58;
    s32 var_r0_67;
    void *temp_r4_9;
    void *var_r1_28;

    temp_r4_9 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (8)));
    if ((temp_r4_9 != NULL) && ((*(u8 *)((s8 *)(temp_r4_9) + (0x21))) == M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) && !(0x20 & (*(u8 *)((s8 *)(temp_r4_9) + (0x12))))) {
        var_r1_28 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x78)));
loop_5:
        if (var_r1_28 != NULL) {
            if ((var_r1_28 != arg0) && ((*(s32 *)((s8 *)(var_r1_28) + (0x4C))) != 0)) {
                M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
                temp_r5_58 = (*(s32 *)((s8 *)(arg0) + (0x84)));
                if (0x40 & (*(u8 *)((s8 *)(temp_r4_9) + (0x11)))) {
                    var_r0_67 = temp_r5_58 - (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8);
                } else {
                    var_r0_67 = temp_r5_58 + (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8);
                }
                (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_67;
                (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x88))) + (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8));
                (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x8C))) + (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8));
                return;
            }
            var_r1_28 = (*(void **)((s8 *)(var_r1_28) + (0)));
            goto loop_5;
        }
        goto block_10;
    }
block_10:
    sub_807C298(arg0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086A18.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086AF4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086BC4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086C64.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086D80.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086E8C.s\"");
#else
void *sub_8086E8C(void *arg0) {
    void **temp_r5_32;
    void *temp_r1_21;
    void *temp_r1_59;
    void *temp_r2_39;
    void *var_r1_33;
    void *var_r2_46;
    void *var_r2_9;
    void *var_r3_8;

    var_r3_8 = (*(void **)((s8 *)(arg0) + (8)));
    var_r2_9 = (*(void **)((s8 *)(arg0) + (0x30)));
    if (var_r2_9 != NULL) {
        do {
            if (8 & (*(u8 *)((s8 *)(var_r2_9) + (0x79)))) {
                temp_r1_21 = (*(void **)((s8 *)(var_r2_9) + (8)));
                if ((u32) (*(u16 *)((s8 *)(temp_r1_21) + (0xE))) < (u32) (*(u16 *)((s8 *)(var_r3_8) + (0xE)))) {
                    var_r3_8 = temp_r1_21;
                }
            }
            var_r2_9 = (*(void **)((s8 *)(var_r2_9) + (0x30)));
        } while (var_r2_9 != NULL);
    }
    temp_r5_32 = (*(void ***)((s8 *)(arg0) + (0x28)));
    var_r1_33 = *temp_r5_32;
    if ((var_r1_33 != NULL) && (var_r1_33 != temp_r5_32)) {
        do {
            temp_r2_39 = (*(void **)((s8 *)(var_r1_33) + (0x10)));
            if ((u32) (*(u16 *)((s8 *)(temp_r2_39) + (0xE))) < (u32) (*(u16 *)((s8 *)(var_r3_8) + (0xE)))) {
                var_r3_8 = temp_r2_39;
            }
            var_r2_46 = (*(void **)((s8 *)(var_r1_33) + (0x38)));
            if (var_r2_46 != NULL) {
                do {
                    if (8 & (*(u8 *)((s8 *)(var_r2_46) + (0x79)))) {
                        temp_r1_59 = (*(void **)((s8 *)(var_r2_46) + (8)));
                        if ((u32) (*(u16 *)((s8 *)(temp_r1_59) + (0xE))) < (u32) (*(u16 *)((s8 *)(var_r3_8) + (0xE)))) {
                            var_r3_8 = temp_r1_59;
                        }
                    }
                    var_r2_46 = (*(void **)((s8 *)(var_r2_46) + (0x30)));
                } while (var_r2_46 != NULL);
            }
            var_r1_33 = (*(void **)((s8 *)(var_r1_33) + (0)));
        } while (var_r1_33 != temp_r5_32);
    }
    return var_r3_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086F0C.s\"");
#else
void sub_8086F0C(void *arg0) {
    s32 temp_r0_80;
    s32 temp_r2_71;
    void *temp_r0_12;
    void *temp_r0_15;
    void *temp_r1_21;
    void *temp_r2_16;
    void *temp_r3_19;
    void *temp_r4_18;
    void *var_r1_84;

    temp_r0_12 = (*(void **)((s8 *)(arg0) + (8)));
    temp_r0_15 = *(void **)0x03000FD8;
    temp_r2_16 = (*(void **)((s8 *)(temp_r0_15) + (0x70)));
    temp_r4_18 = temp_r2_16 + 8;
    temp_r3_19 = (*(void **)((s8 *)(temp_r0_15) + (0x74)));
    temp_r1_21 = temp_r3_19 + 8;
    if ((6 & (*(u8 *)((s8 *)(temp_r2_16) + (0x7E)))) == 2) {
        (*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r4_18) + (8)))) + (0xE))) = (s16) ((*(u16 *)((s8 *)(temp_r0_12) + (0xE))) - 2);
    }
    if ((6 & (*(u8 *)((s8 *)(temp_r3_19) + (0x7E)))) == 2) {
        (*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r1_21) + (8)))) + (0xE))) = (s16) ((*(u16 *)((s8 *)(temp_r0_12) + (0xE))) - 2);
    }
    if ((6 & (*(u8 *)((s8 *)(temp_r2_16) + (0x7E)))) == 2) {
        if ((6 & (*(u8 *)((s8 *)(temp_r3_19) + (0x7E)))) == 2) {
            temp_r2_71 = M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */) + (s8) (*(u8 *)((s8 *)((temp_r2_16 + 0x7C)) + (1)));
            temp_r0_80 = M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */) + (s8) (*(u8 *)((s8 *)((temp_r3_19 + 0x7C)) + (1)));
            if (temp_r2_71 < temp_r0_80) {
                var_r1_84 = (*(void **)((s8 *)(temp_r1_21) + (8)));
            } else if (temp_r0_80 < temp_r2_71) {
                var_r1_84 = (*(void **)((s8 *)(temp_r4_18) + (8)));
            } else if ((s32) (*(s32 *)((s8 *)(temp_r4_18) + (0x14))) < (s32) (*(s32 *)((s8 *)(temp_r1_21) + (0x14)))) {
                var_r1_84 = (*(void **)((s8 *)(temp_r4_18) + (8)));
            } else {
                var_r1_84 = (*(void **)((s8 *)(temp_r1_21) + (8)));
            }
            (*(u16 *)((s8 *)(var_r1_84) + (0xE))) = (u16) ((*(u16 *)((s8 *)(var_r1_84) + (0xE))) + 1);
        }
        if (((6 & (*(u8 *)((s8 *)(temp_r4_18) + (0x76)))) != 2) || ((*(s32 *)((s8 *)(temp_r4_18) + (0x4C))) == 0)) {
            goto block_16;
        }
    } else {
block_16:
        if (((6 & (*(u8 *)((s8 *)(temp_r1_21) + (0x76)))) != 2) || ((*(s32 *)((s8 *)(temp_r1_21) + (0x4C))) == 0)) {
            (*(s8 *)((s8 *)(temp_r4_18) + (0x74))) = 0;
            (*(s8 *)((s8 *)((temp_r4_18 + 0x74)) + (1))) = 0;
            (*(s8 *)((s8 *)(temp_r1_21) + (0x74))) = 0;
            (*(s8 *)((s8 *)((temp_r1_21 + 0x74)) + (1))) = 0;
            (*(u8 *)((s8 *)(temp_r4_18) + (0x79))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r4_18) + (0x79))));
            (*(u8 *)((s8 *)(temp_r1_21) + (0x79))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r1_21) + (0x79))));
            (*(s32 *)((s8 *)(arg0) + (4))) = 0;
        }
    }
}
#endif

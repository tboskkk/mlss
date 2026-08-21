#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802563C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802563C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025ACC.s\"");
#else
s32 sub_804034C(void *);                        /* extern */
s32 sub_80465D8(void *);                        /* extern */

void sub_8025ACC(void *arg0) {
    s32 var_r5_56;
    u8 var_r0_11;
    u8 var_r1_42;
    void **var_r4_52;
    void *temp_r0_105;
    void *temp_r0_121;
    void *temp_r0_130;
    void *temp_r0_67;
    void *temp_r0_76;
    void *temp_r0_88;
    void *temp_r0_96;

    var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x10E)));
    if ((var_r0_11 != 0) || (var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x110))), (var_r0_11 != 0)) || (var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x112))), (var_r0_11 != 0)) || (var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x114))), (var_r0_11 != 0)) || (var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x116))), (var_r0_11 != 0)) || (var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x11A))), var_r1_42 = 0, (var_r0_11 != 0))) {
        var_r1_42 = var_r0_11;
    }
    if ((s32) var_r1_42 > 0) {
        var_r4_52 = arg0 + ((var_r1_42 * 4) + 0x28);
        var_r5_56 = (*(u8 *)((s8 *)(arg0) + (0x10B))) - var_r1_42;
        if ((var_r5_56 != 0) && (!(1 & var_r5_56) || (sub_80465D8(*var_r4_52), temp_r0_67 = *var_r4_52, (*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(temp_r0_67) + (0x338))) + 0x68)) + (4)))(temp_r0_67 + M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */)), temp_r0_76 = *var_r4_52, (*(s32 (**)(void *, void *, s32))((s8 *)(((*(s32 *)((s8 *)(temp_r0_76) + (0x338))) + 0x70)) + (4)))(temp_r0_76 + M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */), arg0 + 0x28, 0), temp_r0_88 = *var_r4_52, var_r4_52 += 4, sub_804034C(temp_r0_88), var_r5_56 -= 1, (var_r5_56 != 0)))) {
            do {
                sub_80465D8((*(void **)((s8 *)(var_r4_52) + (0))));
                temp_r0_96 = (*(void **)((s8 *)(var_r4_52) + (0)));
                (*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(temp_r0_96) + (0x338))) + 0x68)) + (4)))(temp_r0_96 + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
                temp_r0_105 = (*(void **)((s8 *)(var_r4_52) + (0)));
                (*(s32 (**)(void *, void *, s32))((s8 *)(((*(s32 *)((s8 *)(temp_r0_105) + (0x338))) + 0x70)) + (4)))(temp_r0_105 + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), arg0 + 0x28, 0);
                sub_804034C((*(void **)((s8 *)(var_r4_52) + (0))));
                sub_80465D8((*(void **)((s8 *)(var_r4_52) + (4))));
                temp_r0_121 = (*(void **)((s8 *)(var_r4_52) + (4)));
                (*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(temp_r0_121) + (0x338))) + 0x68)) + (4)))(temp_r0_121 + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
                temp_r0_130 = (*(void **)((s8 *)(var_r4_52) + (4)));
                (*(s32 (**)(void *, void *, s32))((s8 *)(((*(s32 *)((s8 *)(temp_r0_130) + (0x338))) + 0x70)) + (4)))(temp_r0_130 + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), arg0 + 0x28, 0);
                sub_804034C((*(void **)((s8 *)(var_r4_52) + (4))));
                var_r5_56 -= 2;
                var_r4_52 += 8;
            } while (var_r5_56 != 0);
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025C04.s\"");
#else
u8 sub_8025C04(s32 arg0, s32 arg1) {
    u16 *sp0;
    u16 *sp4;
    s32 sp8;
    s32 temp_r1_111;
    s32 temp_r1_24;
    s32 temp_r1_34;
    s32 temp_r1_92;
    s32 temp_r7_32;
    s32 var_r0_128;
    s32 var_r0_72;
    s32 var_r0_99;
    s32 var_r1_69;
    s32 var_r2_110;
    s32 var_r5_33;
    s32 var_r6_45;
    u16 temp_r2_66;
    u8 var_r8_18;
    void *temp_r3_63;
    void *temp_r4_16;

    temp_r4_16 = *(arg0 + 0x28 + (arg1 * 4));
    var_r8_18 = 0;
    temp_r1_24 = (*(s32 *)((s8 *)(temp_r4_16) + (0xC))) - ((u16) (*(u16 *)((s8 *)(temp_r4_16) + (0x272))) >> 1);
    temp_r7_32 = (*(s32 *)((s8 *)(temp_r4_16) + (0x10))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    var_r5_33 = (*(s32 *)((s8 *)(temp_r4_16) + (0x14)));
    temp_r1_34 = (*(s32 *)((s8 *)(temp_r4_16) + (0x18)));
    if ((temp_r1_34 > 0) || ((temp_r1_34 < 0) && ((s32) (*(s32 *)((s8 *)(temp_r4_16) + (0x40))) < 0))) {
        var_r5_33 += temp_r1_34;
    }
    var_r6_45 = 0;
    sp8 = arg0 + 0x28;
    sp0 = temp_r4_16 + 0x276;
    sp4 = temp_r4_16 + 0x274;
    do {
        temp_r3_63 = *(sp8 + (var_r6_45 * 4));
        temp_r2_66 = (*(u16 *)((s8 *)(temp_r3_63) + (0x272)));
        var_r1_69 = (*(s32 *)((s8 *)(temp_r3_63) + (0xC))) - (temp_r2_66 >> 1);
        if (var_r1_69 < temp_r1_24) {
            var_r0_72 = var_r1_69 + temp_r2_66;
            var_r1_69 = temp_r1_24;
        } else {
            var_r0_72 = (*(u16 *)((s8 *)(temp_r4_16) + (0x272))) + temp_r1_24;
        }
        if ((s32) (var_r0_72 - var_r1_69) > 0) {
            temp_r1_92 = (*(s32 *)((s8 *)(temp_r3_63) + (0x10))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
            if (temp_r1_92 > temp_r7_32) {
                var_r0_99 = temp_r7_32 - (temp_r1_92 - (*(u16 *)((s8 *)(temp_r3_63) + (0x276))));
            } else {
                var_r0_99 = temp_r1_92 - (temp_r7_32 - *sp0);
            }
            if (var_r0_99 > 0) {
                var_r2_110 = (*(s32 *)((s8 *)(temp_r3_63) + (0x14)));
                temp_r1_111 = (*(s32 *)((s8 *)(temp_r3_63) + (0x18)));
                if ((temp_r1_111 > 0) || ((temp_r1_111 < 0) && ((s32) (*(s32 *)((s8 *)(temp_r3_63) + (0x40))) < 0))) {
                    var_r2_110 += temp_r1_111;
                }
                if (var_r2_110 <= var_r5_33) {
                    var_r0_128 = (var_r2_110 + (*(u16 *)((s8 *)(temp_r3_63) + (0x274)))) - var_r5_33;
                } else {
                    var_r0_128 = (var_r5_33 + *sp4) - var_r2_110;
                }
                if (var_r0_128 >= 0) {
                    var_r8_18 |= 1 << var_r6_45;
                }
            }
        }
        var_r6_45 += 1;
    } while (var_r6_45 <= 1);
    return var_r8_18;
}
#endif

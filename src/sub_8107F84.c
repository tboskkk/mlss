#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8107F84 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8086E8C();
s32 sub_8199F30();
s32 sub_81DD77C();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107F84.s\"");
#else
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_8107F84(void *arg0, s32 arg1) {
    s32 temp_r0_66;
    s32 var_r1_79;
    s32 var_r6_8;
    u8 temp_r0_33;

    var_r6_8 = arg1;
    if (!(1 & (*(u16 *)((s8 *)(arg0) + (0x11E))))) {
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            temp_r0_33 = (*(u8 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) * 0x3C))) + (0x37)));
            if (temp_r0_33 != 0xF) {
                if (temp_r0_33 == 0x11) {
                    var_r6_8 -= 0x3C;
                }
            } else {
                var_r6_8 -= 0x1E;
            }
            if (var_r6_8 < sub_81DD77C(0x64, sub_8199F30())) {
                goto block_7;
            }
            goto block_15;
        }
        temp_r0_66 = 0x64 - M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */);
        if (temp_r0_66 != 0x64) {
            if (temp_r0_66 != 0) {
                var_r1_79 = 1;
                if ((s32) (var_r6_8 - (temp_r0_66 / 3)) < sub_81DD77C(0x64, sub_8199F30())) {
                    var_r1_79 = 0;
                }
                if (var_r1_79 != 0) {
                    goto block_13;
                }
                goto block_7;
            }
block_13:
            if (!(0x300 & (*(u16 *)((s8 *)(arg0) + (0x11E))))) {
                (*(s8 *)((s8 *)(arg0) + (0x128))) = 0xFF;
                (*(s16 *)((s8 *)(arg0) + (0x126))) = 1;
            }
block_15:
            (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) ((0xFFFC & (*(u16 *)((s8 *)(arg0) + (0x11E)))) | 1);
            (*(u8 *)((s8 *)(arg0) + (0x120))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x120)))) | 4);
            return 1;
        }
        goto block_7;
    }
block_7:
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108084.s\"");
#else
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_8108084(void *arg0, s32 arg1) {
    s32 temp_r0_66;
    s32 var_r1_79;
    s32 var_r6_8;
    u8 temp_r0_33;

    var_r6_8 = arg1;
    if (!(2 & (*(u16 *)((s8 *)(arg0) + (0x11E))))) {
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            temp_r0_33 = (*(u8 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) * 0x3C))) + (0x37)));
            if (temp_r0_33 != 0xF) {
                if (temp_r0_33 == 0x11) {
                    var_r6_8 -= 0x3C;
                }
            } else {
                var_r6_8 -= 0x1E;
            }
            if (var_r6_8 < sub_81DD77C(0x64, sub_8199F30())) {
                goto block_7;
            }
            goto block_15;
        }
        temp_r0_66 = 0x64 - M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */);
        if (temp_r0_66 != 0x64) {
            if (temp_r0_66 != 0) {
                var_r1_79 = 1;
                if ((s32) (var_r6_8 - (temp_r0_66 / 3)) < sub_81DD77C(0x64, sub_8199F30())) {
                    var_r1_79 = 0;
                }
                if (var_r1_79 != 0) {
                    goto block_13;
                }
                goto block_7;
            }
block_13:
            if (!(0x300 & (*(u16 *)((s8 *)(arg0) + (0x11E))))) {
                (*(s8 *)((s8 *)(arg0) + (0x128))) = 0xFF;
                (*(s16 *)((s8 *)(arg0) + (0x126))) = 1;
            }
block_15:
            (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) ((0xFFFC & (*(u16 *)((s8 *)(arg0) + (0x11E)))) | 2);
            (*(u8 *)((s8 *)(arg0) + (0x120))) = (u8) (-8 & (*(u8 *)((s8 *)(arg0) + (0x120))));
            return 1;
        }
        goto block_7;
    }
block_7:
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108180.s\"");
#else
s32 sub_8086E8C(void *);                            /* extern */
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_8108180(void *arg0, s32 arg1) {
    s32 temp_r4_132;
    s32 temp_r5_75;
    s32 var_r0_70;
    s32 var_r2_137;
    s32 var_r2_87;
    s32 var_r8_43;
    u8 temp_r0_108;
    u8 temp_r0_175;
    u8 temp_r1_37;

    if (!(0x100 & (*(u16 *)((s8 *)(arg0) + (0x11E))))) {
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            temp_r1_37 = (*(u8 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) * 0x3C))) + (0x37)));
            if (temp_r1_37 != 0x10) {
                var_r8_43 = 0;
                if (temp_r1_37 == 0x12) {
                    var_r8_43 = 0x3C;
                }
            } else {
                var_r8_43 = 0x1E;
            }
            var_r0_70 = ((s32) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8) / (s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) * (0x64 - arg1);
            if (var_r0_70 < 0) {
                var_r0_70 += 0xFF;
            }
            temp_r5_75 = var_r0_70 >> 8;
            if (temp_r5_75 > sub_81DD77C(0x64 - (var_r8_43 / 3), sub_8199F30())) {
                var_r2_87 = 0;
            } else {
                var_r2_87 = 2;
                if (temp_r5_75 > sub_81DD77C(0x64 - var_r8_43, sub_8199F30())) {
                    var_r2_87 = 1;
                }
            }
            temp_r0_108 = (-0x71 & (*(u8 *)((s8 *)(arg0) + (0x121)))) | (var_r2_87 * 0x10);
            (*(u8 *)((s8 *)(arg0) + (0x121))) = temp_r0_108;
            if (!(temp_r0_108 & 0x70)) {
                goto block_13;
            }
            goto block_25;
        }
        temp_r4_132 = 0x64 - M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */);
        if (temp_r4_132 != 0x64) {
            if (temp_r4_132 == 0) {
                var_r2_137 = 2;
            } else {
                if ((s32) (arg1 - (temp_r4_132 / 3)) < sub_81DD77C(0x64, sub_8199F30())) {
                    goto block_18;
                }
                var_r2_137 = 2;
                if ((s32) (arg1 - temp_r4_132) < sub_81DD77C(0x64, sub_8199F30())) {
                    var_r2_137 = 1;
                }
            }
        } else {
block_18:
            var_r2_137 = 0;
        }
        temp_r0_175 = (-0x71 & (*(u8 *)((s8 *)(arg0) + (0x121)))) | (var_r2_137 * 0x10);
        (*(u8 *)((s8 *)(arg0) + (0x121))) = temp_r0_175;
        if (temp_r0_175 & 0x70) {
            (*(s8 *)((s8 *)(arg0) + (0x128))) = 0xFF;
            (*(s16 *)((s8 *)(arg0) + (0x126))) = 1;
            if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122)))) && !(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
                (*(s32 *)((s8 *)(arg0) + (0x118))) = sub_8086E8C(arg0 + 8);
                (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
            }
block_25:
            (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) ((0xFCFF & (*(u16 *)((s8 *)(arg0) + (0x11E)))) | 0x100);
            return 1;
        }
        goto block_13;
    }
block_13:
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810835C.s\"");
#else
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_810835C(void *arg0, u32 arg1) {
    u32 var_r3_8;
    u8 temp_r0_30;

    var_r3_8 = arg1;
    if (!(0x300 & (*(u16 *)((s8 *)(arg0) + (0x11E))))) {
        temp_r0_30 = (*(u8 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) * 0x3C))) + (0x37)));
        if (temp_r0_30 != 0x10) {
            if (temp_r0_30 == 0x12) {
                var_r3_8 -= 0x3C;
            }
        } else {
            var_r3_8 -= 0x1E;
        }
        if ((s32) ((s32) (var_r3_8 + (var_r3_8 >> 0x1F)) >> 1) >= sub_81DD77C(0x64, sub_8199F30())) {
            (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0x200 | (*(u16 *)((s8 *)(arg0) + (0x11E))));
            (*(u8 *)((s8 *)(arg0) + (0x121))) = (u8) ((-0x71 & (*(u8 *)((s8 *)(arg0) + (0x121)))) | 0x10);
            return 1;
        }
        goto block_7;
    }
block_7:
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81083EC.s\"");
#else
s32 sub_8086E8C(void *);                            /* extern */
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_81083EC(void *arg0, s32 arg1) {
    u16 temp_r0_29;

    if ((0x400 & (*(u16 *)((s8 *)(arg0) + (0x11E)))) || (arg1 < sub_81DD77C(0x64, sub_8199F30()))) {
        return 0;
    }
    temp_r0_29 = (*(u16 *)((s8 *)(arg0) + (0x11E)));
    (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0xF3FF & temp_r0_29);
    if (!(temp_r0_29 & 0x800)) {
        if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
            (*(s32 *)((s8 *)(arg0) + (0x118))) = sub_8086E8C(arg0 + 8);
            (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
        }
        (*(s8 *)((s8 *)(arg0) + (0x128))) = 0xFF;
        (*(s16 *)((s8 *)(arg0) + (0x126))) = 1;
        (*(s8 *)((s8 *)(arg0) + (0x12A))) = 1;
        (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0x400 | (*(u16 *)((s8 *)(arg0) + (0x11E))));
        goto block_8;
    }
    if ((u32) (u8) ((*(u8 *)((s8 *)(arg0) + (0x12C))) - 0x13) <= 1U) {
block_8:
        (*(s32 *)((s8 *)(arg0) + (0x120))) = (s32) (((*(s32 *)((s8 *)(arg0) + (0x120))) & 0xFFFC7FFF) | 0x20000);
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81084B4.s\"");
#else
s32 sub_8086E8C(void *);                            /* extern */
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_81084B4(void *arg0, s32 arg1) {
    u16 temp_r0_29;

    if ((0x800 & (*(u16 *)((s8 *)(arg0) + (0x11E)))) || (arg1 < sub_81DD77C(0x64, sub_8199F30()))) {
        return 0;
    }
    temp_r0_29 = (*(u16 *)((s8 *)(arg0) + (0x11E)));
    (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0xF3FF & temp_r0_29);
    if (!(temp_r0_29 & 0x400)) {
        if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
            (*(s32 *)((s8 *)(arg0) + (0x118))) = sub_8086E8C(arg0 + 8);
            (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
        }
        (*(s8 *)((s8 *)(arg0) + (0x128))) = 0xFF;
        (*(s16 *)((s8 *)(arg0) + (0x126))) = 1;
        (*(s8 *)((s8 *)(arg0) + (0x12A))) = 1;
        (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0x800 | (*(u16 *)((s8 *)(arg0) + (0x11E))));
        goto block_8;
    }
    if ((u32) (u8) ((*(u8 *)((s8 *)(arg0) + (0x12C))) - 0x13) <= 1U) {
block_8:
        (*(s32 *)((s8 *)(arg0) + (0x120))) = (s32) (((*(s32 *)((s8 *)(arg0) + (0x120))) & 0xFFFC7FFF) | 0x20000);
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810857C.s\"");
#else
s32 sub_8086E8C(void *);                            /* extern */
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_810857C(void *arg0, u16 arg1, s32 arg2) {
    s16 *var_r2_87;
    s32 temp_r0_39;
    s32 var_r0_91;
    s32 var_r1_52;
    s32 var_r1_90;
    u16 temp_r7_10;

    temp_r7_10 = arg1;
    if ((u32) temp_r7_10 <= 0xFFU) {
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            if (arg2 < sub_81DD77C(0x64, sub_8199F30())) {
                goto block_3;
            }
            goto block_12;
        }
        temp_r0_39 = 0x64 - M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */);
        if (temp_r0_39 != 0x64) {
            if (temp_r0_39 != 0) {
                var_r1_52 = 1;
                if ((s32) (arg2 - (temp_r0_39 / 3)) < sub_81DD77C(0x64, sub_8199F30())) {
                    var_r1_52 = 0;
                }
                if (var_r1_52 != 0) {
                    goto block_9;
                }
                goto block_3;
            }
block_9:
            if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
                (*(s32 *)((s8 *)(arg0) + (0x118))) = sub_8086E8C(arg0 + 8);
                (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
            }
            (*(s8 *)((s8 *)(arg0) + (0x129))) = 0xFF;
block_12:
            var_r2_87 = arg0 + 0x11E;
            var_r1_90 = 0xFFF3 & (*(u16 *)((s8 *)(arg0) + (0x11E)));
            var_r0_91 = 8;
            goto block_18;
        }
block_3:
        return 0;
    }
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) >= 0) {
        if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
            (*(s32 *)((s8 *)(arg0) + (0x118))) = sub_8086E8C(arg0 + 8);
            (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
        }
        (*(s8 *)((s8 *)(arg0) + (0x129))) = 0xFF;
    }
    var_r2_87 = arg0 + 0x11E;
    var_r1_90 = 0xFFF3 & (*(u16 *)((s8 *)(arg0) + (0x11E)));
    var_r0_91 = 4;
block_18:
    *var_r2_87 = var_r1_90 | var_r0_91;
    (*(u16 *)((s8 *)(arg0) + (0x10A))) = temp_r7_10;
    (*(u8 *)((s8 *)(arg0) + (0x120))) = (u8) ((-0x39 & (*(u8 *)((s8 *)(arg0) + (0x120)))) | 0x28);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81086B4.s\"");
#else
s32 sub_8086E8C(void *);                            /* extern */
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_81086B4(void *arg0, u16 arg1, s32 arg2) {
    s16 *var_r2_87;
    s32 temp_r0_39;
    s32 var_r0_91;
    s32 var_r1_52;
    s32 var_r1_90;
    u16 temp_r7_10;

    temp_r7_10 = arg1;
    if ((u32) temp_r7_10 <= 0xFFU) {
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            if (arg2 < sub_81DD77C(0x64, sub_8199F30())) {
                goto block_3;
            }
            goto block_12;
        }
        temp_r0_39 = 0x64 - M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */);
        if (temp_r0_39 != 0x64) {
            if (temp_r0_39 != 0) {
                var_r1_52 = 1;
                if ((s32) (arg2 - (temp_r0_39 / 3)) < sub_81DD77C(0x64, sub_8199F30())) {
                    var_r1_52 = 0;
                }
                if (var_r1_52 != 0) {
                    goto block_9;
                }
                goto block_3;
            }
block_9:
            if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
                (*(s32 *)((s8 *)(arg0) + (0x118))) = sub_8086E8C(arg0 + 8);
                (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
            }
            (*(s8 *)((s8 *)(arg0) + (0x129))) = 0xFF;
block_12:
            var_r2_87 = arg0 + 0x11E;
            var_r1_90 = 0xFFCF & (*(u16 *)((s8 *)(arg0) + (0x11E)));
            var_r0_91 = 0x20;
            goto block_18;
        }
block_3:
        return 0;
    }
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) >= 0) {
        if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
            (*(s32 *)((s8 *)(arg0) + (0x118))) = sub_8086E8C(arg0 + 8);
            (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
        }
        (*(s8 *)((s8 *)(arg0) + (0x129))) = 0xFF;
    }
    var_r2_87 = arg0 + 0x11E;
    var_r1_90 = 0xFFCF & (*(u16 *)((s8 *)(arg0) + (0x11E)));
    var_r0_91 = 0x10;
block_18:
    *var_r2_87 = var_r1_90 | var_r0_91;
    (*(u16 *)((s8 *)(arg0) + (0x10C))) = temp_r7_10;
    (*(u16 *)((s8 *)(arg0) + (0x120))) = (u16) ((0xFFFFFE3F & (*(u16 *)((s8 *)(arg0) + (0x120)))) | 0x140);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81087F0.s\"");
#else
s32 sub_8086E8C(void *);                            /* extern */
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_81087F0(void *arg0, u16 arg1, s32 arg2) {
    s16 *var_r2_87;
    s32 temp_r0_39;
    s32 var_r0_91;
    s32 var_r1_52;
    s32 var_r1_90;
    u16 temp_r7_10;

    temp_r7_10 = arg1;
    if ((u32) temp_r7_10 <= 0xFFU) {
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            if (arg2 < sub_81DD77C(0x64, sub_8199F30())) {
                goto block_3;
            }
            goto block_12;
        }
        temp_r0_39 = 0x64 - M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */);
        if (temp_r0_39 != 0x64) {
            if (temp_r0_39 != 0) {
                var_r1_52 = 1;
                if ((s32) (arg2 - (temp_r0_39 / 3)) < sub_81DD77C(0x64, sub_8199F30())) {
                    var_r1_52 = 0;
                }
                if (var_r1_52 != 0) {
                    goto block_9;
                }
                goto block_3;
            }
block_9:
            if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
                (*(s32 *)((s8 *)(arg0) + (0x118))) = sub_8086E8C(arg0 + 8);
                (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
            }
            (*(s8 *)((s8 *)(arg0) + (0x129))) = 0xFF;
block_12:
            var_r2_87 = arg0 + 0x11E;
            var_r1_90 = 0xFF3F & (*(u16 *)((s8 *)(arg0) + (0x11E)));
            var_r0_91 = 0x80;
            goto block_18;
        }
block_3:
        return 0;
    }
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) >= 0) {
        if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
            (*(s32 *)((s8 *)(arg0) + (0x118))) = sub_8086E8C(arg0 + 8);
            (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
        }
        (*(s8 *)((s8 *)(arg0) + (0x129))) = 0xFF;
    }
    var_r2_87 = arg0 + 0x11E;
    var_r1_90 = 0xFF3F & (*(u16 *)((s8 *)(arg0) + (0x11E)));
    var_r0_91 = 0x40;
block_18:
    *var_r2_87 = var_r1_90 | var_r0_91;
    (*(u16 *)((s8 *)(arg0) + (0x11C))) = temp_r7_10;
    (*(u8 *)((s8 *)(arg0) + (0x121))) = (u8) ((-0xF & (*(u8 *)((s8 *)(arg0) + (0x121)))) | 0xA);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108928.s\"");
#else
void *sub_807FFB8(s32 *);                       /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8108A9C;

void sub_8108928(void *arg0) {
    u16 temp_r1_11;

    temp_r1_11 = (*(u16 *)((s8 *)(arg0) + (0x11E)));
    if (0x100 & temp_r1_11) {
        (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0xFEFF & temp_r1_11);
        (*(u8 *)((s8 *)(arg0) + (0x121))) = (u8) (-0x71 & (*(u8 *)((s8 *)(arg0) + (0x121))));
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            if (!(0x20 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
                (*(void **)((s8 *)(sub_807FFB8(&sub_8108A9C)) + (8))) = arg0;
                (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x20);
            }
        } else {
            sub_8082E1C(arg0 + 8, -1, -1, 0);
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81089A4.s\"");
#else
void sub_81089A4(void *arg0) {
    u16 temp_r1_34;
    u16 var_r2_37;
    u8 temp_r0_33;

    if ((*(s32 *)((s8 *)(arg0) + (0x120))) & 0x38000) {
        (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0xF3FF & (*(u16 *)((s8 *)(arg0) + (0x11E))));
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            temp_r0_33 = (*(u8 *)((s8 *)(arg0) + (0x12C)));
            temp_r1_34 = (*(u16 *)((s8 *)(arg0) + (0x11E)));
            if (temp_r0_33 != 0x13) {
                var_r2_37 = temp_r1_34;
                if (temp_r0_33 == 0x14) {
                    var_r2_37 |= 0x400;
                }
            } else {
                var_r2_37 = 0x800 | temp_r1_34;
            }
            (*(u16 *)((s8 *)(arg0) + (0x11E))) = var_r2_37;
            (*(s8 *)((s8 *)(arg0) + (0x128))) = 0xFF;
            (*(s16 *)((s8 *)(arg0) + (0x126))) = 1;
            (*(s8 *)((s8 *)(arg0) + (0x12A))) = 1;
            (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
        }
        (*(s32 *)((s8 *)(arg0) + (0x120))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x120))) & 0xFFFC7FFF);
    }
}
#endif

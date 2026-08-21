#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802DA10 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802DA10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802DC0C.s\"");
#else
s32 sub_804B25C(s32, s32);                          /* extern */
s32 sub_804D18C(s32);                               /* extern */

s32 sub_802DC0C(void *arg0, s32 arg1) {
    s32 *var_r4_123;
    s32 *var_r4_26;
    s32 temp_r1_135;
    s32 temp_r1_34;
    s32 var_r5_130;
    u8 temp_r0_21;
    u8 var_r0_106;
    u8 var_r1_113;
    u8 var_r5_29;
    void *temp_r4_76;
    void *temp_r4_83;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    if ((sub_804D18C(arg1) << 0x18) == 0) {
        goto block_2;
    }
block_1:
    return 1;
block_2:
    temp_r0_21 = (*(u8 *)((s8 *)(arg0) + (0x110)));
    if (temp_r0_21 == 0) {
        goto block_19;
    }
    var_r4_26 = arg0 + ((temp_r0_21 * 4) + 0x28);
    var_r5_29 = (*(u8 *)((s8 *)(arg0) + (0x111)));
    if (var_r5_29 == 0) {
        goto block_19;
    }
    temp_r1_34 = (0 - var_r5_29) & 3;
    if (temp_r1_34 == 0) {
        goto block_13;
    }
    if (temp_r1_34 >= 3) {
        goto block_11;
    }
    if (temp_r1_34 >= 2) {
        goto block_9;
    }
    if ((sub_804B25C(arg1, *var_r4_26) << 0x18) != 0) {
        goto block_1;
    }
    var_r5_29 -= 1;
    var_r4_26 += 4;
block_9:
    if ((sub_804B25C(arg1, *var_r4_26) << 0x18) != 0) {
        goto block_1;
    }
    var_r5_29 -= 1;
    var_r4_26 += 4;
block_11:
    if ((sub_804B25C(arg1, *var_r4_26) << 0x18) != 0) {
        goto block_1;
    }
    var_r5_29 -= 1;
    goto block_18;
block_13:
    if ((sub_804B25C(arg1, (*(s32 *)((s8 *)(var_r4_26) + (0)))) << 0x18) != 0) {
        goto block_1;
    }
    temp_r4_76 = var_r4_26 + 4;
    if ((sub_804B25C(arg1, (*(s32 *)((s8 *)(var_r4_26) + (4)))) << 0x18) != 0) {
        goto block_1;
    }
    temp_r4_83 = temp_r4_76 + 4;
    if ((sub_804B25C(arg1, (*(s32 *)((s8 *)(temp_r4_76) + (4)))) << 0x18) != 0) {
        goto block_1;
    }
    var_r4_26 = temp_r4_83 + 4;
    if ((sub_804B25C(arg1, (*(s32 *)((s8 *)(temp_r4_83) + (4)))) << 0x18) != 0) {
        goto block_1;
    }
    var_r5_29 -= 4;
block_18:
    var_r4_26 += 4;
    if (var_r5_29 != 0) {
        goto block_13;
    }
block_19:
    var_r0_106 = (*(u8 *)((s8 *)(arg0) + (0x114)));
    if (var_r0_106 != 0) {
        goto block_21;
    }
    var_r0_106 = (*(u8 *)((s8 *)(arg0) + (0x116)));
    var_r1_113 = 0;
    if (var_r0_106 == 0) {
        goto block_22;
    }
block_21:
    var_r1_113 = var_r0_106;
block_22:
    if ((s32) var_r1_113 <= 0) {
        goto block_45;
    }
    var_r4_123 = arg0 + ((var_r1_113 * 4) + 0x28);
    var_r5_130 = (*(u8 *)((s8 *)(arg0) + (0x115))) + (*(u8 *)((s8 *)(arg0) + (0x117)));
    if (var_r5_130 == 0) {
        goto block_45;
    }
    temp_r1_135 = (0 - var_r5_130) & 3;
    if (temp_r1_135 == 0) {
        goto loop_36;
    }
    if (temp_r1_135 >= 3) {
        goto block_33;
    }
    if (temp_r1_135 >= 2) {
        goto block_30;
    }
    if ((sub_804B25C(arg1, *var_r4_123) << 0x18) == 0) {
        goto block_29;
    }
    goto block_1;
block_29:
    var_r5_130 -= 1;
    var_r4_123 += 4;
block_30:
    if ((sub_804B25C(arg1, *var_r4_123) << 0x18) == 0) {
        goto block_32;
    }
    goto block_1;
block_32:
    var_r5_130 -= 1;
    var_r4_123 += 4;
block_33:
    if ((sub_804B25C(arg1, *var_r4_123) << 0x18) == 0) {
        goto block_35;
    }
    goto block_1;
block_35:
    var_r5_130 -= 1;
    var_r4_123 += 4;
    if (var_r5_130 == 0) {
        goto block_45;
    }
loop_36:
    if ((sub_804B25C(arg1, (*(s32 *)((s8 *)(var_r4_123) + (0)))) << 0x18) == 0) {
        goto block_38;
    }
    goto block_1;
block_38:
    if ((sub_804B25C(arg1, (*(s32 *)((s8 *)(var_r4_123) + (4)))) << 0x18) == 0) {
        goto block_40;
    }
    goto block_1;
block_40:
    if ((sub_804B25C(arg1, (*(s32 *)((s8 *)(var_r4_123) + (8)))) << 0x18) == 0) {
        goto block_42;
    }
    goto block_1;
block_42:
    if ((sub_804B25C(arg1, (*(s32 *)((s8 *)(var_r4_123) + (0xC)))) << 0x18) == 0) {
        goto block_44;
    }
    goto block_1;
block_44:
    var_r5_130 -= 4;
    var_r4_123 += 0x10;
    if (var_r5_130 != 0) {
        goto loop_36;
    }
block_45:
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802DDB4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802DF80.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E2F4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E4C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E688.s\"");
#else
u8 *get_coldef_ptr_by_xz(s32, s32, s32);            /* extern */

s32 sub_802E688(void *arg0, s32 arg1) {
    s32 temp_r2_105;
    s32 var_r0_72;
    s32 var_r1_23;
    s32 var_r2_24;
    u32 temp_r3_15;
    u8 *temp_r0_88;
    void *temp_r0_12;

    temp_r0_12 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r3_15 = (u8) (*(u8 *)((s8 *)(temp_r0_12) + (2))) >> 5;
    if ((temp_r3_15 ^ 1) & 1) {
        var_r1_23 = (*(s32 *)((s8 *)(temp_r0_12) + (0x34)));
        var_r2_24 = (*(s32 *)((s8 *)(temp_r0_12) + (0x38)));
        switch (temp_r3_15) {                       /* irregular */
        case 0:
            var_r2_24 += 0x100;
            break;
        case 2:
            var_r1_23 -= (u16) (*(u16 *)((s8 *)(temp_r0_12) + (0x278))) >> 1;
            break;
        case 4:
            var_r2_24 -= (*(u16 *)((s8 *)(temp_r0_12) + (0x27C)));
            break;
        case 6:
            var_r1_23 = var_r1_23 + 0xFFFFFF00 + ((u16) (*(u16 *)((s8 *)(temp_r0_12) + (0x278))) >> 1);
            break;
        }
        var_r0_72 = var_r1_23;
        if (var_r0_72 < 0) {
            var_r0_72 += 0xFFF;
        }
        if (var_r2_24 < 0) {
            var_r2_24 += 0xFFF;
        }
        temp_r0_88 = get_coldef_ptr_by_xz((*(s32 *)((s8 *)(arg0) + (0x304))), (s32) (var_r0_72 * 0x10) >> 0x10, (s32) (var_r2_24 * 0x10) >> 0x10);
        if (arg1 == 0) {
            if ((0x78 & *temp_r0_88) == 0x18) {
                goto block_18;
            }
            goto block_21;
        }
        temp_r2_105 = 0x78 & *temp_r0_88;
        if ((temp_r2_105 != 0x28) && (temp_r2_105 != 0x38)) {
            goto block_21;
        }
block_18:
        return 1;
    }
block_21:
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E754.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E854.s\"");
#else
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_8045A94(void *, s32, s32, s32, s32, s32, s32); /* extern */
s32 sub_8047F60(void *, s32, s32, s32, s32, s32); /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_802E854(void *arg0, s32 arg1) {
    s32 temp_r5_180;
    s32 temp_r6_181;
    s32 temp_r8_183;
    s32 var_r0_129;
    s32 var_r0_84;
    s32 var_r3_123;
    s32 var_r3_78;
    u16 temp_r2_233;
    u8 temp_r1_204;
    u8 temp_r2_210;
    void *temp_r0_122;
    void *temp_r0_179;
    void *temp_r0_70;
    void *temp_r0_77;
    void *temp_r1_108;
    void *temp_r1_115;
    void *temp_r1_151;
    void *temp_r1_157;
    void *temp_r1_27;
    void *temp_r1_39;
    void *temp_r1_45;
    void *temp_r2_44;
    void *temp_r2_58;
    void *temp_r3_184;

    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    temp_r1_27 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_27) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_27) + (0x351))) | 0x40);
    temp_r1_39 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_39) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_39) + (0x351))) | 0x40);
    temp_r2_44 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r1_45 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_45) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(temp_r1_45) + (0x20D))) | 0x40);
    (*(u8 *)((s8 *)(temp_r2_44) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(temp_r2_44) + (0x20D))) | 0x40);
    if (arg1 == 0) {
        temp_r2_58 = (*(void **)((s8 *)(arg0) + (0x200)));
        (*(u8 *)((s8 *)(temp_r2_58) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r2_58) + (0x214)))) | 2);
        temp_r0_70 = (*(void **)((s8 *)(arg0) + (0x204)));
        (*(u8 *)((s8 *)(temp_r0_70) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r0_70) + (0x214)))) | 2);
        temp_r0_77 = (*(void **)((s8 *)(arg0) + (0x204)));
        var_r3_78 = (*(s32 *)((s8 *)(temp_r0_77) + (0xC)));
        if (var_r3_78 < 0) {
            var_r3_78 += 0xFF;
        }
        var_r0_84 = (*(s32 *)((s8 *)(temp_r0_77) + (0x10)));
        if (var_r0_84 < 0) {
            var_r0_84 += 0xFF;
        }
        sub_8045A94((*(void **)((s8 *)(arg0) + (0x200))), 1, 0, var_r3_78 >> 8, var_r0_84 >> 8, arg1, (s32) (u16) (0x200 >> ((u32) ((*(u8 *)((s8 *)(arg0) + (0xFB))) << 0x1D) >> 0x1F)));
        temp_r1_108 = (*(void **)((s8 *)(arg0) + (0x200)));
        (*(u8 *)((s8 *)(temp_r1_108) + (0x2B6))) = (u8) ((*(u8 *)((s8 *)(temp_r1_108) + (0x2B6))) | 0x40);
        temp_r1_115 = (*(void **)((s8 *)(arg0) + (0x200)));
        (*(u8 *)((s8 *)(temp_r1_115) + (0x2B6))) = (u8) ((*(u8 *)((s8 *)(temp_r1_115) + (0x2B6))) | 0x80);
        temp_r0_122 = (*(void **)((s8 *)(arg0) + (0x200)));
        var_r3_123 = (*(s32 *)((s8 *)(temp_r0_122) + (0xC)));
        if (var_r3_123 < 0) {
            var_r3_123 += 0xFF;
        }
        var_r0_129 = (*(s32 *)((s8 *)(temp_r0_122) + (0x10)));
        if (var_r0_129 < 0) {
            var_r0_129 += 0xFF;
        }
        sub_8045A94((*(void **)((s8 *)(arg0) + (0x204))), 1, 0, var_r3_123 >> 8, var_r0_129 >> 8, arg1, (s32) (u16) (0x200 >> ((u32) ((*(u8 *)((s8 *)(arg0) + (0xFB))) << 0x1D) >> 0x1F)));
        temp_r1_151 = (*(void **)((s8 *)(arg0) + (0x204)));
        (*(u8 *)((s8 *)(temp_r1_151) + (0x2B6))) = (u8) ((*(u8 *)((s8 *)(temp_r1_151) + (0x2B6))) | 0x40);
        temp_r1_157 = (*(void **)((s8 *)(arg0) + (0x204)));
        (*(u8 *)((s8 *)(temp_r1_157) + (0x2B6))) = (u8) ((*(u8 *)((s8 *)(temp_r1_157) + (0x2B6))) | 0x80);
        (*(u8 *)((s8 *)(arg0) + (0x209))) = (u8) ((-0x1F & (*(u8 *)((s8 *)(arg0) + (0x209)))) | 2);
    } else {
        temp_r0_179 = (*(void **)((s8 *)(arg0) + (0x200)));
        temp_r5_180 = (*(s32 *)((s8 *)(temp_r0_179) + (0xC)));
        temp_r6_181 = (*(s32 *)((s8 *)(temp_r0_179) + (0x10)));
        temp_r8_183 = (*(s32 *)((s8 *)(temp_r0_179) + (0x14)));
        temp_r3_184 = (*(void **)((s8 *)(arg0) + (0x204)));
        sub_8047F60(temp_r0_179, (*(s32 *)((s8 *)(temp_r3_184) + (0xC))), (*(s32 *)((s8 *)(temp_r3_184) + (0x10))), (*(s32 *)((s8 *)(temp_r3_184) + (0x14))), 1, 0);
        sub_8047F60((*(void **)((s8 *)(arg0) + (0x204))), temp_r5_180, temp_r6_181, temp_r8_183, 1, 0);
    }
    temp_r1_204 = (*(u8 *)((s8 *)(arg0) + (0xF8)));
    temp_r2_210 = (0x7F & temp_r1_204) | (((u32) (temp_r1_204 << 0x19) >> 0x1F) << 7);
    (*(u8 *)((s8 *)(arg0) + (0xF8))) = temp_r2_210;
    if ((0x40 & temp_r2_210) && (((u32) ((*(u16 *)((s8 *)(arg0) + (0xFA))) << 0x16) >> 0x1B) == ((u32) ((*(u8 *)((s8 *)(arg0) + (0x208))) << 0x1D) >> 0x1F))) {
        (*(u8 *)((s8 *)(arg0) + (0xF8))) = (u8) (temp_r2_210 & ~0x40);
        temp_r2_233 = (*(u16 *)((s8 *)(arg0) + (0xFA)));
        (*(u16 *)((s8 *)(arg0) + (0xFA))) = (u16) ((0xFFFFFC1F & temp_r2_233) | ((((u32) (temp_r2_233 << 0x16) >> 0x1B) ^ 1) << 5));
    }
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) ((-0x11 & (*(u8 *)((s8 *)(arg0) + (0x208)))) | 0x40);
    (*(u8 *)((s8 *)(arg0) + (0x209))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x209))) | 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802EA70.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802EC64.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802EDC4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802EF18.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802F498.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802F6EC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

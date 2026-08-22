#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E57FC needs.

asm_unified(".include \"asm/macros.inc\"");

s32 free_heap_memory_8018C68(s32);              /* extern */

void sub_80E57FC(void) {
    free_heap_memory_8018C68(*(s32 *)0x03000FB4);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5810.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E588C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5968.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5AA0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5BCC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5FB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E635C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E6E68.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E6FB8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E7118.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E71D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E7438.s\"");
#else
void sub_80E7438(void *arg0, s32 arg3) {
    s16 *var_r1_222;
    s16 temp_r2_87;
    s16 temp_r3_78;
    s16 var_r0_227;
    s32 temp_r0_282;
    s32 temp_r0_300;
    s32 var_r0_277;
    s32 var_r0_295;
    s32 var_r0_47;
    s32 var_r2_62;
    void *temp_r0_34;
    void *temp_r0_81;
    void *temp_r0_90;
    void *temp_r0_96;
    void *temp_r1_103;
    void *temp_r1_181;
    void *temp_r2_10;
    void *temp_r3_309;
    void *temp_r3_44;

    temp_r2_10 = (*(void **)((s8 *)(arg0) + (4)));
    if (!(4 & (*(u8 *)((s8 *)(temp_r2_10) + (0x1B8))))) {
        return;
    }
    (*(u16 *)((s8 *)(temp_r2_10) + (0x1A4))) = (u16) ((*(u16 *)((s8 *)(temp_r2_10) + (0x1A0))) + (*(u16 *)((s8 *)(temp_r2_10) + (0x1A4))));
    temp_r0_34 = (*(void **)((s8 *)(arg0) + (4)));
    (*(u16 *)((s8 *)(temp_r0_34) + (0x1A6))) = (u16) ((*(u16 *)((s8 *)(temp_r0_34) + (0x1A2))) + (*(u16 *)((s8 *)(temp_r0_34) + (0x1A6))));
    temp_r3_44 = (*(void **)((s8 *)(arg0) + (4)));
    var_r0_47 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_47 < 0) {
        var_r0_47 += 0xF;
    }
    var_r2_62 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
    if (var_r2_62 < 0) {
        var_r2_62 += 0xF;
    }
    temp_r3_78 = (s16) (u16) ((var_r0_47 >> 4) - (*(u16 *)((s8 *)(temp_r3_44) + (0x198))));
    (*(u16 *)((s8 *)(temp_r3_44) + (0x1A8))) = (u16) (temp_r3_78 + (*(u16 *)((s8 *)(temp_r3_44) + (0x1A8))));
    temp_r0_81 = (*(void **)((s8 *)(arg0) + (4)));
    temp_r2_87 = (var_r2_62 >> 4) - (*(u16 *)((s8 *)(temp_r3_44) + (0x19A)));
    (*(u16 *)((s8 *)(temp_r0_81) + (0x1AA))) = (u16) (temp_r2_87 + (*(u16 *)((s8 *)(temp_r0_81) + (0x1AA))));
    temp_r0_90 = (*(void **)((s8 *)(arg0) + (4)));
    (*(u16 *)((s8 *)(temp_r0_90) + (0x1AC))) = (u16) (temp_r3_78 + (*(u16 *)((s8 *)(temp_r0_90) + (0x1AC))));
    temp_r0_96 = (*(void **)((s8 *)(arg0) + (4)));
    (*(u16 *)((s8 *)(temp_r0_96) + (0x1AE))) = (u16) (temp_r2_87 + (*(u16 *)((s8 *)(temp_r0_96) + (0x1AE))));
    temp_r1_103 = (*(void **)((s8 *)(arg0) + (4)));
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) >= 0) {
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) >= (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
            (*(u16 *)((s8 *)(temp_r1_103) + (0x1A4))) = (u16) (*(u16 *)((s8 *)(temp_r1_103) + (0x19C)));
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x1A0))) = 0U;
        }
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0xF0) {
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x1A8))) = 0xF0U;
        }
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0xF0) {
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x1AC))) = 0xF0U;
        }
    } else {
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) <= (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
            (*(u16 *)((s8 *)(temp_r1_103) + (0x1A4))) = (u16) (*(u16 *)((s8 *)(temp_r1_103) + (0x19C)));
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x1A0))) = 0U;
        }
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x1A8))) = 0U;
        }
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x1AC))) = 0U;
        }
    }
    temp_r1_181 = (*(void **)((s8 *)(arg0) + (4)));
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) >= 0) {
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) >= (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
            (*(u16 *)((s8 *)(temp_r1_181) + (0x1A6))) = (u16) (*(u16 *)((s8 *)(temp_r1_181) + (0x19E)));
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x1A2))) = 0U;
        }
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0xA0) {
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x1AA))) = 0xA0U;
        }
        var_r1_222 = (*(void **)((s8 *)(arg0) + (4))) + 0x1AE;
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0xA0) {
            var_r0_227 = 0xA0;
            goto block_32;
        }
    } else {
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) <= (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
            (*(u16 *)((s8 *)(temp_r1_181) + (0x1A6))) = (u16) (*(u16 *)((s8 *)(temp_r1_181) + (0x19E)));
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x1A2))) = 0U;
        }
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x1AA))) = 0U;
        }
        var_r1_222 = (*(void **)((s8 *)(arg0) + (4))) + 0x1AE;
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
            var_r0_227 = 0;
block_32:
            *var_r1_222 = var_r0_227;
        }
    }
    var_r0_277 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_277 < 0) {
        var_r0_277 += 0xF;
    }
    temp_r0_282 = var_r0_277 >> 4;
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x198))) = (u16) temp_r0_282;
    *(s16 *)0x02000010 = 0 - temp_r0_282;
    var_r0_295 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_295 < 0) {
        var_r0_295 += 0xF;
    }
    temp_r0_300 = var_r0_295 >> 4;
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x19A))) = (u16) temp_r0_300;
    *(s16 *)0x02000012 = 0 - temp_r0_300;
    temp_r3_309 = (*(void **)((s8 *)(arg0) + (4)));
    (*(s16 *)((s8 *)((void *)0x02000040) + (0))) = (s16) (((*(u16 *)((s8 *)(temp_r3_309) + (0x1A8))) << 8) | (*(u16 *)((s8 *)(temp_r3_309) + (0x1AC))));
    (*(s16 *)((s8 *)((void *)0x02000040) + (4))) = (s16) (((*(u16 *)((s8 *)(temp_r3_309) + (0x1AA))) << 8) | (*(u16 *)((s8 *)(temp_r3_309) + (0x1AE))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E76B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E7A84.s\"");
#else
void sub_80E7A84(void *arg0, void *arg1) {
    s16 temp_r1_22;
    s16 temp_r2_42;
    u8 temp_r2_67;
    void *temp_r3_16;
    void *temp_r3_53;
    void *temp_r3_65;

    if (0x38 & (*(u16 *)((s8 *)(arg1) + (0x3C)))) {
        temp_r3_16 = (*(void **)((s8 *)(arg0) + (4)));
        temp_r1_22 = (*(u16 *)((s8 *)(arg1) + (0x34))) + (*(s32 *)((s8 *)(arg1) + (0x44))) + (*(u16 *)((s8 *)(temp_r3_16) + (0x198)));
        if ((u32) ((temp_r1_22 << 0x10) + 0xC0000) <= 0x01080000U) {
            temp_r2_42 = (s16) (u16) ((*(u16 *)((s8 *)(arg1) + (0x36))) + (*(s32 *)((s8 *)(arg1) + (0x48))) + (*(u16 *)((s8 *)(temp_r3_16) + (0x19A))));
            if (((s32) temp_r2_42 >= -0xC) && ((s32) temp_r2_42 <= 0xAC)) {
                temp_r3_53 = *(void **)0x03000BCC;
                (*(s16 *)((s8 *)(temp_r3_53) + (0))) = (s16) ((((u32) ((*(u8 *)((s8 *)(arg1) + (0x43))) << 0x1D) >> 0x1F) << 0xF) | (0xFF & temp_r2_42));
                temp_r3_65 = temp_r3_53 + 2;
                temp_r2_67 = (*(u8 *)((s8 *)(arg1) + (0x43)));
                (*(s16 *)((s8 *)(temp_r3_53) + (2))) = (s16) ((((u32) (temp_r2_67 << 0x1E) >> 0x1F) << 0xE) | (temp_r1_22 & 0x1FF) | (((u8) (*(u8 *)((s8 *)(arg1) + (0x42))) >> 7) << 0xD) | (((u32) (temp_r2_67 << 0x1F) >> 0x1F) << 0xC));
                (*(s16 *)((s8 *)(temp_r3_65) + (2))) = (s16) (((u8) (*(u8 *)((s8 *)(arg1) + (0x43))) >> 3) | 0xF000);
                *(void **)0x03000BCC = temp_r3_65 + 2 + 4;
            }
        }
    }
}
#endif

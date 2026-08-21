#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8017E34 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8017E34.s\"");
#else
s32 reset_game_80189C4();                       /* extern */
s32 sub_8018818();                              /* extern */
s32 sub_8018920(u16, s32);                      /* extern */
s32 sub_8018A68();                              /* extern */
s32 sub_8018FC4();                              /* extern */
s32 sub_8019F24();                              /* extern */
s32 sub_801AC7C();                              /* extern */
s32 sub_81DA6A0(s32, s32);                      /* extern */
s32 sub_81DA6C0();                              /* extern */

void sub_8017E34(void) {
    s32 temp_r1_19;
    s32 temp_r2_145;
    s32 var_r5_210;
    s8 temp_r0_192;
    u16 temp_r1_57;
    u32 temp_r1_127;
    u32 temp_r2_198;
    u8 temp_r2_177;
    u8 temp_r3_142;
    u8 temp_r3_31;
    u8 var_r0_47;
    void *temp_r1_202;
    void *temp_r1_221;
    void *temp_r1_227;
    void *temp_r1_233;
    void *temp_r1_239;
    void *temp_r1_245;
    void *temp_r1_251;
    void *temp_r1_257;
    void *temp_r3_201;
    void *var_r12_204;
    void *var_r2_209;

    sub_801AC7C();
    sub_8018FC4();
    if (8 & *(u8 *)0x03000BD6) {
        temp_r1_19 = 0xF & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x28)));
        if ((temp_r1_19 == 0xF) && (temp_r1_19 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A))))) {
            reset_game_80189C4();
        }
    }
    temp_r3_31 = *(u32 *)0x03000BD6;
    if ((0x30 & temp_r3_31) == 0x30) {
        if (0x80 & temp_r3_31) {
            if (!(0x304 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x28))))) {
                var_r0_47 = 0x7F & temp_r3_31;
                goto block_15;
            }
        } else if (0x40 & temp_r3_31) {
            temp_r1_57 = (*(u16 *)((s8 *)((void *)0x0300034C) + (0x28)));
            if (0xFFFFFCFB & temp_r1_57) {
                var_r0_47 = -0x41 & temp_r3_31;
                goto block_15;
            }
            if (!(temp_r1_57 & 0x304)) {
                *(u32 *)0x03000BD6 = (u8) (-0x41 & temp_r3_31);
                sub_8018A68();
                var_r0_47 = *(u32 *)0x03000BD6 | 0x80;
                goto block_15;
            }
        } else if ((0x304 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x28)))) == 0x304) {
            var_r0_47 = 0x40 | temp_r3_31;
block_15:
            *(u8 *)0x03000BD6 = var_r0_47;
        }
    }
    if (!(0x80 & *(u8 *)0x03000BD4)) {
        if (*(u8 *)0x03000C28 == 0) {
            sub_81DA6C0();
        }
    } else {
        sub_81DA6A0(1, 0x80);
    }
    *(s8 *)0x03000C0D = 0;
    sub_8019F24();
    (*(s32 *)((s8 *)((void *)0x0300034C) + (0x1C))) = (s32) ((*(s32 *)((s8 *)((void *)0x0300034C) + (0x1C))) + 1);
    temp_r1_127 = (*(u32 *)((s8 *)((void *)0x0300034C) + (0x24)));
    if (temp_r1_127 <= -2U) {
        (*(u32 *)((s8 *)((void *)0x0300034C) + (0x24))) = (u32) (temp_r1_127 + ((u32) ((*(u8 *)((s8 *)((void *)0x0300034C) + (0x889))) << 0x1F) >> 0x1F));
    }
    temp_r3_142 = (*(u8 *)((s8 *)((void *)0x0300034C) + (0x889)));
    temp_r2_145 = ((u32) (temp_r3_142 << 0x1B) >> 0x1C) + 1;
    (*(u8 *)((s8 *)((void *)0x0300034C) + (0x889))) = (u8) ((-0x1F & temp_r3_142) | ((temp_r2_145 & 0xF) * 2));
    if ((u32) (temp_r2_145 & 0xF) >= (u32) ((u32) ((*(s32 *)((s8 *)((void *)0x0300034C) + (0x888))) << 0xF) >> 0x1C)) {
        sub_8018920((u16) ~*(u16 *)0x04000130, 0);
        (*(u8 *)((s8 *)((void *)0x0300034C) + (0x889))) = (u8) (-0x1F & (*(u8 *)((s8 *)((void *)0x0300034C) + (0x889))));
    }
    temp_r2_177 = (u8) (*(s32 *)((s8 *)((void *)0x0300034C) + (0x888)));
    if (!(0x10 & temp_r2_177)) {
        temp_r0_192 = (-9 & temp_r2_177) | ((((u32) (temp_r2_177 << 0x1C) >> 0x1F) ^ ((u32) (temp_r2_177 << 0x1A) >> 0x1F)) * 8);
        (*(s32 *)((s8 *)((void *)0x0300034C) + (0x888))) = temp_r0_192;
        temp_r2_198 = (u32) (temp_r0_192 << 0x1C) >> 0x1F;
        temp_r3_201 = (void *)0x0300034C + 0x80;
        temp_r1_202 = (temp_r2_198 << 0xA) + temp_r3_201;
        (*(void **)((s8 *)((void *)0x0300034C) + (0x880))) = temp_r1_202;
        var_r12_204 = temp_r1_202;
        var_r2_209 = ((temp_r2_198 ^ ((u32) (temp_r0_192 << 0x1A) >> 0x1F)) << 0xA) + temp_r3_201;
        var_r5_210 = 0x80;
        do {
            (*(s32 *)((s8 *)(var_r12_204) + (0))) = 0x200;
            (*(s16 *)((s8 *)(var_r12_204) + (4))) = 0;
            (*(u16 *)((s8 *)(var_r12_204) + (6))) = (u16) (*(u16 *)((s8 *)(var_r2_209) + (6)));
            temp_r1_221 = var_r12_204 + 8;
            (*(s32 *)((s8 *)(var_r12_204) + (8))) = 0x200;
            (*(s16 *)((s8 *)(temp_r1_221) + (4))) = 0;
            (*(u16 *)((s8 *)(temp_r1_221) + (6))) = (u16) (*(u16 *)((s8 *)(var_r2_209) + (0xE)));
            temp_r1_227 = temp_r1_221 + 8;
            (*(s32 *)((s8 *)(var_r12_204) + (0x10))) = 0x200;
            (*(s16 *)((s8 *)(temp_r1_227) + (4))) = 0;
            (*(u16 *)((s8 *)(temp_r1_227) + (6))) = (u16) (*(u16 *)((s8 *)(var_r2_209) + (0x16)));
            temp_r1_233 = temp_r1_227 + 8;
            (*(s32 *)((s8 *)(var_r12_204) + (0x18))) = 0x200;
            (*(s16 *)((s8 *)(temp_r1_233) + (4))) = 0;
            (*(u16 *)((s8 *)(temp_r1_233) + (6))) = (u16) (*(u16 *)((s8 *)(var_r2_209) + (0x1E)));
            temp_r1_239 = temp_r1_233 + 8;
            (*(s32 *)((s8 *)(var_r12_204) + (0x20))) = 0x200;
            (*(s16 *)((s8 *)(temp_r1_239) + (4))) = 0;
            (*(u16 *)((s8 *)(temp_r1_239) + (6))) = (u16) (*(u16 *)((s8 *)(var_r2_209) + (0x26)));
            temp_r1_245 = temp_r1_239 + 8;
            (*(s32 *)((s8 *)(var_r12_204) + (0x28))) = 0x200;
            (*(s16 *)((s8 *)(temp_r1_245) + (4))) = 0;
            (*(u16 *)((s8 *)(temp_r1_245) + (6))) = (u16) (*(u16 *)((s8 *)(var_r2_209) + (0x2E)));
            temp_r1_251 = temp_r1_245 + 8;
            (*(s32 *)((s8 *)(var_r12_204) + (0x30))) = 0x200;
            (*(s16 *)((s8 *)(temp_r1_251) + (4))) = 0;
            (*(u16 *)((s8 *)(temp_r1_251) + (6))) = (u16) (*(u16 *)((s8 *)(var_r2_209) + (0x36)));
            temp_r1_257 = temp_r1_251 + 8;
            (*(s32 *)((s8 *)(var_r12_204) + (0x38))) = 0x200;
            (*(s16 *)((s8 *)(temp_r1_257) + (4))) = 0;
            (*(u16 *)((s8 *)(temp_r1_257) + (6))) = (u16) (*(u16 *)((s8 *)(var_r2_209) + (0x3E)));
            var_r5_210 -= 8;
            var_r12_204 += 0x40;
            var_r2_209 += 0x40;
        } while (var_r5_210 != 0);
    }
    if ((*(s32 *)0x03000D0C == 0) && !(0x40 & *(u8 *)0x030003C5)) {
        sub_8018818();
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018080.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018170.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

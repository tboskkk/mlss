#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8049C38 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049C38.s\"");
#else
void sub_8049C38(void *arg0, void **arg1, s32 arg2, s32 arg3) {
    void **sp0;
    s32 sp4;
    u8 *sp8;
    s32 spC;
    s32 temp_r4_112;
    s32 temp_r4_485;
    s32 temp_r4_88;
    s32 temp_r5_106;
    s32 temp_r7_81;
    s32 var_r0_127;
    s32 var_r0_133;
    u16 temp_r1_300;
    u16 temp_r3_477;
    u32 temp_r0_209;
    u32 temp_r0_370;
    u32 temp_r1_178;
    u32 temp_r1_238;
    u32 temp_r1_266;
    u32 temp_r1_332;
    u32 temp_r1_405;
    u32 temp_r1_439;
    u32 temp_r3_91;
    u32 temp_r5_85;
    u8 temp_r1_115;
    u8 temp_r3_172;
    u8 temp_r4_206;
    u8 temp_r4_233;
    u8 temp_r4_261;
    u8 temp_r4_327;
    u8 temp_r4_367;
    u8 temp_r4_400;
    u8 temp_r4_434;
    void *temp_r1_474;
    void *temp_r2_296;
    void *temp_r3_192;
    void *temp_r3_222;
    void *temp_r3_251;
    void *temp_r3_317;
    void *temp_r3_353;
    void *temp_r3_390;
    void *temp_r3_425;
    void *temp_r6_49;
    void *temp_r7_104;

    sp0 = arg1;
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x216)))) {
        return;
    }
    if (((*(s32 *)((s8 *)(arg0) + (0x20C))) & 0x02001000) != 0x02001000) {
        return;
    }
    if (arg2 <= 0) {
        return;
    }
    sp4 = arg2;
    sp8 = arg0 + 0x283;
loop_7:
    temp_r6_49 = *sp0;
    if ((*(u8 *)((s8 *)(arg0) + (0x54))) == (*(u8 *)((s8 *)(temp_r6_49) + (0x54)))) {

    } else if (0x20 & (*(u8 *)((s8 *)(temp_r6_49) + (0x216)))) {

    } else if (((*(s32 *)((s8 *)(temp_r6_49) + (0x20C))) & 0x02001000) != 0x02001000) {

    } else {
        temp_r7_81 = M2C_ERROR(/* unknown instruction: ldsh $r7, ($mem_loc_fictive_) */);
        temp_r5_85 = (u8) (*(u8 *)((s8 *)(arg0) + (0x282))) >> 1;
        temp_r4_88 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
        temp_r3_91 = (u8) (*(u8 *)((s8 *)(temp_r6_49) + (0x282))) >> 1;
        if ((s32) (temp_r7_81 - temp_r5_85) >= (s32) (temp_r4_88 + temp_r3_91)) {

        } else if ((s32) (temp_r7_81 + temp_r5_85) <= (s32) (temp_r4_88 - temp_r3_91)) {

        } else {
            temp_r7_104 = (*(void **)((s8 *)(arg0) + (0x294)));
            temp_r5_106 = M2C_ERROR(/* unknown instruction: ldsh $r5, ($mem_loc_fictive_) */);
            temp_r4_112 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
            temp_r1_115 = (*(u8 *)((s8 *)(temp_r6_49) + (0x283)));
            if (temp_r5_106 >= (s32) (temp_r4_112 + temp_r1_115)) {

            } else if (temp_r5_106 <= (s32) (temp_r4_112 - temp_r1_115)) {

            } else {
                var_r0_127 = (*(s32 *)((s8 *)(arg0) + (0x10)));
                if (var_r0_127 < 0) {
                    var_r0_127 += 0xFF;
                }
                var_r0_133 = (*(s32 *)((s8 *)(temp_r6_49) + (0x10)));
                if (var_r0_133 < 0) {
                    var_r0_133 += 0xFF;
                }
                if ((s32) (var_r0_127 >> 8) < (s32) (var_r0_133 >> 8)) {
                    spC = (*(s32 *)((s8 *)(arg0) + (0x14))) + (*(s32 *)((s8 *)(arg0) + (0x18)));
                    if (spC < (s32) ((*(s32 *)((s8 *)(temp_r6_49) + (0x14))) + (*(s32 *)((s8 *)(temp_r6_49) + (0x18))) + (*(u16 *)((s8 *)(temp_r6_49) + (0x274))))) {
                        goto block_47;
                    }
                }
                if (0x40 & (*(u8 *)((s8 *)(arg0) + (0x352)))) {
block_47:
                    temp_r3_317 = (*(void **)((s8 *)(temp_r6_49) + (0x294)));
                    if ((s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - 0x10) < (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
                        temp_r4_327 = (*(u8 *)((s8 *)(temp_r3_317) + (0x1F)));
                        temp_r1_332 = (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F))) << 0x1C) >> 0x1E;
                        if ((u32) ((u32) (temp_r4_327 << 0x1C) >> 0x1E) > temp_r1_332) {
                            (*(u8 *)((s8 *)(temp_r3_317) + (0x1F))) = (u8) ((-0xD & temp_r4_327) | ((3 & temp_r1_332) * 4));
                            (*(u8 *)((s8 *)(temp_r6_49) + (0x217))) = (u8) ((*(u8 *)((s8 *)(temp_r6_49) + (0x217))) | 1);
                        }
                    }
                    temp_r3_353 = (*(void **)((s8 *)(temp_r6_49) + (0x294)));
                    if ((s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - (*(u8 *)((s8 *)(temp_r6_49) + (0x283)))) < (s32) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) - 0x10)) {
                        temp_r4_367 = (*(u8 *)((s8 *)(temp_r3_353) + (0x1F)));
                        temp_r0_370 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F))) << 0x1E;
                        if ((u32) (temp_r4_367 << 0x1E) > temp_r0_370) {
                            (*(u8 *)((s8 *)(temp_r3_353) + (0x1F))) = (u8) ((-4 & temp_r4_367) | (3 & (temp_r0_370 >> 0x1E)));
                            (*(u8 *)((s8 *)(temp_r6_49) + (0x217))) = (u8) ((*(u8 *)((s8 *)(temp_r6_49) + (0x217))) | 1);
                        }
                    }
                    temp_r3_390 = (*(void **)((s8 *)(temp_r6_49) + (0x294)));
                    if ((s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - 0x10) > (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
                        temp_r4_400 = (*(u8 *)((s8 *)(temp_r3_390) + (0x1F)));
                        temp_r1_405 = (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F))) << 0x1C) >> 0x1E;
                        if ((u32) ((u32) (temp_r4_400 << 0x1E) >> 0x1E) > temp_r1_405) {
                            (*(u8 *)((s8 *)(temp_r3_390) + (0x1F))) = (u8) ((-4 & temp_r4_400) | (3 & temp_r1_405));
                            (*(u8 *)((s8 *)(temp_r6_49) + (0x217))) = (u8) ((*(u8 *)((s8 *)(temp_r6_49) + (0x217))) | 1);
                        }
                    }
                    temp_r3_425 = (*(void **)((s8 *)(temp_r6_49) + (0x294)));
                    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) < (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
                        temp_r4_434 = (*(u8 *)((s8 *)(temp_r3_425) + (0x1F)));
                        temp_r1_439 = (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F))) << 0x1E) >> 0x1E;
                        if ((u32) ((u32) (temp_r4_434 << 0x1C) >> 0x1E) > temp_r1_439) {
                            (*(u8 *)((s8 *)(temp_r3_425) + (0x1F))) = (u8) ((-0xD & temp_r4_434) | ((3 & temp_r1_439) * 4));
                            (*(u8 *)((s8 *)(temp_r6_49) + (0x217))) = (u8) ((*(u8 *)((s8 *)(temp_r6_49) + (0x217))) | 1);
                        }
                    }
                    if (((*(s32 *)((s8 *)(temp_r6_49) + (0x214))) & 0x1E000) == ((*(s32 *)((s8 *)(arg0) + (0x214))) & 0x1E000)) {
                        temp_r1_474 = (*(void **)((s8 *)(temp_r6_49) + (0x294)));
                        temp_r3_477 = (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0xE)));
                        if ((u32) (*(u16 *)((s8 *)(temp_r1_474) + (0xE))) >= (u32) temp_r3_477) {
                            (*(u16 *)((s8 *)(temp_r1_474) + (0xE))) = (u16) (temp_r3_477 - 1);
                        }
                    }
                } else {
                    if ((s32) (temp_r5_106 - 0x10) < temp_r4_112) {
                        temp_r3_172 = (*(u8 *)((s8 *)(temp_r7_104) + (0x1F)));
                        temp_r1_178 = (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r6_49) + (0x294)))) + (0x1F))) << 0x1C) >> 0x1E;
                        if ((u32) ((u32) (temp_r3_172 << 0x1C) >> 0x1E) > temp_r1_178) {
                            (*(u8 *)((s8 *)(temp_r7_104) + (0x1F))) = (u8) ((-0xD & temp_r3_172) | ((3 & temp_r1_178) * 4));
                        }
                    }
                    temp_r3_192 = (*(void **)((s8 *)(arg0) + (0x294)));
                    if ((s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - *sp8) < (s32) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) - 0x10)) {
                        temp_r4_206 = (*(u8 *)((s8 *)(temp_r3_192) + (0x1F)));
                        temp_r0_209 = (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r6_49) + (0x294)))) + (0x1F))) << 0x1E;
                        if ((u32) (temp_r4_206 << 0x1E) > temp_r0_209) {
                            (*(u8 *)((s8 *)(temp_r3_192) + (0x1F))) = (u8) ((-4 & temp_r4_206) | (3 & (temp_r0_209 >> 0x1E)));
                        }
                    }
                    temp_r3_222 = (*(void **)((s8 *)(arg0) + (0x294)));
                    if ((s32) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) - 0x10) > (s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) {
                        temp_r4_233 = (*(u8 *)((s8 *)(temp_r3_222) + (0x1F)));
                        temp_r1_238 = (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r6_49) + (0x294)))) + (0x1F))) << 0x1C) >> 0x1E;
                        if ((u32) ((u32) (temp_r4_233 << 0x1E) >> 0x1E) > temp_r1_238) {
                            (*(u8 *)((s8 *)(temp_r3_222) + (0x1F))) = (u8) ((-4 & temp_r4_233) | (3 & temp_r1_238));
                        }
                    }
                    temp_r3_251 = (*(void **)((s8 *)(arg0) + (0x294)));
                    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) < (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
                        temp_r4_261 = (*(u8 *)((s8 *)(temp_r3_251) + (0x1F)));
                        temp_r1_266 = (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r6_49) + (0x294)))) + (0x1F))) << 0x1E) >> 0x1E;
                        if ((u32) ((u32) (temp_r4_261 << 0x1C) >> 0x1E) > temp_r1_266) {
                            (*(u8 *)((s8 *)(temp_r3_251) + (0x1F))) = (u8) ((-0xD & temp_r4_261) | ((3 & temp_r1_266) * 4));
                        }
                    }
                    if (((*(s32 *)((s8 *)(arg0) + (0x214))) & 0x1E000) != ((*(s32 *)((s8 *)(temp_r6_49) + (0x214))) & 0x1E000)) {

                    } else {
                        temp_r2_296 = (*(void **)((s8 *)(arg0) + (0x294)));
                        temp_r1_300 = (*(u16 *)((s8 *)((*(void **)((s8 *)(temp_r6_49) + (0x294)))) + (0xE)));
                        if ((u32) (*(u16 *)((s8 *)(temp_r2_296) + (0xE))) < (u32) temp_r1_300) {

                        } else {
                            (*(u16 *)((s8 *)(temp_r2_296) + (0xE))) = (u16) (temp_r1_300 - 1);
                        }
                    }
                }
            }
        }
    }
    temp_r4_485 = sp4 - 1;
    sp4 = temp_r4_485;
    sp0 += 4;
    if (temp_r4_485 != 0) {
        goto loop_7;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049FF4.s\"");
#else
#error "TODO: write sub_8049FF4 to match asm/nonmatching/sub_8049FF4.s, then delete this #error"
#endif

#include "global.h"
#include "common.h"
#include "process.h"
#include "title_screen.h"
#include "option_screens.h"

// Defines thumb_func_start & friends for every asm/nonmatching/*.s include
// below. Explicit and file-scoped on purpose: it used to be implicit (only
// the first include below carried its own ".include macros.inc", and later
// ones relied on that one having already run in this translation unit) —
// fragile, since reordering or matching that first function would silently
// break assembly of the rest. See CLAUDE.md "Landmines already hit".
asm_unified(".include \"asm/macros.inc\"");

// These two used to be missing their #else/#error/#endif entirely -- under
// NONMATCHING=1 they simply didn't exist, producing confusing linker
// "undefined reference" errors instead of a clear compile-time TODO. Fixed
// to match every other not-started function's stub shape (see CLAUDE.md).
// Doesn't fully unblock this file's NONMATCHING=1 build on its own -- same
// "real #error siblings block the whole translation unit" situation as
// heap.c; use tools/permute.py's isolation path for any function in this
// file until these two get real C.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/generate_window_bg_8051B98.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051EE0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

// https://decomp.me/scratch/PDUDz
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/optn_init.s\"");
#else
s32 process_add(struct OPTNProcess *, u8, s32); /* extern */

struct OPTNProcess *optn_init(struct OPTNProcess *arg0, u8 arg1, s8 *arg2, s32 arg3) {
    s32 spC;
    s32 *temp_r0_322;
    s32 temp_r0_341;
    s32 var_r2_186;
    s32 var_r3_357;
    s32 var_r4_373;
    s32 var_r6_162;
    struct OPTNProcess *temp_r0_54;
    struct Sprite *temp_r0_241;
    u16 *temp_r0_352;
    u16 *var_r2_356;
    u16 *var_r2_372;
    u16 *var_r3_371;
    u16 temp_r1_381;
    u16 var_r1_366;
    u8 *temp_r0_336;
    void *temp_r0_118;
    void *temp_r0_466;
    void *temp_r0_468;
    void *temp_r0_470;
    void *temp_r0_472;
    void *temp_r0_474;
    void *temp_r1_452;
    void *temp_r1_456;
    void *var_r0_184;
    void *var_r1_185;
    void *var_r2_161;

    process_add(arg0, arg1);
    arg0->process.definition = (struct ProcessDefinition *)0x08CDC1F8;
    *(s16 *)0x02000050 = 0xBF;
    *(s16 *)0x02000054 = 0x10;
    *(s16 *)0x02000000 = 0;
    sub_8017E34();
    *(s8 *)0x0300037D = 8;
    (*(u8 *)((s8 *)(arg0) + (0x3C))) = (u8) ((-2 & (*(u8 *)((s8 *)(arg0) + (0x3C)))) | (arg3 & 1));
    sub_801A548();
    temp_r0_54 = alloc_Zero(0x1CU, 0U, (s8 *)0x081E26DC, 0U);
    process_add(temp_r0_54, 8U, 0x081E26DC);
    temp_r0_54->process.definition = (struct ProcessDefinition *)0x08CDC208;
    arg0->odtr = &temp_r0_54->process;
    temp_r0_54->process.parentProcess = &arg0->process;
    arg0->selection = 0;
    arg0->brightness = 0x10;
    arg0->winw = alloc_zero_8018DB4(0x800U, 1U, (s8 *)0x081E26E4, 0U);
    (*(u8 *)((s8 *)(arg0) + (0x3C))) = (u8) ((-0x71 & (*(u8 *)((s8 *)(arg0) + (0x3C)))) | (((((u32) (*(u8 *)0x03000BD7 << 0x1F) >> 0x1F) * 2) | ((u32) (*(u8 *)0x03000BD6 << 0x1B) >> 0x1F) | (((u32) ((*(u8 *)((s8 *)(*(void **)0x03000FFC) + (8))) << 0x1A) >> 0x1F) * 4)) * 0x10));
    arg0->field_1D = 0;
    *(s32 (**)(s32, u8 *, s32))0x03001034(0, arg0 + 0x48, 8);
    temp_r0_118 = alloc_zero_8018DB4(0x8000U, 1U, (s8 *)0x081E26EC, 0U);
    *(s32 (**)(s32, void *))0x03000C84(0x083A0E94, temp_r0_118);
    CpuFastSet(temp_r0_118, (void *)0x06000000, (sub_80198B0((s32 *)0x083A0E94) >> 2) & 0x1FFFFF);
    *(s32 (**)(s32, void *))0x03000C84(0x083A1F60, temp_r0_118);
    CpuFastSet(temp_r0_118, (void *)0x06010000, (sub_80198B0((s32 *)0x083A1F60) >> 2) & 0x1FFFFF);
    CpuFastSet((void *)0x083A13A0, temp_r0_118, 0x200U);
    var_r2_161 = temp_r0_118 + 0x180;
    var_r6_162 = 3;
    do {
        (*(s16 *)((s8 *)(var_r2_161) + (8))) = 1;
        (*(s16 *)((s8 *)(var_r2_161) + (0x48))) = 3;
        (*(s16 *)((s8 *)(var_r2_161) + (0x32))) = 0x401;
        (*(s16 *)((s8 *)(var_r2_161) + (0x72))) = 0x403;
        var_r6_162 -= 1;
        var_r0_184 = var_r2_161 + 0x4A;
        var_r1_185 = (var_r2_161 + 0x72) - 0x68;
        var_r2_186 = 0x13;
loop_2:
        (*(s16 *)((s8 *)(var_r1_185) + (0))) = 2;
        (*(s16 *)((s8 *)(var_r0_184) + (0))) = 0x11;
        (*(s16 *)((s8 *)(var_r1_185) + (2))) = 2;
        (*(s16 *)((s8 *)(var_r0_184) + (2))) = 0x11;
        (*(s16 *)((s8 *)(var_r1_185) + (4))) = 2;
        (*(s16 *)((s8 *)(var_r0_184) + (4))) = 0x11;
        (*(s16 *)((s8 *)(var_r1_185) + (6))) = 2;
        (*(s16 *)((s8 *)(var_r0_184) + (6))) = 0x11;
        (*(s16 *)((s8 *)(var_r1_185) + (8))) = 2;
        (*(s16 *)((s8 *)(var_r0_184) + (8))) = 0x11;
        (*(s16 *)((s8 *)(var_r1_185) + (0xA))) = 2;
        (*(s16 *)((s8 *)(var_r0_184) + (0xA))) = 0x11;
        (*(s16 *)((s8 *)(var_r1_185) + (0xC))) = 2;
        (*(s16 *)((s8 *)(var_r0_184) + (0xC))) = 0x11;
        (*(s16 *)((s8 *)(var_r1_185) + (0xE))) = 2;
        (*(s16 *)((s8 *)(var_r0_184) + (0xE))) = 0x11;
        (*(s16 *)((s8 *)(var_r1_185) + (0x10))) = 2;
        (*(s16 *)((s8 *)(var_r0_184) + (0x10))) = 0x11;
        (*(s16 *)((s8 *)(var_r1_185) + (0x12))) = 2;
        (*(s16 *)((s8 *)(var_r0_184) + (0x12))) = 0x11;
        var_r0_184 += 0x14;
        var_r1_185 += 0x14;
        var_r2_186 -= 0xA;
        if (var_r2_186 >= 0) {
            goto loop_2;
        }
        var_r2_161 += 0xC0;
    } while (var_r6_162 != 0);
    CpuFastSet(temp_r0_118, (void *)0x0600D800, 0x200U);
    if (temp_r0_118 != NULL) {
        free_heap_8018D9C(temp_r0_118);
    }
    sub_8020994(0x3000, 8, 0, 0x80);
    temp_r0_241 = sub_8020DD0(5, 0x6005, 1, -1, -1, -1, -1);
    arg0->sprite = temp_r0_241;
    sub_801E150(temp_r0_241, 0, -1, 0, var_r6_162);
    sprite_show_8020CBC(arg0->sprite);
    arg0->sprite->xPosition = 0x28;
    arg0->sprite->yPosition = 0x37;
    if (!(6 & *(u8 *)0x03000BD4)) {
        CpuFastSet((void *)0x083A2880, (void *)0x02000280, 0x10U);
        CpuFastSet((void *)0x083A1BA0, (void *)0x02000080, 0x78U);
    } else {
        CpuFastSet((void *)0x083A28C0, (void *)0x02000280, 0x10U);
        CpuFastSet((void *)0x083A1D80, (void *)0x02000080, 0x78U);
    }
    (*(s16 *)((s8 *)((void *)0x0300034C) + (0))) = 0xFFFF;
    (*(s16 *)((s8 *)((void *)0x0300034C) + (2))) = -1;
    temp_r0_322 = alloc_zero_8018DB4(0xC98U, 0U, (s8 *)0x081E26F4, 1U);
    arg0->bbwf = temp_r0_322;
    sub_81994EC(temp_r0_322, (void *)0x0851F9E8);
    arg0->bbwi = alloc_Zero(0x14U, 0U, (s8 *)0x081E26FC, 1U);
    temp_r0_336 = alloc_zero_8018DB4(0x1C21FU, 1U, (s8 *)0x081E2704, 1U);
    arg0->bwcw = temp_r0_336;
    temp_r0_341 = (s32) (temp_r0_336 + 0x1F) & ~0x1F;
    arg0->field_28 = (u8 *) temp_r0_341;
    arg0->field_2C = temp_r0_341 + 0xE100;
    temp_r0_352 = alloc_zero_8018DB4(0xF00U, 1U, (s8 *)0x081E270C, 1U);
    arg0->bwsw = temp_r0_352;
    var_r2_356 = temp_r0_352 + 0x180;
    var_r3_357 = 0;
    do {
        var_r1_366 = ((var_r3_357 << 6) + 0x80) | 0xFFFFE000;
        var_r3_371 = var_r2_356 + 0x48;
        var_r2_372 = var_r2_356 + 8;
        var_r4_373 = 0x15;
loop_11:
        (*(u16 *)((s8 *)(var_r2_372) + (0))) = var_r1_366;
        (*(u16 *)((s8 *)(var_r3_371) + (0))) = var_r1_366 + 0x20;
        temp_r1_381 = var_r1_366 + 1;
        (*(u16 *)((s8 *)(var_r2_372) + (2))) = temp_r1_381;
        (*(s16 *)((s8 *)(var_r3_371) + (2))) = (s16) (temp_r1_381 + 0x20);
        var_r3_371 += 4;
        var_r2_372 += 4;
        var_r4_373 -= 2;
        var_r1_366 = temp_r1_381 + 1;
        if (var_r4_373 >= 0) {
            goto loop_11;
        }
        var_r3_357 += 1;
        var_r2_356 += 0xC0;
    } while (var_r3_357 <= 2);
    CpuFastSet(temp_r0_352, (void *)0x0600D000, 0x200U);
    spC = 0;
    CpuFastSet(&spC, (void *)0x06004000, 0x01000008U);
    sub_8052B54(arg0, 0);
    *(u32 *)0x03001034(0, arg0->field_2C, 0xE100);
    sub_8052C50(arg0, 1);
    sub_8017E34();
    sub_8052C50(arg0, 2);
    sub_8017E34();
    sub_8052C50(arg0, 3);
    sub_8017E34();
    sub_8052C50(arg0, 4);
    sub_8017E34();
    sub_8052C50(arg0, 5);
    sub_8017E34();
    sub_8052C50(arg0, 6);
    sub_8017E34();
    sub_8052C50(arg0, 7);
    sub_8017E34();
    sub_801A548();
    (*(s16 *)((s8 *)((void *)0x02000008) + (0))) = 0x1805;
    temp_r1_452 = (void *)0x02000008 + 2;
    (*(s16 *)((s8 *)((void *)0x02000008) + (2))) = 0x1901;
    temp_r1_456 = temp_r1_452 + 2;
    (*(s16 *)((s8 *)(temp_r1_452) + (2))) = 0x1A03;
    (*(s16 *)((s8 *)(temp_r1_456) + (2))) = 0x1B03;
    (*(s16 *)((s8 *)((void *)0x02000010) + (0))) = 0;
    temp_r0_466 = (void *)0x02000010 + 2;
    (*(s16 *)((s8 *)((void *)0x02000010) + (2))) = 0;
    temp_r0_468 = temp_r0_466 + 2;
    (*(s16 *)((s8 *)(temp_r0_466) + (2))) = 0;
    temp_r0_470 = temp_r0_468 + 2;
    (*(s16 *)((s8 *)(temp_r0_468) + (2))) = 0;
    temp_r0_472 = temp_r0_470 + 2;
    (*(s16 *)((s8 *)(temp_r0_470) + (2))) = 0;
    temp_r0_474 = temp_r0_472 + 2;
    (*(s16 *)((s8 *)(temp_r0_472) + (2))) = 0;
    (*(s16 *)((s8 *)(temp_r0_474) + (2))) = 0;
    (*(s16 *)((s8 *)((temp_r0_474 + 2)) + (2))) = 0;
    *((temp_r1_456 + 2) - 0xE) = 0x1C40;
    sub_8019308(0, 0x1E, -1);
    sub_80193B4(0, 0xFF, 0x10);
    return arg0;
}
#endif

void optn_update(struct OPTNProcess* optn) {
    switch (optn->process.state) {
        case OPTS_STATE_FADE_IN:
            optn->brightness--;
            BUFFER_REG_BLDY = optn->brightness;
            if (optn->brightness == 0) {
                optn->process.state = OPTS_STATE_SELECT_OPTION;
            }
            break;

        case OPTS_STATE_SELECT_OPTION:
            if (optn->field_1D > 0) {
                optn->field_1D--;
            }
            if (optn->field_48.field_1 > 0) {
                sub_8051EE0(&optn->field_48);
                break;
            }
            if (optn->field_1D != 0 || gGameState.field_2A & A_BUTTON) {
                break;
            }
            if (gGameState.field_2A & B_BUTTON) {
                if ((bool8)try_save_options(optn)) {
                    optn->brightness = 16;
                    sub_80193B4(0, 0, 16);
                    optn->process.state = OPTS_STATE_LEAVE;
                } else {
                    optn->process.state = OPTS_STATE_SAVE_ERROR;
                }
                break;
            }
            if (gGameState.field_2E & DPAD_UP) {
                optn->selection--;
                if (optn->selection < 0) {
                    optn->selection = 2;
                }
                play_sfx_80195B4(95, -1);
            } else if (gGameState.field_2E & DPAD_DOWN) {
                optn->selection++;
                if (optn->selection > 2) {
                    optn->selection = 0;
                }
                play_sfx_80195B4(95, -1);
            }
            optn->sprite->yPosition = 24 * optn->selection + 55;
            switch (optn->selection) {
                case 0:
                    if ((optn->options_4 ^ OPTION_FLAGS_EASY_SLEEP) & OPTION_FLAGS_EASY_SLEEP) {
                        if (gGameState.field_2A & DPAD_LEFT) {
                            optn->options_4 |= OPTION_FLAGS_EASY_SLEEP;
                            option_screen_set_ok_button(optn, word_83A2900[0], word_83A2900[1]);
                            play_sfx_80195B4(95, -1);
                            optn->process.state = OPTS_STATE_EASY_SLEEP_CONFIRMATION;
                        }
                    } else {
                        if (gGameState.field_2A & DPAD_RIGHT) {
                            optn->options_4 &= ~OPTION_FLAGS_EASY_SLEEP;
                            play_sfx_80195B4(95, -1);
                        }
                    }
                    break;

                case 1:
                    if (gGameState.field_888_1 == 1) {
                        if (!(optn->options_4 & OPTION_FLAGS_RUMBLE_FEATURE)) {
                            if (gGameState.field_2A & DPAD_LEFT) {
                                optn->options_4 |= OPTION_FLAGS_RUMBLE_FEATURE;
                                option_screen_set_ok_button(optn, word_83A2900[2], word_83A2900[3]);
                                play_sfx_80195B4(95, -1);
                                optn->process.state = OPTS_STATE_RUMBLE_FEATURE_CONFIRMATION;
                            }
                        } else {
                            if (gGameState.field_2A & DPAD_RIGHT) {
                                optn->options_4 &= ~OPTION_FLAGS_RUMBLE_FEATURE;
                                gGameState.field_88B_0 = 0;
                                play_sfx_80195B4(95, -1);
                            }
                        }
                    }
                    break;

                case 2:
                    if (!(optn->options_4 & OPTION_FLAGS_AUTO_FEATURE)) {
                        if (gGameState.field_2A & DPAD_LEFT) {
                            optn->options_4 |= OPTION_FLAGS_AUTO_FEATURE;
                            option_screen_set_ok_button(optn, word_83A2900[4], word_83A2900[5]);
                            play_sfx_80195B4(95, -1);
                            optn->process.state = OPTS_STATE_AUTO_SLEEP_CONFIRMATION;
                        }
                    } else {
                        if (gGameState.field_2A & DPAD_RIGHT) {
                            optn->options_4 &= ~OPTION_FLAGS_AUTO_FEATURE;
                            play_sfx_80195B4(95, -1);
                        }
                    }
                    break;
            }
            break;

        case OPTS_STATE_EASY_SLEEP_CONFIRMATION:
            if (optn->field_48.field_1 == 0) {
                if (gGameState.field_2A & A_BUTTON) {
                    optn->sprite->xPosition = 40;
                    optn->sprite->yPosition = 24 * optn->selection + 55;
                    off_839EC80[REG_OFFSET_DISPCNT + 1] |= DISPCNT_HBLANK_INTERVAL;
                    optn->field_48.field_0_0 = 1;
                    optn->field_48.field_1 = 7;
                    BUFFER_REG_DISPCNT &= ~DISPCNT_BG0_ON;
                    play_sfx_80195B4(96, -1);
                    optn->process.state = OPTS_STATE_SELECT_OPTION;
                }
            } else {
                sub_8051EE0(&optn->field_48);

                if (optn->field_48.field_1 == 6) {
                    sub_8018218(optn->field_2C, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (optn->field_48.field_1 == 7) {
                    sub_8018218(optn->bwsw, (void*)0x600C000, 0x500, 32, 0);
                } else if (optn->field_48.field_1 == 0) {
                    optn->sprite->xPosition = optn->okButtonPosX + 6;
                    optn->sprite->yPosition = optn->okButtonPosY + 7;
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_RUMBLE_FEATURE_CONFIRMATION:
            if (optn->field_48.field_1 == 0) {
                if (gGameState.field_2A & A_BUTTON) {
                    optn->sprite->xPosition = 40;
                    optn->sprite->yPosition = 24 * optn->selection + 55;
                    off_839EC80[REG_OFFSET_DISPCNT + 1] |= DISPCNT_HBLANK_INTERVAL;
                    optn->field_48.field_0_0 = 1;
                    optn->field_48.field_1 = 7;
                    BUFFER_REG_DISPCNT &= ~DISPCNT_BG0_ON;
                    gGameState.field_88B_0 = 1;
                    optn->field_1D = 16;
                    sub_801ABE8(0, 16, 0);
                    play_sfx_80195B4(96, -1);
                    optn->process.state = OPTS_STATE_SELECT_OPTION;
                }
            } else {
                sub_8051EE0(&optn->field_48);
                if (optn->field_48.field_1 == 6) {
                    sub_8018218(optn->field_2C + 0x4B00, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (optn->field_48.field_1 == 7) {
                    sub_8018218(optn->bwsw + 0x280, (void*)0x600C000, 0x500, 32, 0);
                } else if (optn->field_48.field_1 == 0) {
                    optn->sprite->xPosition = optn->okButtonPosX + 6;
                    optn->sprite->yPosition = optn->okButtonPosY + 7;
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_AUTO_SLEEP_CONFIRMATION:
            if (optn->field_48.field_1 == 0) {
                if (gGameState.field_2A & A_BUTTON) {
                    optn->sprite->xPosition = 40;
                    optn->sprite->yPosition = 24 * optn->selection + 55;
                    off_839EC80[REG_OFFSET_DISPCNT + 1] |= DISPCNT_HBLANK_INTERVAL;
                    optn->field_48.field_0_0 = 1;
                    optn->field_48.field_1 = 7;
                    BUFFER_REG_DISPCNT &= ~DISPCNT_BG0_ON;
                    play_sfx_80195B4(96, -1);
                    optn->process.state = OPTS_STATE_SELECT_OPTION;
                }
            } else {
                sub_8051EE0(&optn->field_48);
                if (optn->field_48.field_1 == 6) {
                    sub_8018218(optn->field_2C + 0x9600, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (optn->field_48.field_1 == 7) {
                    sub_8018218(optn->bwsw + 0x500, (void*)0x600C000, 0x500, 32, 0);
                } else if (optn->field_48.field_1 == 0) {
                    optn->sprite->xPosition = optn->okButtonPosX + 6;
                    optn->sprite->yPosition = optn->okButtonPosY + 7;
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_SAVE_ERROR:
            sub_8052EFC(optn);
            sub_805420C(optn);
            optn->brightness = 240;
            optn->process.state = OPTS_STATE_SAVE_ERROR_CONFIRMATION;
            break;

        case OPTS_STATE_SAVE_ERROR_CONFIRMATION:
            if (optn->field_48.field_1 == 0) {
                optn->brightness--;
                if (optn->brightness == 0
                    || gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                    optn->brightness = 16;
                    sub_80193B4(0, 0, 16);
                    optn->process.state = OPTS_STATE_LEAVE;
                }
            } else {
                sub_8051EE0(&optn->field_48);
                if (optn->field_48.field_1 == 6) {
                    sub_8018218(optn->field_2C, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (optn->field_48.field_1 == 7) {
                    sub_8018218(optn->bwsw, (void*)0x600C000, 0x500, 32, 0);
                } else if (optn->field_48.field_1 == 0) {
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_LEAVE:
            optn->brightness--;
            BUFFER_REG_BLDY = 16 - optn->brightness;
            if (optn->brightness == 0) {
                if (optn) {
                    optn->process.definition = &stru_8CDC1F8;
                    sub_8021FD4();
                    if (optn->odtr) {
                        process_remove(optn->odtr, 3);
                    }
                    if (optn->winw) {
                        free_heap_8018D9C(optn->winw);
                    }
                    if (optn->bwcw) {
                        free_heap_8018D9C(optn->bwcw);
                    }
                    if (optn->bwsw) {
                        free_heap_8018D9C(optn->bwsw);
                    }
                    if (optn->bbwf) {
                        free_heap_8018D9C(optn->bbwf);
                    }
                    free_heap_8018DA8((void*)optn->bbwi);
                    sub_801A6B0();
                    gGameState.field_31 = 2;
                    BUFFER_REG_DISPCNT = 0;
                    BUFFER_REG_BLDCNT = BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_NONE;
                    process_remove(&optn->process, 3);
                }
                //! Fix this when other functions are also matching.
                open_init_8055A00(
                    alloc_Zero(sizeof(struct TitleScreen), 0, (char*)0x081E2714 /*"OPEN"*/, 0), 8,
                    (char*)0x081E2714 /*"OPEN"*/, 3);
                return;
            }
            break;
    }

    sub_8021F7C();
}

int try_save_options(struct OPTNProcess* optn) {
    gGameState.field_88A_4 = ((optn->options_4 >> OPTION_FLAGS_SHIFT_EASY_SLEEP) & 1) != 0;
    gGameState.field_88B_0 = ((optn->options_4 >> OPTION_FLAGS_SHIFT_RUMBLE_FEATURE) & 1) != 0;
    dword_3000FFC->field_8_3 = ((optn->options_4 >> OPTION_FLAGS_SHIFT_EASY_SLEEP) & 1) != 0;
    dword_3000FFC->field_8_4 = ((optn->options_4 >> OPTION_FLAGS_SHIFT_RUMBLE_FEATURE) & 1) != 0;
    dword_3000FFC->field_8_5 = ((optn->options_4 >> OPTION_FLAGS_SHIFT_AUTO_FEATURE) & 1) != 0;

    return sub_812454C();
}

void sub_8052B54(struct OPTNProcess* optn, int a2) {
    int i;

    dword_3001034(0, (void*)optn->field_28, 6144);

    for (i = 0; i < 3; i++) {
        if (gGameState.field_888_1 != 1 && i == 1) {
            sub_8199D78(optn->bbwi, optn->field_28, 32, 4, 0, 0, 1, 2, 7, 0);
        } else {
            sub_8199D78(optn->bbwi, optn->field_28, 32, 4, 0, 0, 1, 2, 5, 0);
        }
        sub_8199D5C(optn->bbwi, 0, 16 * i + 2, *off_83A2920[i] + 2);
        do {
            u8* v5 = optn->bbwi->field_8;
            if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
                optn->bbwi->field_8 += 3;
            }
        } while (sub_8199624(optn->bbwi) != 0);
    }

    if (a2) {
        sub_8018218((void*)optn->field_28, (void*)0x6001000, 6144, 32, 0);
    } else {
        CpuFastSet((void*)optn->field_28, (void*)0x6001000, 0x600);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8052C50.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

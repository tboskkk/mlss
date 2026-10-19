#include "global.h"
#include "common.h"
#include "process.h"
#include "option_screens.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8052EFC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8052EFC(struct OPTNProcess* optn) {
    u16* dst;
    u16 tile;
    int y;
    int x;
    u16 width;
    u16 yPos;
    int text;
    int zero;

    dword_3001034(0, (void*)optn->field_2C, 0x4B00);
    dword_3001034(0, (void*)optn->bwsw, 0x500);

    zero = 0;
    width = word_83A2918[0];
    yPos = word_83A291C[1];
    text = dword_84E8B18;
    sub_8199D78(optn->bbwi, optn->field_2C, (s16)width, (u8)word_83A291C[0], zero, zero, 1, 2,
                5, 3);
    sub_8199D5C(optn->bbwi, 0, yPos + 1, text + 2);
    do {
        u8* v5 = optn->bbwi->field_8;
        if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
            optn->bbwi->field_8 += 3;
        }
    } while (sub_8199624(optn->bbwi) != 0);

    dst = optn->bwsw;
    tile = 0xE001;
    for (y = 0; y < 16; y++) {
        dst += (30 - (s16)width) / 2;
        for (x = 0; x < (s16)width; x++) {
            *dst++ = tile++;
        }
        dst += (30 - (s16)width) / 2 + 2;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805306C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/bclr_init.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80536E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/bclr_update_8053778.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8053CB4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8053FC4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80540B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805410C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8054164.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80541B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805420C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/option_screen_set_ok_button.s\"");
#else
s32 generate_window_bg_8051B98(void *, s32 *, u8, u8, s32, s32, s32); /* extern */

void option_screen_set_ok_button(struct OPTNProcess *arg0, s32 arg1, s32 arg2) {
    u8 temp_r4_26;
    u8 temp_r5_19;

    temp_r5_19 = 0xF - ((s32) (arg1 + ((u32) arg1 >> 0x1F)) >> 1);
    temp_r4_26 = 0xA - ((s32) (((u32) arg2 >> 0x1F) + arg2) >> 1);
    generate_window_bg_8051B98(arg0 + 0x48, arg0->winw, temp_r5_19, temp_r4_26, (s32) (u8) arg1, (s32) (u8) arg2, 0xC800);
    arg0->okButtonPosX = ((temp_r5_19 * 8) + (arg1 * 4)) - 0x10;
    arg0->okButtonPosY = ((temp_r4_26 + arg2) * 8) - 0x16;
}
#endif

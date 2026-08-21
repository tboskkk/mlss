#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8018E24 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8018E24(void) {
    u8 flags;

    gGameState.field_890 = 0xFF00;
    gGameState.field_89C = 0xFF00;
    gGameState.field_89E = 0xFF00;
    gGameState.field_8A4 = 0x4B00;
    gGameState.field_8A6 = 0x4B00;
    sub_819A43C();
    sub_819AFA8((void*)0x02000480);
    flags = gGameState.u_88C.field_88C;
    gGameState.u_88C.field_88C = flags | 6;
    sub_8018E88(0, 100);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018E88.s\"");
#else
void sub_8018E88(int type, int volume) {
    int flags;
    union GameStateU88C* p = (union GameStateU88C*)((u8*)&gGameState + 0x88C);

    flags = p->field_88C;

    if (type == p->bits.field_88C_1 && type == 1 && (flags & 6) == 2 &&
        volume == p->wordBits.field_88C_3) {
        goto end;
    }

    REG_DMA1CNT_H &= 0xC5FF;
    REG_DMA1CNT_H &= 0x7FFF;
    REG_DMA2CNT_H &= 0xC5FF;
    REG_DMA2CNT_H &= 0x7FFF;

    if ((flags & 6) == 2) {
        REG_IME = 0;
        word_2000004 &= 0xFFDF;
        REG_IE &= 0xFFFB;
        REG_IF |= 4;
        REG_IME = 1;
    }

    p->field_88C = ((type & 3) << 1) | (flags & ~6);

    if (type != 1) {
        goto end;
    }

    sub_8018B78(3, sub_80196BC);

    REG_IME = 0;
    word_2000004 &= 0xFF;
    word_2000004 |= (volume << 8) | 0x20;
    REG_IE |= 4;
    REG_IF |= 4;
    REG_IME = type;

    volume &= 0x7F;
    p->field_88C_word = (p->field_88C_word & 0xFC07) | (volume << 3);

end:
    gGameState.u_88C.field_88C |= 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018FC4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019308.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80193B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019460.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019508.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019588.s\"");
#else
s32 sub_819BABC();                                  /* extern */

u32 sub_8019588(void) {
    s32 temp_r0_7;

    temp_r0_7 = sub_819BABC();
    return (u32) ((0 - temp_r0_7) | temp_r0_7) >> 0x1F;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/stop_all_sfx_801959C.s\"");
#else
s32 sub_819BA00();                              /* extern */

void stop_all_sfx_801959C(void) {
    sub_819BA00();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/stop_sfx_80195A8.s\"");
#else
s32 sub_819B9E8();                              /* extern */

void stop_sfx_80195A8(void) {
    sub_819B9E8();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/play_sfx_80195B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80195F8.s\"");
#else
s32 sub_819BA2C();                                  /* extern */

s32 sub_80195F8(s32 arg0) {
    return 1 & (sub_819BA2C() >> (arg0 + 1));
}
#endif

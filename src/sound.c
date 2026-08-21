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
#error "TODO: write sub_8018FC4 to match asm/nonmatching/sub_8018FC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019308.s\"");
#else
#error "TODO: write sub_8019308 to match asm/nonmatching/sub_8019308.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80193B4.s\"");
#else
#error "TODO: write sub_80193B4 to match asm/nonmatching/sub_80193B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019460.s\"");
#else
#error "TODO: write sub_8019460 to match asm/nonmatching/sub_8019460.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019508.s\"");
#else
#error "TODO: write sub_8019508 to match asm/nonmatching/sub_8019508.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019588.s\"");
#else
#error "TODO: write sub_8019588 to match asm/nonmatching/sub_8019588.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/stop_all_sfx_801959C.s\"");
#else
#error "TODO: write stop_all_sfx_801959C to match asm/nonmatching/stop_all_sfx_801959C.s, then delete this #error"
#endif

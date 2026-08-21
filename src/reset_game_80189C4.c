#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// reset_game_80189C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/reset_game_80189C4.s\"");
#else
void reset_game_80189C4(void) {
    void *temp_r1_26;
    void *temp_r1_36;

    *(u8 *)0x03000BD4 |= 1;
    (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))) = (u16) (0xC5FF & (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))));
    (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))) = (u16) (0x7FFF & (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))));
    temp_r1_26 = (void *)0x040000B0 + 0xC;
    (*(u16 *)((s8 *)(temp_r1_26) + (0xA))) = (u16) (0xC5FF & (*(u16 *)((s8 *)(temp_r1_26) + (0xA))));
    (*(u16 *)((s8 *)(temp_r1_26) + (0xA))) = (u16) (0x7FFF & (*(u16 *)((s8 *)(temp_r1_26) + (0xA))));
    temp_r1_36 = temp_r1_26 + 0xC;
    (*(u16 *)((s8 *)(temp_r1_36) + (0xA))) = (u16) (0xC5FF & (*(u16 *)((s8 *)(temp_r1_36) + (0xA))));
    (*(u16 *)((s8 *)(temp_r1_36) + (0xA))) = (u16) (0x7FFF & (*(u16 *)((s8 *)(temp_r1_36) + (0xA))));
    (*(u16 *)((s8 *)((void *)0x040000D4) + (0xA))) = (u16) (0xC5FF & (*(u16 *)((s8 *)((void *)0x040000D4) + (0xA))));
    (*(u16 *)((s8 *)((void *)0x040000D4) + (0xA))) = (u16) (0x7FFF & (*(u16 *)((s8 *)((void *)0x040000D4) + (0xA))));
    sub_81DA6C8(0xFC);
}
#endif

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
    flags = gGameState.field_88C;
    gGameState.field_88C = flags | 6;
    sub_8018E88(0, 100);
}

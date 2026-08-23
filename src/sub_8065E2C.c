#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8065E2C needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8065EA0;

void sub_8065E2C(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x14;
        arg0->handler = &sub_8065EA0;
    }
}

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA904 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80EA904(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0xA6))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0xA6))) - 1);
    (*(s32 *)((s8 *)((((*(u8 *)((s8 *)(arg1) + (0xA6))) * 4) + arg1)) + (0x58))) = 0;
    return 1;
}

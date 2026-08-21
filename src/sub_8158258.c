#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158258 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8158258(void *arg0) {
    sub_801E150((*(struct Sprite **)((s8 *)(arg0) + (0))), ((s32) (*(s32 *)((s8 *)(arg0) + (0x1C))) / 100) + (*(s32 *)((s8 *)(arg0) + (0x30))), 0, 0, 0);
    sub_801E150((*(struct Sprite **)((s8 *)(arg0) + (4))), ((s32) ((s32) (*(s32 *)((s8 *)(arg0) + (0x1C))) / 10) % 10) + (*(s32 *)((s8 *)(arg0) + (0x30))), 0, 0, 0);
    sub_801E150((*(struct Sprite **)((s8 *)(arg0) + (8))), ((s32) (*(s32 *)((s8 *)(arg0) + (0x1C))) % 10) + (*(s32 *)((s8 *)(arg0) + (0x30))), 0, 0, 0);
}

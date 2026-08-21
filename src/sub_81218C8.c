#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81218C8 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81218C8(void *arg0) {
    sprite_hide_8021F20((*(struct Sprite **)((s8 *)(arg0) + (0x30))));
}

void sub_81218D4(void *arg0) {
    sprite_show_8020CBC((*(struct Sprite **)((s8 *)(arg0) + (0x30))));
}

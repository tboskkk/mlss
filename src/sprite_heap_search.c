#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sprite_heap_search needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sprite_heap_search.s\"");
#else
s32 sprite_heap_search(s32 arg0, u8 arg1, u16 arg2) {
    void *var_r3_13;

    var_r3_13 = (*(void **)((s8 *)((void *)0x0203FFB8) + (0x2C)));
loop_1:
    if (((*(u8 *)((s8 *)(var_r3_13) + (0xC))) == arg0) && ((*(u8 *)((s8 *)(var_r3_13) + (0xD))) == arg1) && ((*(u16 *)((s8 *)(var_r3_13) + (0xE))) == arg2)) {
        return var_r3_13 - ((*(s32 *)((s8 *)(var_r3_13) + (8))) - 0x10);
    }
    var_r3_13 = (*(void **)((s8 *)(var_r3_13) + (4)));
    if (var_r3_13 == NULL) {
        return 0;
    }
    goto loop_1;
}
#endif

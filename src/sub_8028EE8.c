#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8028EE8 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8028EE8(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0xF8))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0xF8))) | 0x40);
}

s32 sub_8022554(s32, s32);                      /* extern */
s32 sub_812F5D8(void *, s32, s32);              /* extern */

void sub_8028EF4(s32 arg0) {
    sub_801A6B0();
    if (arg0 != 0) {
        sub_8022554(arg0, 3);
    }
    sub_812F5D8(alloc_Zero(0x4ACU, 0U, (s8 *)0x081E2694, 0U), 8, 0x081E2694);
}

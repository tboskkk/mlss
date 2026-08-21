#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A1A90 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8087CE4();                              /* extern */

void sub_80A1A90(void *arg0) {
    sub_8087CE4();
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x79)))) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
        (*(s8 *)((s8 *)(arg0) + (0x74))) = 0;
    }
}

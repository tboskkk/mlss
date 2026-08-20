#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80793F4 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_807940C;

void sub_80793F4(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_807940C;
    }
}

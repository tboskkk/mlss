#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8074688 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_80728D0;

void sub_8074688(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x10;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80728D0;
    }
}

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8099028 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8099034;

s32 sub_8099028(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8099034;
    return 1;
}

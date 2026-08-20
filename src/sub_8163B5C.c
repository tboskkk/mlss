#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163B5C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8163B5C(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x64))) = arg1;
}

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80993BC needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_80993C8;

s32 sub_80993BC(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80993C8;
    return 1;
}

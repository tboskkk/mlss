#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E92A8 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_80E92A8(u32* param_1) {
    return *param_1;
}

ASM_FUNC("asm/nonmatching/sub_80E92AC.s", void sub_80E92AC(void *arg0, s32 arg1, s32 arg2));
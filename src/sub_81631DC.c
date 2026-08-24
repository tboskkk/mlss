#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81631DC needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_81631DC(void *arg0) {
    s32 var_r1_7;

    var_r1_7 = 0;
    if ((*(s32 *)((s8 *)(arg0) + (0x24))) == 0) {
        var_r1_7 = 1;
    }
    return var_r1_7;
}

ASM_FUNC("asm/nonmatching/sub_81631F0.s", void sub_81631F0(void *arg0, s32 arg1, s32 arg2));
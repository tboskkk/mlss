#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F4DE4 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80F4DE4.s", s32 sub_80F4DE4(void *arg0, s32 arg1, void *arg2, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_80F4EE8.s", s32 sub_80F4EE8(void *arg0, s32 arg1, void *arg2, s32 arg3));
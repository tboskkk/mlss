#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F695C needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80F695C.s", void sub_80F695C(s32 arg0, u16 arg1));
ASM_FUNC("asm/nonmatching/sub_80F6A0C.s", void sub_80F6A0C(s32 arg0, s16 arg1, u16 arg2));
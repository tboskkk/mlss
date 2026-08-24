#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F9F2C needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80F9F2C.s", s32 sub_80F9F2C(void *arg0, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80FA078.s", s32 sub_80FA078(void *arg0, void *arg2));
#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802C428 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_802C428.s", void sub_802C428(void *arg0, s32 arg1, s32 arg2));
ASM_FUNC("asm/nonmatching/sub_802C4D4.s", void sub_802C4D4(void *arg0, s32 arg1, u8 arg2));
ASM_FUNC("asm/nonmatching/sub_802C588.s", void sub_802C588(void *arg0, void *arg1));
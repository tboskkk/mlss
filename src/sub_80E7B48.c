#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E7B48 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80E7B48.s", void sub_80E7B48(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4, s32 arg5));
ASM_FUNC("asm/nonmatching/sub_80E7E0C.s", void sub_80E7E0C(void *arg0, s32 arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5));
ASM_FUNC("asm/nonmatching/sub_80E8228.s", void sub_80E8228(void *arg0, s32 arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5));
ASM_FUNC("asm/nonmatching/sub_80E84BC.s", void sub_80E84BC());
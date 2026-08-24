#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8084F28 needs.

asm_unified(".include \"asm/macros.inc\"");


ASM_FUNC("asm/nonmatching/sub_8084F28.s", void sub_8084F28(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7));
ASM_FUNC("asm/nonmatching/sub_80850F8.s", void sub_80850F8(s32 arg0, u8 arg1, void *arg2, s32 arg3, s32 arg4));
ASM_FUNC("asm/nonmatching/sub_8085170.s", void sub_8085170(s32 arg0, u8 arg1, u32 arg2));
#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8114C1C needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8114C1C.s", s32 sub_8114C1C(void *arg0, u8 arg1, u16 arg2, u8 arg3));
ASM_FUNC("asm/nonmatching/sub_8115048.s", s32 sub_8115048(void *arg0, u8 arg1, u8 arg2));
ASM_FUNC("asm/nonmatching/sub_81151E4.s", void sub_81151E4(void *arg0, u8 arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7));
ASM_FUNC("asm/nonmatching/sub_81152FC.s", u16 sub_81152FC(s32 arg0, u16 arg1));
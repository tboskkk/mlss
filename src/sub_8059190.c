#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8059190 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8059190.s", void sub_8059190(void *arg0, u16 arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5));
ASM_FUNC("asm/nonmatching/sub_80592C8.s", void sub_80592C8(void *arg0, u16 arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5));
ASM_FUNC("asm/nonmatching/sub_805952C.s", void sub_805952C(void *arg0, u16 arg1, u16 arg2));
ASM_FUNC("asm/nonmatching/sub_8059704.s", void * sub_8059704(void *arg0, u8 arg1, u16 arg3, s32 arg4));
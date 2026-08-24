#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8040C50 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8040C50.s", void sub_8040C50(void *arg0, u8 arg1));
ASM_FUNC("asm/nonmatching/sub_8040CF4.s", void sub_8040CF4(void *arg0, u16 arg1, u16 arg2, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_8040FA0.s", void sub_8040FA0(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_8041368.s", void * sub_8041368(void *arg0, void *arg1, s32 arg2));
ASM_FUNC("asm/nonmatching/sub_80415A0.s", void sub_80415A0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_804173C.s", void sub_804173C(void *arg0, s32 arg1, u8 arg2, u8 arg3, s32 arg4));
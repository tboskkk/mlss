#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81386C0 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_81386C0.s", s32 sub_81386C0(s32 arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_81387C8.s", void sub_81387C8(void *arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_8138944.s", void sub_8138944(void *arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_8138A78.s", void sub_8138A78(void *arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_8138B84.s", void sub_8138B84(void *arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_8138C20.s", void sub_8138C20(void *arg0, s32 arg1));
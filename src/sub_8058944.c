#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8058944 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8058944.s", void sub_8058944(s32 arg0, u16 arg1, u16 arg2, u16 arg3));
ASM_FUNC("asm/nonmatching/sub_8058ED0.s", void sub_8058ED0(void *arg0, u16 arg1, u16 arg2, s16 arg3));
ASM_FUNC("asm/nonmatching/sub_805905C.s", void sub_805905C(void *arg0, u16 arg1, s16 arg2, u16 arg3));
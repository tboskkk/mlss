#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8105D0C needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8105D0C.s", void sub_8105D0C(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_8105E00.s", void sub_8105E00(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8105E6C.s", void sub_8105E6C(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_8105F28.s", void sub_8105F28(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_8106020.s", void sub_8106020(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_81060F0.s", void sub_81060F0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8106178.s", void sub_8106178(void *arg0));
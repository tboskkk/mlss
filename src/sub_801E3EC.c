#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801E3EC needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_801E3EC.s", void sub_801E3EC(s8 *arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_801E68C.s", void sub_801E68C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_801E80C.s", s32 sub_801E80C(void *arg0, s32 arg1, s32 arg2));
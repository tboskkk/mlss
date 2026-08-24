#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80ECB20 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80ECB20.s", s32 sub_80ECB20(void *arg0, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80ECCB0.s", s32 sub_80ECCB0(void *arg0, void *arg1, s32 *arg2));
ASM_FUNC("asm/nonmatching/sub_80ECDA4.s", void sub_80ECDA4());
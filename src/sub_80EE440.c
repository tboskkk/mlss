#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EE440 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80EE440.s", s32 sub_80EE440(s32 arg0, void *arg1, s32 *arg3));
ASM_FUNC("asm/nonmatching/sub_80EE4CC.s", s32 sub_80EE4CC(s32 arg0, void *arg1, void *arg3));
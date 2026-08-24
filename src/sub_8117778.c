#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8117778 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8117778.s", s32 sub_8117778(u8 arg0, u8 arg1, u8 arg2, u8 arg3));
ASM_FUNC("asm/nonmatching/sub_811795C.s", s32 sub_811795C(u8 arg0, u8 *arg1, u8 arg2));
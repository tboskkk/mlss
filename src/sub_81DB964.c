#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DB964 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_81DB964.s", s32 sub_81DB964(u32 arg0));
ASM_FUNC("asm/nonmatching/sub_81DB9E0.s", s32 sub_81DB9E0(s32 arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_81DBA7C.s", void sub_81DBA7C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4));
ASM_FUNC("asm/nonmatching/sub_81DBAE8.s", s32 sub_81DBAE8(void *arg0));
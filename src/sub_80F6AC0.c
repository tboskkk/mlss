#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F6AC0 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80F6AC0.s", void sub_80F6AC0(s32 arg0, u16 arg1, s32 arg2, u8 arg3));
ASM_FUNC("asm/nonmatching/sub_80F6B44.s", s16 sub_80F6B44(s32 arg0, u16 arg1, u32 arg2));
ASM_FUNC("asm/nonmatching/sub_80F6E38.s", u8 sub_80F6E38(void));
#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F4180 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80F4180.s", s32 sub_80F4180(void *arg0, void *arg1, s16 *arg2));
ASM_FUNC("asm/nonmatching/sub_80F423C.s", u8 sub_80F423C(void *arg0, s32 arg1, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80F4360.s", s32 sub_80F4360(void *arg0, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80F4468.s", u8 sub_80F4468(void *arg0, s32 arg1, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80F4530.s", s32 sub_80F4530(void *arg0, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80F4608.s", u8 sub_80F4608(void *arg0, void *arg1, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80F4750.s", s32 sub_80F4750(s32 arg0, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80F4844.s", u8 sub_80F4844(void *arg0, void *arg1, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80F492C.s", s32 sub_80F492C(s32 arg0, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80F49D4.s", s32 sub_80F49D4(void *arg0, s32 *arg2));
ASM_FUNC("asm/nonmatching/sub_80F4B64.s", s32 sub_80F4B64(s32 arg0, s32 arg1, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80F4CE8.s", s32 sub_80F4CE8(s32 arg0, void *arg1, void *arg2));
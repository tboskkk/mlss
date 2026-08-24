#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DD2E0 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_81DD2E0(void) {
    return *(s32 *)0x08CDBD64;
}

ASM_FUNC("asm/nonmatching/sub_81DD2EC.s", void sub_81DD2EC(s32 arg0, s32 arg1, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_81DD4AC.s", s32 sub_81DD4AC(s32 arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/strlen.s", size_t strlen(const char *arg0));
#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// alarm needs.

asm_unified(".include \"asm/macros.inc\"");

unsigned int alarm(unsigned int seconds) {
    return seconds;
}

ASM_FUNC("asm/nonmatching/sub_81DC7F4.s", void sub_81DC7F4(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_81DC81C.s", void sub_81DC81C(s32 arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_81DC978.s", void * sub_81DC978(s32 arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/memcpy.s", void *memcpy(void *arg0, const void *arg1, size_t arg2));
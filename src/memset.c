#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// memset needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/memset.s", void *memset(void *arg0, int arg1, size_t arg2));
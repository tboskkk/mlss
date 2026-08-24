#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_16 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_16(void) {
}

ASM_FUNC("asm/nonmatching/sub_8018B78.s", void sub_8018B78(int arg0, void (*arg1)(void)));
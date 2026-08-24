#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_18 needs.

asm_unified(".include \"asm/macros.inc\"");


void nullsub_18(void) {
}

ASM_FUNC("asm/nonmatching/sub_80514C4.s", void sub_80514C4(s32 arg0, void *arg1, s32 **arg2));
ASM_FUNC("asm/nonmatching/sub_805155C.s", void sub_805155C(s32 arg0, void *arg1, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80515DC.s", int sub_80515DC());
void sub_8051608(void) {
    sub_80515DC();
}

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8051614 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051614.s\"");
#else
void sub_8051614(void *arg1) {
    (*(s32 (**)())((s8 *)(arg1) + (0x1A0)))();
}
#endif

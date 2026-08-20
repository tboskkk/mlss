#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_enable_flag_2 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_enable_flag_2.s\"");
#else
void script_enable_flag_2(void *arg2) {
    (*(u16 *)((s8 *)(arg2) + (0xA0))) = (u16) (2 | (*(u16 *)((s8 *)(arg2) + (0xA0))));
}
#endif

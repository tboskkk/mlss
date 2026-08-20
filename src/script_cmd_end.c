#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_cmd_end needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_end.s\"");
#else
u32 script_cmd_end(u32* param1) {
    u32 temp = param1[0];
    param1[1] = temp;
    param1[4] = 0;
    return 1;
}
#endif

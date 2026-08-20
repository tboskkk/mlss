#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_cmd_call needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_call.s\"");
#else
u32 script_cmd_call(u32* a0, u32* a1, u32 a2) {
    if (a2 == 1) {
        *a1 = *a0;
    }
    *a0 = a2;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_return.s\"");
#else
#error "TODO: write script_cmd_return to match asm/nonmatching/script_cmd_return.s, then delete this #error"
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FA7C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA7C4.s\"");
#else
u8 script_cmd_return(void *);                       /* extern */

u8 sub_80FA7C4(void *arg0) {
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x24)))) + (0x9A1))) = 1;
    return script_cmd_return(arg0 + 0x1C);
}
#endif

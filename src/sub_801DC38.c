#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801DC38 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_801DC38(void *arg0) {
    (*(s32 (**)(s32, s32))((s8 *)(arg0) + (0x14)))((*(s32 *)((s8 *)(arg0) + (0))), (*(s32 *)((s8 *)(arg0) + (4))));
}

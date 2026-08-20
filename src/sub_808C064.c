#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808C064 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808C348;

s32 sub_808C064(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808C348;
    return 1;
}

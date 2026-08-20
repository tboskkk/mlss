#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158E10 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8158E10(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0x14))) = 0;
}

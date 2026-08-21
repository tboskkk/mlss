#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81617F4 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8021308(s32);                           /* extern */

void sub_81617F4(s32 *arg0, s32 arg1) {
    sub_8021308(*arg0);
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}

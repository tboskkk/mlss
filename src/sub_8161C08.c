#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8161C08 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8021308(s32);                           /* extern */

void sub_8161C08(s32 *arg0, s32 arg1) {
    sub_8021308(*arg0);
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161C28.s\"");
#else
#error "TODO: write sub_8161C28 to match asm/nonmatching/sub_8161C28.s, then delete this #error"
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_21 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_21(void) {
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159378.s\"");
#else
void sub_8159378(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCA30;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

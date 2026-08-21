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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159398.s\"");
#else
#error "TODO: write sub_8159398 to match asm/nonmatching/sub_8159398.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81593B8.s\"");
#else
void sub_81593B8(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCA30;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81593DC.s\"");
#else
void sub_81593DC(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCA30;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8159400 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159400.s\"");
#else
void sub_8159400(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCA30;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159420.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159440.s\"");
#else
void sub_8159440(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCA30;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

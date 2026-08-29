#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815F7FC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_815F7FC(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCF50;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F81C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F834.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F838.s\"");
#else
void sub_815F838(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCF50;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816132C needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_816132C(void) {
    return 0;
}

s32 sub_81612E4(void *);                        /* extern */

void sub_8161330(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x2C))) = 0x08CDD018;
    if ((*(s32 *)((s8 *)(arg0) + (0xC))) != 0) {
        sub_81612E4(arg0);
    }
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161360.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81613D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

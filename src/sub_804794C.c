#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804794C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_804794C(void *arg0, s16 arg1) {
    (*(s16 *)((s8 *)(arg0) + (0x23E))) = arg1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047958.s\"");
#else
void sub_8047958(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x2B6))) = (u8) (-0x31 & (*(u8 *)((s8 *)(arg0) + (0x2B6))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804796C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047980.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

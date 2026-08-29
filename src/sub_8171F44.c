#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8171F44 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171F44.s\"");
#else
void sub_8171F44(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0xB4;
    (*(s32 *)((s8 *)(arg0) + (0x70))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171F84.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_8171F84(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD2D8;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171F98.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171FC0.s\"");
#else
s32 process_remove();                           /* extern */

void sub_8171FC0(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDD290;
    process_remove();
}
#endif

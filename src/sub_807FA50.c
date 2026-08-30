#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FA50 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FA50.s\"");
#else
void sub_807FA50(void) {
    void *temp_r0_11;
    void *temp_r3_7;

    temp_r3_7 = *(void **)0x03000FD8;
    temp_r0_11 = (*(void **)((s8 *)(temp_r3_7) + (0x238)));
    (*(void **)((s8 *)(temp_r3_7) + (0x238))) = (void *) (*(void **)((s8 *)(temp_r0_11) + (0)));
    (*(void **)((s8 *)(temp_r0_11) + (0))) = (void *) (*(void **)((s8 *)(temp_r3_7) + (0x23C)));
    (*(void **)((s8 *)(temp_r3_7) + (0x23C))) = temp_r0_11;
    (*(u8 *)((s8 *)(temp_r0_11) + (0xC))) = (u8) (-0x20 & (*(u8 *)((s8 *)(temp_r0_11) + (0xC))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FA7C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

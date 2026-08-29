#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805B9D4 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_805B9D4.s", void sub_805B9D4(void *arg0));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805BA78.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805BDB4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

ASM_FUNC("asm/nonmatching/sub_805BED8.s", void sub_805BED8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805BFF0.s", void sub_805BFF0(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_805C14C.s", void sub_805C14C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805C5F4.s", void sub_805C5F4(void));
ASM_FUNC("asm/nonmatching/sub_805C644.s", void sub_805C644(void));
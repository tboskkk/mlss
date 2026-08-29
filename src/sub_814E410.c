#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814E410 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_814E410.s", void sub_814E410(void *arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_814E4A4.s", void sub_814E4A4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_814E554.s", void sub_814E554(void *arg0, u8 arg1));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814E6D8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

ASM_FUNC("asm/nonmatching/sub_814E820.s", s32 sub_814E820(void *arg0, void *arg1));
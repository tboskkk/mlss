#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E3158 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80E3158.s", void sub_80E3158(void));
ASM_FUNC("asm/nonmatching/sub_80E3214.s", void sub_80E3214(void *arg0));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E38A0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

ASM_FUNC("asm/nonmatching/sub_80E38E8.s", void sub_80E38E8(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4));
ASM_FUNC("asm/nonmatching/sub_80E3C3C.s", void sub_80E3C3C(void));
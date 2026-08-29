#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805C8A4 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_805C8A4.s", void sub_805C8A4(s32 arg0, u16 arg1));
ASM_FUNC("asm/nonmatching/sub_805C908.s", void sub_805C908(s32 arg0, u16 arg1));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C96C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

ASM_FUNC("asm/nonmatching/sub_805C9A4.s", void sub_805C9A4(s32 arg0, s32 arg1, s32 arg2, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_805C9DC.s", s32 sub_805C9DC(void *arg0, u8 arg1, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_805CB54.s", s32 sub_805CB54(void *arg0));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805CC7C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

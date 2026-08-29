#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81233B4 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_81233B4.s", s32 sub_81233B4(void));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812378C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

ASM_FUNC("asm/nonmatching/sub_8123BA8.s", void sub_8123BA8(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_8123DC4.s", u16 sub_8123DC4(u16 arg0, u16 arg1));
ASM_FUNC("asm/nonmatching/sub_812418C.s", u16 sub_812418C(void));
ASM_FUNC("asm/nonmatching/sub_8124270.s", u32 sub_8124270(u16 arg0, u16 arg1));
ASM_FUNC("asm/nonmatching/sub_812454C.s", int sub_812454C(void));
ASM_FUNC("asm/nonmatching/sub_8124740.s", u8 sub_8124740(struct struc_203FFF8*arg0, u8 arg1));
#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813FB44 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_813FB44.s", void sub_813FB44(s32 arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_813FBE8.s", void sub_813FBE8(s32 arg0, void *arg1, s32 arg2));
ASM_FUNC("asm/nonmatching/sub_813FDF4.s", void sub_813FDF4(void *arg0, void *arg1, s32 **arg2));
ASM_FUNC("asm/nonmatching/sub_813FEF4.s", void sub_813FEF4(void *arg0, void *arg1, void *arg2));
ASM_FUNC("asm/nonmatching/sub_8140108.s", void sub_8140108(void *arg0, void *arg1, s32 **arg2));
ASM_FUNC("asm/nonmatching/sub_8140200.s", void sub_8140200(void *arg0, void *arg1, void *arg2));
ASM_FUNC("asm/nonmatching/sub_81403BC.s", void sub_81403BC(s32 arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_81404F0.s", void sub_81404F0(s32 arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_81407A0.s", void sub_81407A0(s32 arg0, void *arg1, s32 **arg2));
ASM_FUNC("asm/nonmatching/sub_8140840.s", void sub_8140840());
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8140E58.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

ASM_FUNC("asm/nonmatching/sub_8140FAC.s", void sub_8140FAC(void *arg0, void *arg1, s32 *arg2));
ASM_FUNC("asm/nonmatching/sub_81410D0.s", void sub_81410D0(s32 arg0, void *arg1));
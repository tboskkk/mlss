#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FFD20 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80FFD20.s", void sub_80FFD20(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_80FFEFC.s", void sub_80FFEFC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8100790.s", void sub_8100790(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8100BC4.s", s32 sub_8100BC4(void));
ASM_FUNC("asm/nonmatching/sub_8100D18.s", void sub_8100D18(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8100E5C.s", void sub_8100E5C(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_810118C.s", void sub_810118C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_810124C.s", void sub_810124C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_810136C.s", void sub_810136C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8101470.s", void sub_8101470(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8101520.s", void sub_8101520(s32 arg0));
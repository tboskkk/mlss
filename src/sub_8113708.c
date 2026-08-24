#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8113708 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8113708.s", void sub_8113708(void *arg0, u16 arg1));
ASM_FUNC("asm/nonmatching/sub_81138B0.s", void sub_81138B0(void *arg0, u16 arg1));
ASM_FUNC("asm/nonmatching/sub_8113A54.s", void sub_8113A54(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8113AE0.s", void sub_8113AE0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8113BA4.s", void sub_8113BA4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8113CD4.s", s32 sub_8113CD4(void *arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_8113DC0.s", void sub_8113DC0(void *arg0));
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_807C298(s32);                           /* extern */
s32 sub_8087CE4();                                  /* extern */

void sub_8113E20(s32 arg0) {
    if ((sub_8087CE4() << 0x18) == 0) {
        sub_807C298(arg0);
        stop_sfx_80195A8(0x10C);
    }
}

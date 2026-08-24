#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8111214 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_807C298(void *);                        /* extern */
s32 sub_8087CE4();                                  /* extern */

void sub_8111214(void *arg0) {
    if ((sub_8087CE4() << 0x18) == 0) {
        sub_807C298((*(void **)((s8 *)(arg0) + (0x30))));
        sub_807C298(arg0);
    }
}

ASM_FUNC("asm/nonmatching/sub_8111234.s", void sub_8111234(void *arg0));
ASM_FUNC("asm/nonmatching/sub_81112C4.s", void sub_81112C4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8111344.s", void sub_8111344(void *arg0));
ASM_FUNC("asm/nonmatching/sub_811152C.s", void sub_811152C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_811160C.s", void sub_811160C(void *arg0));
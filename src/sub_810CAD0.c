#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810CAD0 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_810C05C;

void sub_810CAD0(void) {
    void *temp_r1_12;
    void *temp_r1_22;

    temp_r1_12 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x27C)));
    if (temp_r1_12 != NULL) {
        (*(s32 **)((s8 *)(temp_r1_12) + (4))) = &sub_810C05C;
    }
    temp_r1_22 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x280)));
    if (temp_r1_22 != NULL) {
        (*(s32 **)((s8 *)(temp_r1_22) + (4))) = &sub_810C05C;
    }
}

ASM_FUNC("asm/nonmatching/sub_810CB04.s", void sub_810CB04(s32 arg0, s16 arg1));
ASM_FUNC("asm/nonmatching/sub_810CB84.s", void sub_810CB84(void));
s32 sub_810B908(s32);                           /* extern */

void sub_810CBC8(void) {
    sub_810B908(0);
    sub_810B908(1);
}

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81232E0 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_81232E0.s", s32 sub_81232E0(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_8123308.s", s32 sub_8123308(u16 arg0));
void sub_8123340(void) {
    void *temp_r0_8;

    temp_r0_8 = *(void **)0x03000FF4;
    if (temp_r0_8 != NULL) {
        free_heap_8018D9C(temp_r0_8);
    }
    *(void **)0x03000FF4 = NULL;
}

ASM_FUNC("asm/nonmatching/sub_812335C.s", void sub_812335C(void));
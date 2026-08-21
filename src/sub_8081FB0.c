#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8081FB0 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80813A0();                              /* extern */
s32 sub_8082A28();                              /* extern */
s32 sub_8082B00();                                  /* extern */
extern s32 sub_8081288;

void sub_8081FB0(void *arg0) {
    if ((sub_8082B00() << 0x18) == 0) {
        sub_8082A28();
        sub_80813A0();
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8081288;
    }
}

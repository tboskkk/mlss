#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819AF88 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_819AC84(s32);                           /* extern */
s32 sub_819AF18();                              /* extern */

void sub_819AF88(void) {
    sub_819AC84(0);
    sub_819AC84(1);
    sub_819AF18();
    sub_819AC84(3);
}

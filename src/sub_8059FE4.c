#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8059FE4 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8058278(s32);                           /* extern */
s32 sub_80582DC(s32);                           /* extern */
s32 sub_80584F8(s32);                           /* extern */
s32 sub_80587BC(s32, s32);                      /* extern */
s32 sub_8059F24();                              /* extern */

void sub_8059FE4(s32 arg0) {
    sub_8059F24();
    sub_80582DC(arg0);
    sub_80587BC(arg0, 0);
    sub_8058278(arg0);
    sub_80584F8(arg0);
}

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816D814 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D814.s\"");
#else
void sub_816D814(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x50))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D898.s\"");
#else
void sub_816D898(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x3C;
    (*(s32 *)((s8 *)(arg0) + (0x1C))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D96C.s\"");
#else
s32 process_remove();                           /* extern */

void sub_816D96C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDD220;
    process_remove();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D9A4.s\"");
#else
#error "TODO: write sub_816D9A4 to match asm/nonmatching/sub_816D9A4.s, then delete this #error"
#endif

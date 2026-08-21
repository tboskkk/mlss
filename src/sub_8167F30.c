#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8167F30 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8167F30(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0x6C))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x6E))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167F40.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_8167F40(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD178;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167FF8.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_8167FF8(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD188;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168294.s\"");
#else
s32 process_remove();                           /* extern */

void sub_8168294(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDD140;
    process_remove();
}
#endif

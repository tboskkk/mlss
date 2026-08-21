#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8074688 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_80728D0;

void sub_8074688(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x10;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80728D0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80746A8.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8072764;

void sub_80746A8(void *arg0) {
    sub_8082E1C(arg0, 2, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8072764;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80746C4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_80746C4(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

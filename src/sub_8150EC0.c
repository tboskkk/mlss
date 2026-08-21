#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8150EC0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150EC0.s\"");
#else
s32 sub_8150C68(void *, void *);                /* extern */
s32 sub_8150DC8(void *, s32);                   /* extern */
s32 sub_8150E38(void *);                        /* extern */

void sub_8150EC0(void *arg0, void *arg1, void *arg2, s32 arg3) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = arg3;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = (s32) (*(s32 *)((s8 *)(arg2) + (0)));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (*(s32 *)((s8 *)(arg2) + (4)));
    (*(s32 *)((s8 *)(arg0) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0))) - (*(s32 *)((s8 *)(arg0) + (0xC))));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg1) + (4))) - (*(s32 *)((s8 *)(arg0) + (0x10))));
    sub_8150C68(arg0, arg2);
    sub_8150E38(arg0);
    sub_8150DC8(arg0, 1);
}
#endif

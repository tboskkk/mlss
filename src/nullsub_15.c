#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_15 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_15(void) {
}

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806E98C;

void sub_806E794(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x6C);
        sub_8082E1C(arg0, 5, 0, 0);
        sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 5, 0, 0);
        arg0->handler = &sub_806E98C;
    }
}

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806A22C needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_806A2FC;

void sub_806A22C(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xC;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806A2FC;
    }
}

s32 stop_sfx_80195A8(s32);                      /* extern */
u32 sub_8199F30();                                  /* extern */
extern s32 sub_806A348;

void sub_806A24C(void *arg0) {
    u32 temp_r4_20;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x81);
        temp_r4_20 = (*(s32 *)((s8 *)(arg0) + (0xA4))) - (*(s32 *)((s8 *)(arg0) + (0xA0)));
        (*(s32 *)((s8 *)(arg0) + (0xA8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0xA0))) + (sub_8199F30() % temp_r4_20));
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806A348;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A290.s\"");
#else
#error "TODO: write sub_806A290 to match asm/nonmatching/sub_806A290.s, then delete this #error"
#endif

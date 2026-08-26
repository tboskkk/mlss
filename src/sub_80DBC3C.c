#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DBC3C needs.

asm_unified(".include \"asm/macros.inc\"");



s32 stop_sfx_80195A8();
s32 sub_8087540();

s32 sub_8082E1C();

s32 sub_8086C64(void *);                            /* extern */
void sub_80DBC60(struct Entity *arg0);
s32 sub_80DBC3C(struct Entity *arg0) {
    s32 temp_r0_11;

    (*(s32 **)((s8 *)(arg0) + (0x54))) = (s32 *) arg0->handler;
    temp_r0_11 = sub_8086C64(arg0);
    if (temp_r0_11 == 0) {
        arg0->handler = (s32 *) &sub_80DBC60;
    }
    return temp_r0_11;
}

void sub_80DBC60(struct Entity *arg0) {
    if ((*(u8 *)((s8 *)(arg0->unk08) + (0x21))) == 0) {
        sub_8082E1C(arg0, 2, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x54)));
    }
}

void sub_80DBC84(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x11A);
        sub_8087540(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBCA4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DB8D8;

void sub_80DBCA4(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 3, 0, 0);
        (*(s16 *)((s8 *)((arg0 + 0xA0)) + (0xC))) = (s16) (*(s32 *)((s8 *)(arg0) + (0xA0)));
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DB8D8;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBD18.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8087540(void *);                        /* extern */

void sub_80DBD18(void *arg0) {
    u8 temp_r2_16;
    void *temp_r3_15;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x11A);
        temp_r3_15 = (*(void **)((s8 *)(arg0) + (8)));
        temp_r2_16 = (*(u8 *)((s8 *)(temp_r3_15) + (0x11)));
        (*(u8 *)((s8 *)(temp_r3_15) + (0x11))) = (u8) ((-0x41 & temp_r2_16) | ((((u32) (temp_r2_16 << 0x19) >> 0x1F) ^ 1) << 6));
        sub_8087540(arg0);
    }
}
#endif

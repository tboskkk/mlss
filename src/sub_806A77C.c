#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806A77C needs.

asm_unified(".include \"asm/macros.inc\"");




void sub_806A908(void *arg0);

s32 stop_sfx_80195A8();
extern s32 sub_806A3F8;
int sub_8082B00();
s32 sub_8082E1C();
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A77C.s\"");
#else
extern s32 sub_808750C;

void sub_806A77C(void *arg0) {
    s32 temp_r0_10;

    temp_r0_10 = (*(s32 *)((s8 *)(arg0) + (0x18))) + 0xFFFFFE00;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_10;
    if (temp_r0_10 <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A7A0.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_806A7A0(void *arg0) {
    s32 temp_r5_9;

    temp_r5_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r5_9 == 0) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = temp_r5_9;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A7CC.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8086C64(s32, s32, s32);                 /* extern */

void sub_806A7CC(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x81);
    sub_8086C64(arg0, arg1, arg2);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A7EC.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_810DD7C(void *, s32, s32);              /* extern */
extern s32 sub_808750C;

s32 sub_806A7EC(void *arg0, s32 arg1) {
    stop_sfx_80195A8(0x81);
    sub_810DD7C(arg0, arg1, 0xFF);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    return 0;
}
#endif

extern s32 sub_806A8B0;

void sub_806A814(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x81);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xFF;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806A8B0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A83C.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
u32 sub_8199F30();                                  /* extern */
extern s32 sub_806A47C;

void sub_806A83C(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x81);
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = (s16) ((*(s32 *)((s8 *)(arg0) + (0x9C))) + (sub_8199F30() % (u32) (*(u32 *)((s8 *)((arg0 + 0x9C)) + (4)))));
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806A47C;
    }
}
#endif

void sub_806A894(void *arg0) {
    sub_8082E1C(arg0, 2, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_806A908;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A8B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_806A8E0(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806A3F8;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A908.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_806A97C;

void sub_806A908(void *arg0) {
    void *temp_r1_20;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 3, 0, 0);
        temp_r1_20 = arg0 + 0x84;
        (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x38)));
        (*(s32 *)((s8 *)(temp_r1_20) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x3C)));
        (*(s32 *)((s8 *)((temp_r1_20 + 4)) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x40))) + 0x8000);
        (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
        (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x180;
        (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
        sub_8085B38(arg0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806A97C;
        play_sfx_80195B4(0x112, -1);
    }
}
#endif

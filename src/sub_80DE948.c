#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DE948 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808750C;

void sub_80DE948(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE960.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8086C64(s32, s32, s32);                 /* extern */

void sub_80DE960(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x11A);
    sub_8086C64(arg0, arg1, arg2);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE980.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_810DD7C(s32, s32, s32);                 /* extern */

void sub_80DE980(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x11A);
    sub_810DD7C(arg0, arg1, arg2);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE9A0.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DE780;

void sub_80DE9A0(void *arg0) {
    s32 var_r2_22;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x11C);
        var_r2_22 = 0xF;
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) != -1) {
            var_r2_22 = 0x11;
        }
        sub_8082E1C(arg0, var_r2_22, 0, 0);
        (*(s16 *)((s8 *)((arg0 + 0x9C)) + (0x10))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x9C)));
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DE780;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE9F0.s\"");
#else
s32 sub_80F7068(s32, s32);                      /* extern */
extern s32 sub_80DEC60;

s32 sub_80DE9F0(void *arg0) {
    u8 temp_r1_13;

    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DEC60;
    temp_r1_13 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113)));
    if (0x80 & temp_r1_13) {
        sub_80F7068(0x7F & temp_r1_13, 1);
        (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113))) = 0U;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEA2C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087540(void *);                        /* extern */

void sub_80DEA98(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        sub_8087540(arg0);
    }
}

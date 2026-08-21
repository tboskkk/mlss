#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808C064 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808C348;

s32 sub_808C064(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808C348;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C070.s\"");
#else
s32 sub_8087540(void *);                        /* extern */

void sub_808C070(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8087540(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C098.s\"");
#else
s32 sub_8087540(void *);                        /* extern */

void sub_808C098(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8087540(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C0C0.s\"");
#else
s32 sub_8087540(void *);                        /* extern */

void sub_808C0C0(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8087540(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C0E8.s\"");
#else
s32 sub_8087540(void *);                        /* extern */

void sub_808C0E8(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8087540(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C110.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */

void sub_808C110(void *arg0) {
    s32 var_r1_17;
    s32 var_r2_23;
    s32 var_r3_29;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        play_sfx_80195B4(0xAD, -1);
        var_r1_17 = (*(s32 *)((s8 *)(arg0) + (0x10)));
        if (var_r1_17 < 0) {
            var_r1_17 += 0xFF;
        }
        var_r2_23 = (*(s32 *)((s8 *)(arg0) + (0x14)));
        if (var_r2_23 < 0) {
            var_r2_23 += 0xFF;
        }
        var_r3_29 = (*(s32 *)((s8 *)(arg0) + (0x18)));
        if (var_r3_29 < 0) {
            var_r3_29 += 0xFF;
        }
        sub_80DF024(0xC4B, var_r1_17 >> 8, var_r2_23 >> 8, var_r3_29 >> 8, arg0);
        sub_807C298(arg0);
    }
}
#endif

s32 sub_8087540(void *);                        /* extern */

void sub_808C174(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8087540(arg0);
    }
}

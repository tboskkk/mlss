#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8070AE8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070AE8.s\"");
#else
extern s32 sub_8070E4C;

s32 sub_8070AE8(void *arg0) {
    s32 *var_r1_18;
    s32 var_r0_19;

    if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
        var_r1_18 = arg0 + 0xA0;
        var_r0_19 = 0;
    } else {
        var_r1_18 = arg0 + 0xA0;
        var_r0_19 = 1;
    }
    *var_r1_18 = var_r0_19;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8070E4C;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070B70.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_8070EDC;

void sub_8070B70(void *arg0) {
    s32 var_r1_20;
    s32 var_r2_26;
    s32 var_r3_32;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0x2B, 0, 0);
        var_r1_20 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_20 < 0) {
            var_r1_20 += 0xFF;
        }
        var_r2_26 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_26 < 0) {
            var_r2_26 += 0xFF;
        }
        var_r3_32 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_32 < 0) {
            var_r3_32 += 0xFF;
        }
        sub_80DF024(0x201C, var_r1_20 >> 8, var_r2_26 >> 8, var_r3_32 >> 8, arg0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8070EDC;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070BC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8070F64;

void sub_8070C2C(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x11C);
        sub_8082E1C(arg0, 0x1C, 0, 0);
        arg0->handler = &sub_8070F64;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8070C5C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

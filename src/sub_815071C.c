#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815071C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815071C.s\"");
#else
extern s32 sub_81507A8;

void sub_815071C(s32 **arg2) {
    *arg2 = &sub_81507A8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150734.s\"");
#else
s32 sub_80FBD44(s32, u8 *);                     /* extern */
s32 sub_814E820(void *, s32);                       /* extern */
extern s32 sub_814E060;
extern s32 sub_81505A8;

void sub_8150734(s32 arg0, void *arg1, s32 **arg2) {
    u8 sp0;
    s32 *var_r0_17;
    u8 var_r2_36;

    if ((*(s32 *)((s8 *)(arg1) + (0x344))) == 0) {
        var_r0_17 = &sub_814E060;
        goto block_7;
    }
    sub_80FBD44(arg0, &sp0);
    if ((sub_814E820(arg1, (*(s32 *)((s8 *)(((sp0 * 4) + arg0)) + (0x28)))) << 0x18) == 0) {
        var_r2_36 = 0;
        if (sp0 == 0) {
            var_r2_36 = 1;
        }
        sp0 = var_r2_36;
        if ((sub_814E820(arg1, (*(s32 *)((s8 *)(((sp0 * 4) + arg0)) + (0x28)))) << 0x18) != 0) {
            goto block_6;
        }
    } else {
block_6:
        var_r0_17 = &sub_81505A8;
block_7:
        *arg2 = var_r0_17;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81507A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DAAA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAAA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAAC8.s\"");
#else
s32 sub_80873B8(void *, s32, s32);              /* extern */
extern s32 sub_80DABD0;

void sub_80DAAC8(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x30;
    sub_80873B8(arg0, 2, 0x1B);
    (*(s32 **)((s8 *)(arg0) + (0x50))) = &sub_80DABD0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAAEC.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_807FC08(s32 *, s32 *, s32 *, s32);      /* extern */

void sub_80DAAEC(void *arg0) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 var_r0_25;
    s32 var_r0_32;
    s32 var_r0_39;

    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x38))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x40))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(u16 *)((s8 *)(arg0) + (0xB2))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xB2))) - 0x5E);
    var_r0_25 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r0_25 < 0) {
        var_r0_25 += 0xFF;
    }
    sp0 = var_r0_25 >> 8;
    var_r0_32 = (*(s32 *)((s8 *)(arg0) + (0x14)));
    if (var_r0_32 < 0) {
        var_r0_32 += 0xFF;
    }
    sp4 = var_r0_32 >> 8;
    var_r0_39 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r0_39 < 0) {
        var_r0_39 += 0xFF;
    }
    sp8 = var_r0_39 >> 8;
    sub_807FC08(&sp0, &sp4, &sp8, 0);
    if ((sp0 < -0x10) || (sp4 > 0x110)) {
        sub_807C298(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAB64.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163394 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163394.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81633C0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163474.s\"");
#else
s32 sub_816391C(void *, s32, s32);              /* extern */

void sub_8163474(void *arg0) {
    void *temp_r0_18;
    void *temp_r0_27;
    void *temp_r0_35;
    void *temp_r0_43;

    sub_816391C((*(void **)((s8 *)(arg0) + (0))), 6, 0);
    temp_r0_18 = (*(void **)((s8 *)(arg0) + (0)));
    (*(s32 *)((s8 *)(temp_r0_18) + (0x44))) = 0x08212ABA;
    (*(s16 *)((s8 *)(temp_r0_18) + (0x48))) = 0;
    sub_816391C((*(void **)((s8 *)(arg0) + (4))), 6, 8);
    temp_r0_27 = (*(void **)((s8 *)(arg0) + (4)));
    (*(s32 *)((s8 *)(temp_r0_27) + (0x44))) = 0x08212ABA;
    (*(s16 *)((s8 *)(temp_r0_27) + (0x48))) = 0;
    sub_816391C((*(void **)((s8 *)(arg0) + (8))), 6, 0x10);
    temp_r0_35 = (*(void **)((s8 *)(arg0) + (8)));
    (*(s32 *)((s8 *)(temp_r0_35) + (0x44))) = 0x08212ABA;
    (*(s16 *)((s8 *)(temp_r0_35) + (0x48))) = 0;
    sub_816391C((*(void **)((s8 *)(arg0) + (0xC))), 6, 0x18);
    temp_r0_43 = (*(void **)((s8 *)(arg0) + (0xC)));
    (*(s32 *)((s8 *)(temp_r0_43) + (0x44))) = 0x08212ABA;
    (*(s16 *)((s8 *)(temp_r0_43) + (0x48))) = 0;
}
#endif

s32 sub_8161C9C(s32, s32, s32);                 /* extern */
s32 sub_8161E38(s32);                           /* extern */

void sub_81634DC(void *arg0) {
    sub_8161E38((*(s32 *)((s8 *)(arg0) + (0))));
    sub_8161C9C((*(s32 *)((s8 *)(arg0) + (0))), 0, 0);
    sub_8161E38((*(s32 *)((s8 *)(arg0) + (4))));
    sub_8161C9C((*(s32 *)((s8 *)(arg0) + (4))), 0, 0);
    sub_8161E38((*(s32 *)((s8 *)(arg0) + (8))));
    sub_8161C9C((*(s32 *)((s8 *)(arg0) + (8))), 0, 0);
    sub_8161E38((*(s32 *)((s8 *)(arg0) + (0xC))));
    sub_8161C9C((*(s32 *)((s8 *)(arg0) + (0xC))), 0, 0);
}

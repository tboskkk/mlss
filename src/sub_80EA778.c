#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA778 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA778.s\"");
#else
void sub_80EA778(s32 arg0, void *arg1) {
    s32 temp_r0_10;

    temp_r0_10 = (*(s32 *)((s8 *)(arg1) + (0x9C))) - 1;
    (*(s32 *)((s8 *)(arg1) + (0x9C))) = temp_r0_10;
    if (temp_r0_10 == 0) {
        (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (0xFFEF & (*(u16 *)((s8 *)(arg1) + (0xA0))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_test_condition.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA854.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA88C.s\"");
#else
s32 sub_80EA88C(s32 arg0, s32 arg1, void *arg2) {
    void *temp_r2_7;

    temp_r2_7 = arg2 + 4;
    if ((*(s32 *)((s8 *)(arg2) + (0))) == 0) {
        sub_801ABE8((*(u16 *)((s8 *)(arg2) + (4))), (*(u16 *)((s8 *)(temp_r2_7) + (4))), (*(s32 *)((s8 *)(temp_r2_7) + (8))));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA8A4.s\"");
#else
s32 reset_game_80189C4();                       /* extern */
s32 sub_801AD3C();                              /* extern */
s32 sub_801AD80();                              /* extern */
s32 sub_801ADC0();                              /* extern */

s32 sub_80EA8A4(s32 arg0, s32 arg1, s32 *arg2) {
    s32 temp_r2_7;

    temp_r2_7 = *arg2;
    switch (temp_r2_7) {                            /* irregular */
    case 0:
        reset_game_80189C4();
        break;
    case 1:
        sub_801ADC0();
        break;
    case 2:
        sub_801AD80();
        break;
    case 3:
        sub_801AD3C();
        break;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA8DC.s\"");
#else
s32 script_test_condition(s32, u8, s32, s32);   /* extern */

s32 sub_80EA8DC(s32 arg0, void *arg1, void *arg2) {
    if ((script_test_condition(arg0, (*(u8 *)((s8 *)(arg2) + (0))), (*(s32 *)((s8 *)(arg2) + (4))), (*(s32 *)((s8 *)(arg1) + (0x98)))) << 0x18) != 0) {
        (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg2) + (8)));
    }
    return 1;
}
#endif

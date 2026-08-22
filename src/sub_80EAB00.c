#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EAB00 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAB00.s\"");
#else
s32 sub_80EAB00(u8 *arg2) {
    *(u8 *)0x030003C5 = (-0xD & *(u8 *)0x030003C5) | ((*arg2 & 3) * 4);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAB20.s\"");
#else
s32 sub_80EAB20(s32 arg0, s32 arg1, void *arg2) {
    s32 temp_r0_7;
    u16 *var_r0_21;
    u16 var_r1_24;

    temp_r0_7 = (*(s32 *)((s8 *)(arg2) + (0)));
    switch (temp_r0_7) {                            /* irregular */
    case 0:
        var_r0_21 = (u16 *)0x030003C8;
        var_r1_24 = (*(s32 *)((s8 *)(arg2) + (4))) | *(u16 *)0x030003C8;
block_9:
        *var_r0_21 = var_r1_24;
        break;
    case 1:
        var_r0_21 = (u16 *)0x030003C6;
        var_r1_24 = (*(s32 *)((s8 *)(arg2) + (4))) | *(u16 *)0x030003C6;
        goto block_9;
    case 2:
        var_r0_21 = (u16 *)0x030003C6;
        var_r1_24 = *(u16 *)0x030003C6 & ~(*(s32 *)((s8 *)(arg2) + (4)));
        goto block_9;
    }
    return 1;
}
#endif

u8 script_test_condition(s32, u8, s32, s32);    /* extern */

s32 script_cmd_conditional_jump(s32 arg0, s32 *arg1, void *arg2) {
    if (script_test_condition(arg0, (*(u8 *)((s8 *)(arg2) + (0))), (*(s32 *)((s8 *)(arg2) + (4))), (*(s32 *)((s8 *)(arg2) + (8)))) == (*(s32 *)((s8 *)(arg2) + (0xC)))) {
        *arg1 = (*(s32 *)((s8 *)(arg2) + (0x10)));
    }
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAB98.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAC78.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EACDC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

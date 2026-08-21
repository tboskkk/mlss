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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_conditional_jump.s\"");
#else
#error "TODO: write script_cmd_conditional_jump to match asm/nonmatching/script_cmd_conditional_jump.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAB98.s\"");
#else
#error "TODO: write sub_80EAB98 to match asm/nonmatching/sub_80EAB98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAC78.s\"");
#else
#error "TODO: write sub_80EAC78 to match asm/nonmatching/sub_80EAC78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EACDC.s\"");
#else
#error "TODO: write sub_80EACDC to match asm/nonmatching/sub_80EACDC.s, then delete this #error"
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803C424 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C424.s\"");
#else
void sub_803C424(void *arg0) {
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0xB2;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0xB2;
}
#endif

s32 sub_803C440(void *arg0) {
    s32 var_r1_7;
    s8 temp_r0_17;

    var_r1_7 = 0;
    temp_r0_17 = (s8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x344)));
    if ((temp_r0_17 == 0x1C) || (temp_r0_17 == 0x15)) {
        var_r1_7 = 1;
    }
    return var_r1_7;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C468.s\"");
#else
s32 sub_803C468(void *arg0) {
    if ((u32) (u16) ((*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) - 0x2A) > 1U) {
        (*(u16 *)((s8 *)(arg0) + (0x20A))) = (u16) (0xFFFFFE7F & (*(u16 *)((s8 *)(arg0) + (0x20A))));
        return 0;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C4A0.s\"");
#else
s32 sub_803C4A0(void *arg0) {
    if ((u32) (u16) ((*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) - 0x27) > 1U) {
        (*(u16 *)((s8 *)(arg0) + (0x20A))) = (u16) (0xFFFFFE7F & (*(u16 *)((s8 *)(arg0) + (0x20A))));
        return 0;
    }
    return 1;
}
#endif

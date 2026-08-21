#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802973C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802973C.s\"");
#else
s32 sub_80262CC(s32, s32, s32, s32, s32, s32); /* extern */

void sub_802973C(s32 arg0, void *arg1, s32 arg2, s8 arg3, s32 arg4, u8 arg5) {
    s8 sp8;
    u8 spC;

    sp8 = arg3;
    spC = arg5;
    sub_80262CC(arg0, (*(s32 *)((s8 *)(arg1) + (0xC))), (*(s32 *)((s8 *)(arg1) + (0x10))), (*(s32 *)((s8 *)(arg1) + (0x14))), (*(s32 *)((s8 *)(arg1) + (0x18))) + ((arg4 << 8) + 0xF00), arg2);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029788.s\"");
#else
s32 sub_805C6B8(s32);                           /* extern */

void sub_8029788(void *arg0) {
    if (((s32) ((*(u16 *)((s8 *)(arg0) + (0xFC))) << 0x15) >> 0x1C) == 0) {
        sub_805C6B8((*(s32 *)((s8 *)(arg0) + (0x304))));
    }
    (*(u16 *)((s8 *)(arg0) + (0xFC))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xFC))) | 0x780);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80297B8.s\"");
#else
s32 sub_805BFF0(s32);                           /* extern */

void sub_80297B8(void *arg0) {
    if (((s32) ((*(u16 *)((s8 *)(arg0) + (0xFC))) << 0x15) >> 0x1C) == 0) {
        sub_805BFF0((*(s32 *)((s8 *)(arg0) + (0x304))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80297D8.s\"");
#else
s32 sub_805BED8(s32);                           /* extern */

void sub_80297D8(void *arg0, s32 arg1) {
    if (arg1 == 0) {
        sub_805BED8((*(s32 *)((s8 *)(arg0) + (0x304))));
        (*(u16 *)((s8 *)(arg0) + (0xFC))) = (u16) (0xFFFFF87F & (*(u16 *)((s8 *)(arg0) + (0xFC))));
    }
}
#endif

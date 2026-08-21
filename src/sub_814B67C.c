#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814B67C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B67C.s\"");
#else
s32 sub_804761C(void *, s32);                   /* extern */
extern s32 sub_813B1E8;

void sub_814B67C(s32 arg0, void *arg1, void *arg2) {
    (*(s16 *)((s8 *)(arg1) + (0x1D2))) = (s16) (*(u8 *)((s8 *)(((*(u16 *)((s8 *)(arg1) + (0x1D0))) + (*(s32 *)((s8 *)(arg1) + (0x1B0))))) + (0x50)));
    sub_804761C(arg1, 0);
    (*(u8 *)((s8 *)(arg1) + (0x20E))) = (u8) (-5 & (*(u8 *)((s8 *)(arg1) + (0x20E))));
    (*(s32 **)((s8 *)(arg2) + (0))) = &sub_813B1E8;
    (*(s32 *)((s8 *)(arg2) + (0xC))) = (s32) (*(s32 *)((s8 *)(arg2) + (4)));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B6CC.s\"");
#else
extern s32 sub_814A428;

void sub_814B6CC(s32 arg0, void *arg1, s32 **arg2) {
    (*(s32 *)((s8 *)(arg1) + (0x2C4))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x14))) + (*(s32 *)((s8 *)(arg1) + (0x18))));
    (*(s32 *)((s8 *)(arg1) + (0x2D4))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x1E4))) + (*(s32 *)((s8 *)(arg1) + (0x1E8))));
    (*(u16 *)((s8 *)(arg1) + (0x2DC))) = (u16) (*(u16 *)((s8 *)((((*(u16 *)((s8 *)(arg1) + (0x1D0))) * 2) + (*(s32 *)((s8 *)(arg1) + (0x1B0))))) + (0x44)));
    (*(s16 *)((s8 *)(arg1) + (0x1D4))) = 1;
    *arg2 = &sub_814A428;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B730.s\"");
#else
extern s32 sub_814A184;
extern s32 sub_814B7A4;

void sub_814B730(s32 arg0, void *arg1, void *arg2) {
    (*(s32 *)((s8 *)(arg1) + (0x2C4))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x14))) + (*(s32 *)((s8 *)(arg1) + (0x18))));
    (*(s32 *)((s8 *)(arg1) + (0x2D4))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x14))) + (*(s32 *)((s8 *)(arg1) + (0x18))) + 0xFFFFD000);
    (*(u16 *)((s8 *)(arg1) + (0x2DC))) = (u16) (*(u16 *)((s8 *)((((*(u16 *)((s8 *)(arg1) + (0x1D0))) * 2) + (*(s32 *)((s8 *)(arg1) + (0x1B0))))) + (0x44)));
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg1) + (0x214)))) | 4);
    (*(s32 **)((s8 *)(arg2) + (0))) = &sub_814B7A4;
    (*(s32 **)((s8 *)(arg2) + (4))) = &sub_814A184;
}
#endif

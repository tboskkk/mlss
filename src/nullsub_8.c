#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_8 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_8(void) {
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142A70.s\"");
#else
s32 sub_801E68C(struct Sprite *);               /* extern */
s32 sub_804761C(void *, s32);                   /* extern */
s32 sub_8139AA0(void *);                        /* extern */
extern s32 sub_813B380;
extern s32 sub_813FBE8;

void sub_8142A70(s32 arg0, void *arg1) {
    sub_8139AA0(arg1);
    (*(u8 *)((s8 *)(arg1) + (0x20D))) = (u8) (-5 & (*(u8 *)((s8 *)(arg1) + (0x20D))));
    (*(u8 *)((s8 *)(arg1) + (0x210))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x210))) | 0x10);
    (*(s16 *)((s8 *)(arg1) + (0x1D4))) = 0;
    sub_804761C(arg1, 1);
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg1) + (0x214)))) | 1);
    sub_801E150((*(struct Sprite **)((s8 *)(arg1) + (0x294))), 3, -1, 0, 0);
    sub_801E68C((*(struct Sprite **)((s8 *)(arg1) + (0x294))));
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_813FBE8;
}
#endif

s32 sub_8139AA0(void *);                        /* extern */
extern s32 sub_813B380;
extern s32 sub_813FDF4;

void sub_8142B04(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    sub_8139AA0(arg1);
    (*(s16 *)((s8 *)(arg1) + (0x1D4))) = 0;
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_813FDF4;
}

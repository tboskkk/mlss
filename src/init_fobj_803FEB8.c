#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// init_fobj_803FEB8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_fobj_803FEB8.s\"");
#else
s32 init_fobj_with_data_80FB128(u16, u8, void *); /* extern */
s32 sub_8047EFC(void *, s32, s32, s32, s32);    /* extern */

void *init_fobj_803FEB8(void *arg0, u16 arg1, u8 arg2) {
    (*(s32 *)((s8 *)(arg0) + (0x338))) = 0x08CDBDE8;
    (*(s8 *)((s8 *)(arg0) + (1))) = 0xFF;
    (*(s8 *)((s8 *)(arg0) + (0x29))) = -1;
    (*(u8 *)((s8 *)(arg0) + (0x20C))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20C))) | 1);
    (*(u8 *)((s8 *)(arg0) + (0x20E))) = (u8) ((-0x39 & (*(u8 *)((s8 *)(arg0) + (0x20E)))) | 8);
    (*(u8 *)((s8 *)(arg0) + (0x20F))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20F))) | 2);
    (*(u8 *)((s8 *)(arg0) + (0x210))) = (u8) ((-2 & (*(u8 *)((s8 *)(arg0) + (0x210)))) | 2 | 4 | 8 | 0x40);
    (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) (-8 & (*(u8 *)((s8 *)(arg0) + (0x2B5))));
    (*(u8 *)((s8 *)(arg0) + (0x2B7))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x2B7))) | 0xF8);
    (*(u8 *)((s8 *)(arg0) + (0x2B8))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x2B8))) | 7);
    (*(u8 *)((s8 *)(arg0) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x214)))) | 3);
    (*(u8 *)((s8 *)(arg0) + (0x214))) = (s32) (((s32) (*(u8 *)((s8 *)(arg0) + (0x214))) & 0xFFFE1FFF) | 0x1C000);
    (*(u8 *)((s8 *)(arg0) + (0x216))) = (u8) (((*(u8 *)((s8 *)(arg0) + (0x216))) | 2) & ~0xC);
    (*(s32 *)((s8 *)(arg0) + (0x230))) = -1;
    (*(s32 *)((s8 *)(arg0) + (0x234))) = -1;
    (*(s8 *)((s8 *)(arg0) + (0x238))) = -1;
    (*(s8 *)((s8 *)(arg0) + (0x239))) = 0x10;
    (*(s8 *)((s8 *)(arg0) + (0x23D))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x26C))) = 0xFFFF;
    (*(s8 *)((s8 *)(arg0) + (0x26E))) = -1;
    (*(s16 *)((s8 *)(arg0) + (0x268))) = -1;
    sub_8047EFC(arg0, 0x200, 0x200, 0x52C, 0x75);
    if (arg1 != -1U) {
        init_fobj_with_data_80FB128(arg1, arg2, arg0);
    }
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8040020.s\"");
#else
#error "TODO: write sub_8040020 to match asm/nonmatching/sub_8040020.s, then delete this #error"
#endif

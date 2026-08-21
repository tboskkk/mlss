#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8051330 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051330.s\"");
#else
void sub_8051330(void *arg0) {
    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
        (*(s8 *)((s8 *)(arg0) + (0x23B))) = 0;
        (*(u16 *)((s8 *)(arg0) + (0x33E))) = (u16) (0xFFFFFE01 & (*(u16 *)((s8 *)(arg0) + (0x33E))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051368.s\"");
#else
s32 sub_8021ED8(s32);                           /* extern */

void sub_8051368(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x20F))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20F))) | 2);
    sub_8021ED8((*(s32 *)((s8 *)(arg0) + (0x294))));
    (*(s8 *)((s8 *)(arg0) + (0x23D))) = 7;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805139C.s\"");
#else
s32 init_fobj_803FEB8();                        /* extern */

void *sub_805139C(void *arg0) {
    init_fobj_803FEB8();
    (*(s32 *)((s8 *)(arg0) + (0x338))) = 0x08CDC108;
    (*(u8 *)((s8 *)(arg0) + (0x20C))) = (u8) (-0x21 & (*(u8 *)((s8 *)(arg0) + (0x20C))) & ~0x40 & 0x7F);
    (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x20D))) & ~2 & ~8 & ~0x10 & ~0x40);
    (*(u8 *)((s8 *)(arg0) + (0x20C))) = (s32) ((s32) (*(u8 *)((s8 *)(arg0) + (0x20C))) & 0xFFFC7FFF);
    (*(u8 *)((s8 *)(arg0) + (0x20E))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20E))) | 4);
    (*(u8 *)((s8 *)(arg0) + (0x20F))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x20F))));
    (*(s32 *)((s8 *)(arg0) + (0x214))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x214))) & 0xFFFE1FFF);
    return arg0;
}
#endif

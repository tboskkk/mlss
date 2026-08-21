#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8145A58 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145A58.s\"");
#else
s32 sub_81387C8(void *, s32);                   /* extern */
s32 sub_8144560(s32, void *);                   /* extern */
extern s32 sub_8136D00;

void sub_8145A58(s32 arg0, void *arg1) {
    sub_81387C8(arg1, 0xF);
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_8144560;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8136D00;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_8136D00;
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg1) + (0x214)))) | 1);
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198)))(arg0, arg1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145AB0.s\"");
#else
s32 sub_8138944(void *, s32);                   /* extern */
s32 sub_8138FD4(void *, s32);                   /* extern */
s32 sub_8139030(void *, s32);                   /* extern */
s32 sub_814448C(s32, void *);                   /* extern */
extern s32 sub_8139420;

void sub_8145AB0(s32 arg0, void *arg1) {
    sub_8138944(arg1, 0);
    sub_8139030(arg1, 0);
    sub_8138FD4(arg1, 0xB);
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_814448C;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8139420;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_8139420;
    sub_814448C(arg0, arg1);
}
#endif

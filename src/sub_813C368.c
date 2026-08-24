#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813C368 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_81387C8();
s32 sub_8139030();
extern s32 sub_8139420;

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C368.s\"");
#else
void sub_813C368(void *arg1) {
    void *temp_r2_10;

    temp_r2_10 = (*(void **)((s8 *)(arg1) + (0x294)));
    (*(u8 *)((s8 *)(temp_r2_10) + (0x11))) = (u8) ((*(u8 *)((s8 *)(temp_r2_10) + (0x11))) | 0x40);
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg1) + (0x214)))) | 4);
}
#endif

void sub_813BF94(s32 arg0, void *arg1, s32 **arg2);                       /* extern */
extern s32 sub_813C484;
void sub_813C3C8(s32 arg0, void *arg1)
{
  sub_81387C8(arg1, 0);
  sub_8139030(arg1, 0);
  *((s32 **) (((s8 *) arg1) + 0x198)) = &sub_813C484;
  *((s32 **) (((s8 *) arg1) + 0x1A0)) = &sub_8139420;
  *((s32 **) (((s8 *) arg1) + 0x1A4)) = (s32 *) &sub_813BF94;
  *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) (((-8) & (*(((s8 *) arg1) + 0x214))) | 3);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C420.s\"");
#else
s32 sub_81387C8(void *, s32);                   /* extern */
s32 sub_8139030(void *, s32);                   /* extern */
extern s32 sub_8139420;
extern s32 sub_813C498;

void sub_813C420(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    sub_81387C8(arg1, 0);
    sub_8139030(arg1, 0);
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813C498;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8139420;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_8139420;
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg1) + (0x214)))) | 3);
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8114110 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8114558;
void sub_8114110(void *arg0)
{
  void *temp_r2_21;
  int new_var;
  void *temp_r4_9;
  temp_r4_9 = (void *) (*((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x30)))) + 0x30)));
  new_var = -7;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r4_9) + 8)))) + 0x12))))
  {
    sub_8082E1C(temp_r4_9, 6, 0, 0);
    temp_r2_21 = (void *) (*((void **) (((s8 *) temp_r4_9) + 8)));
    *((u8 *) (((s8 *) temp_r2_21) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_21) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8114558;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114150.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811416C.s\"");
#else
s32 sub_807F4FC(void *);                        /* extern */
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
s32 sub_8113EA0(void *arg0, void *arg1);                       /* extern */
s32 sub_8113F30(void *arg0, void *arg1);                       /* extern */
extern s32 sub_81145C8;

void sub_811416C(void *arg0) {
    s32 var_r0_23;
    s32 var_r0_33;
    s32 var_r0_42;
    void *temp_r4_12;
    void *temp_r5_14;

    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_81145C8;
    temp_r4_12 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x30)));
    temp_r5_14 = (*(void **)((s8 *)((*(void **)((s8 *)(temp_r4_12) + (0x2C)))) + (0x28)));
    sub_807F4FC(temp_r4_12);
    (*(s32 **)((s8 *)(temp_r4_12) + (0x58))) = (s32 *) &sub_8113F30;
    (*(s32 **)((s8 *)(temp_r4_12) + (0x60))) = (s32 *) &sub_8113EA0;
    var_r0_23 = (*(s32 *)((s8 *)(temp_r5_14) + (0xD8)));
    if (var_r0_23 < 0) {
        var_r0_23 += 0xFF;
    }
    var_r0_33 = (*(s32 *)((s8 *)(temp_r5_14) + (0xDC)));
    if (var_r0_33 < 0) {
        var_r0_33 += 0xFF;
    }
    var_r0_42 = (*(s32 *)((s8 *)(temp_r5_14) + (0xE0)));
    if (var_r0_42 < 0) {
        var_r0_42 += 0xFF;
    }
    sub_808843C(temp_r4_12, (var_r0_23 >> 8) + 0x1C, (var_r0_33 >> 8) + 1, (var_r0_42 >> 8) + 0x18, 0x100);
    sub_80880C4(temp_r4_12, 0x400);
    play_sfx_80195B4(0xD5, -1);
}
#endif

void sub_81145F8(void *arg0);                       /* extern */

void sub_81141F8(void *arg0) {
    s32 temp_r1_34;
    s32 temp_r1_41;
    u8 temp_r1_25;
    void (*var_r0_48)(void *);
    void *temp_r1_9;
    void *temp_r2_21;
    void *temp_r3_12;

    temp_r1_9 = *(void **)0x03000FD8;
    temp_r3_12 = (void *) ((*(s32 *)((s8 *)(temp_r1_9) + (0x60))) + 8);
    if ((*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r3_12) + (0x28)))) + (0x113))) == 0) {
        temp_r2_21 = (void *) ((*(s32 *)((s8 *)(temp_r1_9) + (0x64))) + 8);
        temp_r1_25 = (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r2_21) + (0x28)))) + (0x113)));
        if (temp_r1_25 == 0) {
            (*(s32 *)((s8 *)(temp_r3_12) + (0x4C))) = (s32) (*(s32 *)((s8 *)(temp_r3_12) + (0x50)));
            (*(s32 *)((s8 *)(temp_r2_21) + (0x4C))) = (s32) (*(s32 *)((s8 *)(temp_r2_21) + (0x50)));
            (*(s32 *)((s8 *)(temp_r3_12) + (0x50))) = (s32) temp_r1_25;
            (*(s32 *)((s8 *)(temp_r2_21) + (0x50))) = (s32) temp_r1_25;
            temp_r1_34 = (*(s32 *)((s8 *)(temp_r3_12) + (0x4C)));
            if (((temp_r1_34 != 0) && (temp_r1_34 != 0x081141F5)) || ((temp_r1_41 = (*(s32 *)((s8 *)(temp_r2_21) + (0x4C))), (temp_r1_41 != 0)) && (temp_r1_41 != 0x081141F5))) {
                var_r0_48 = sub_81141F8;
            } else {
                var_r0_48 = sub_81145F8;
            }
            (*(void (**)(void *))((s8 *)(arg0) + (0x4C))) = var_r0_48;
        }
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811426C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114278.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81142FC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8114110 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114110.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8114558;

void sub_8114110(void *arg0) {
    void *temp_r2_21;
    void *temp_r4_9;

    temp_r4_9 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x30)));
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r4_9) + (8)))) + (0x12)))) {
        sub_8082E1C(temp_r4_9, 6, 0, 0);
        temp_r2_21 = (*(void **)((s8 *)(temp_r4_9) + (8)));
        (*(u8 *)((s8 *)(temp_r2_21) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_21) + (0x12)))) | 2);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8114558;
    }
}
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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81141F8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

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

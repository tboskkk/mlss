#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082158 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8080A40;

void sub_8082158(void *arg0) {
    s32 (*temp_r1_9)(void *);
    void *temp_r4_8;

    temp_r4_8 = (*(void **)((s8 *)(arg0) + (0xC)));
    temp_r1_9 = (*(s32 (**)(void *))((s8 *)(temp_r4_8) + (0x4C)));
    if ((temp_r1_9 == NULL) || (temp_r1_9(temp_r4_8), ((*(s32 (**)(void *))((s8 *)(temp_r4_8) + (0x4C))) == NULL))) {
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8080A40;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082180.s\"");
#else
s32 sub_807FF48(s32 *, s32);                /* extern */
s32 sub_80E3D1C();                              /* extern */
extern s32 sub_808225C;
extern s32 sub_80FC91C;

void sub_8082180(void *arg0) {
    sub_80E3D1C();
    sub_807FF48(&sub_80FC91C, 0);
    (*(s8 *)((s8 *)(*(void **)0x03000FD8) + (0x10))) = 4;
    *(u8 *)0x03000BD4 |= 0x10;
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_808225C;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80821C4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8081F84;

void sub_80821C4(void *arg0) {
    void *temp_r2_24;
    void *temp_r5_8;

    temp_r5_8 = (*(void **)((s8 *)(arg0) + (8)));
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0) {
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 1);
        return;
    }
    sub_8082E1C(temp_r5_8, 0, -1, 0);
    temp_r2_24 = (*(void **)((s8 *)(temp_r5_8) + (8)));
    (*(u8 *)((s8 *)(temp_r2_24) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_24) + (0x12))));
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8081F84;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082204.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1 -- which is how
   853 functions ended up blocked behind 936 placeholders. Nothing is lost
   by leaving it empty: the #ifndef branch above is untouched, so the real
   ROM still gets the verbatim retail bytes, and progress.py still counts
   this function as unmatched because the guard is still here. Write the C
   here, replacing this comment. */
#endif

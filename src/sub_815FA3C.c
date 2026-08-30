#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815FA3C needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_815FA3C(u32* param_1) {
    return *param_1;
}

void sub_815FA40(struct Sprite **arg0) {
    struct Sprite *temp_r0_7;

    temp_r0_7 = *arg0;
    if (temp_r0_7 != NULL) {
        sprite_hide_8021F20(temp_r0_7);
    }
}

void sub_815FA50(struct Sprite **arg0) {
    struct Sprite *temp_r0_7;

    temp_r0_7 = *arg0;
    if (temp_r0_7 != NULL) {
        sprite_show_8020CBC(temp_r0_7);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815FA60.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815FA64.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_815FA70(void **arg0, u16 arg1) {
    s16 temp_r3_17;
    void *temp_r2_10;

    temp_r2_10 = *arg0;
    if (temp_r2_10 != NULL) {
        temp_r3_17 = (s16) arg1;
        if ((*(u8 *)((s8 *)(temp_r2_10) + (0x21))) != temp_r3_17) {
            sub_801E150(temp_r2_10, temp_r3_17, 0, 0, 0);
        }
    }
}

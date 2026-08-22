#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815EA08 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_815EA08(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCF50;
    (*(s32 *)((s8 *)(arg0) + (0))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EA18.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EA64.s\"");
#else
void sub_815EA64(void *arg0) {
    struct Sprite *temp_r0_14;
    struct Sprite *temp_r0_19;
    struct Sprite *temp_r0_24;
    struct Sprite *temp_r0_29;
    struct Sprite *temp_r0_34;
    struct Sprite *temp_r0_39;
    struct Sprite *temp_r0_44;
    struct Sprite *temp_r0_49;
    struct Sprite *temp_r0_9;

    temp_r0_9 = (*(struct Sprite **)((s8 *)(arg0) + (4)));
    if (temp_r0_9 != NULL) {
        sprite_show_8020CBC(temp_r0_9);
    }
    temp_r0_14 = (*(struct Sprite **)((s8 *)((arg0 + 4)) + (4)));
    if (temp_r0_14 != NULL) {
        sprite_show_8020CBC(temp_r0_14);
    }
    temp_r0_19 = (*(struct Sprite **)((s8 *)(arg0) + (0xC)));
    if (temp_r0_19 != NULL) {
        sprite_show_8020CBC(temp_r0_19);
    }
    temp_r0_24 = (*(struct Sprite **)((s8 *)(arg0) + (0x10)));
    if (temp_r0_24 != NULL) {
        sprite_show_8020CBC(temp_r0_24);
    }
    temp_r0_29 = (*(struct Sprite **)((s8 *)(arg0) + (0x14)));
    if (temp_r0_29 != NULL) {
        sprite_show_8020CBC(temp_r0_29);
    }
    temp_r0_34 = (*(struct Sprite **)((s8 *)(arg0) + (0x18)));
    if (temp_r0_34 != NULL) {
        sprite_show_8020CBC(temp_r0_34);
    }
    temp_r0_39 = (*(struct Sprite **)((s8 *)(arg0) + (0x1C)));
    if (temp_r0_39 != NULL) {
        sprite_show_8020CBC(temp_r0_39);
    }
    temp_r0_44 = (*(struct Sprite **)((s8 *)(arg0) + (0x20)));
    if (temp_r0_44 != NULL) {
        sprite_show_8020CBC(temp_r0_44);
    }
    temp_r0_49 = (*(struct Sprite **)((s8 *)(arg0) + (0x24)));
    if (temp_r0_49 != NULL) {
        sprite_show_8020CBC(temp_r0_49);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EACC.s\"");
#else
s32 sub_8021308();                              /* extern */

void sub_815EACC(void *arg0, s32 arg1) {
    if ((*(s32 *)((s8 *)(arg0) + (4))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)((arg0 + 4)) + (4))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0xC))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x10))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x14))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x18))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x1C))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x20))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x24))) != 0) {
        sub_8021308();
    }
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EB70.s\"");
#else
s32 sub_8021308();                              /* extern */

void sub_815EB70(void *arg0, s32 arg1) {
    if ((*(s32 *)((s8 *)(arg0) + (4))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)((arg0 + 4)) + (4))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0xC))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x10))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x14))) != 0) {
        sub_8021308();
    }
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

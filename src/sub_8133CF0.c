#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8133CF0 needs.

asm_unified(".include \"asm/macros.inc\"");


int sub_8082E1C();
extern s32 sub_8133C7C;

void sub_8133CF0(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 0x0A, 0, 0);
        arg0->handler = &sub_8133C7C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8133D18.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8133D80.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8133DC0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8133F6C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134084.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134190.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81344D4.s\"");
#else
s32 sub_8134940();                              /* extern */

void sub_81344D4(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_r5_46;
    void *temp_r0_29;
    void *temp_r3_39;

    sub_8134940();
    (*(s8 *)((s8 *)(arg0) + (0x1C))) = (s8) arg4;
    temp_r0_29 = sub_8020DD0(arg1, arg2, arg3, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (8))) = temp_r0_29;
    sub_801E150(temp_r0_29, arg4, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (8))));
    temp_r3_39 = (*(void **)((s8 *)(arg0) + (8)));
    temp_r5_46 = arg5 & 3;
    (*(u8 *)((s8 *)(temp_r3_39) + (0x1F))) = (u8) ((((((((0x3F & (*(u8 *)((s8 *)(temp_r3_39) + (0x1F)))) | (arg5 << 6)) & ~0x30) | (temp_r5_46 * 0x10)) & ~0xC) | (temp_r5_46 * 4)) & ~3) | temp_r5_46);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0xE))) = 0;
}
#endif

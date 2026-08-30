#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81346D0 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8021308();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81346D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81346EC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134740.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134788.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81347C0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813481C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8134560();                              /* extern */
s32 sub_81345E8(s32, s32, s32);                 /* extern */
s32 sub_813481C(s32);                           /* extern */

s32 sub_813489C(s32 arg0) {
    sub_8134560();
    sub_813481C(arg0);
    sub_81345E8(arg0, 0, 0);
    return 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81348BC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81348C6.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_8134928(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0xC))) != 0) {
        sub_8021308();
        (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
    }
}

void sub_8134940(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (8))) != 0) {
        sub_8021308();
        (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134958.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81349CC.s\"");
#else
void sub_81349CC(void *arg0) {
    void *temp_r0_32;

    (*(s32 *)((s8 *)(arg0) + (0))) = 0;
    (*(s32 *)((s8 *)(arg0) + (4))) = 0;
    (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = 0x0821253C;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = 0x08212544;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x20))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x1E))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x1D))) = 0xFF;
    (*(s8 *)((s8 *)(arg0) + (0x1C))) = -1;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x28))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x2C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x34))) = 0;
    temp_r0_32 = (arg0 + 0x24) - 2;
    (*(s8 *)((s8 *)(temp_r0_32) + (0))) = 0;
    (*(s8 *)((s8 *)(temp_r0_32) + (1))) = 0;
}
#endif

#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808FC84 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FC84.s\"");
#else
extern s32 sub_808DD2C;
extern s32 sub_808FD14;

s32 sub_808FC84(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) * 0x3C))) + (0x2C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808FD14;
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_808DD2C;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FCD8.s\"");
#else
s32 sub_808FD3C(void *);                        /* extern */
s32 sub_808FDA4(void *);                        /* extern */
extern s32 sub_8087540;

s32 sub_808FCD8(void *arg0) {
    s32 temp_r1_11;

    temp_r1_11 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (temp_r1_11 == -1) {
        sub_808FDA4(arg0);
    } else if (temp_r1_11 == -2) {
        sub_808FD3C(arg0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_8087540;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FD14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FD3C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FDA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_808FE50(void *);                        /* extern */

void sub_808FE08(void *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x20))) = 0x10;
        sub_808FE50(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FE2C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FE50.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FEB4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FF18.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FF88.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FFF8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090050.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80900A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80900D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090194.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80902BC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809034C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090378.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80903A0.s\"");
#else
s32 sub_80903DC(void *);                        /* extern */
s32 sub_8090420(void *);                        /* extern */
extern s32 sub_8087540;

s32 sub_80903A0(void *arg0) {
    s32 temp_r1_11;

    temp_r1_11 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (temp_r1_11 == -1) {
        sub_8090420(arg0);
    } else if (temp_r1_11 == -2) {
        sub_80903DC(arg0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_8087540;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80903DC.s\"");
#else
extern s32 sub_8090460;

s32 sub_80903DC(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0x084FE9A4;
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + 0x3C)) + (0x2A)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8090460;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090420.s\"");
#else
extern s32 sub_80904C4;

s32 sub_8090420(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0x084FE8A8;
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)(*(void **)0x03000FF4) + (0x2A)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80904C4;
    return 1;
}
#endif

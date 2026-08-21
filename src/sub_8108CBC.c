#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8108CBC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8108CBC(void *arg0) {
    (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0xFFF & (*(u16 *)((s8 *)(arg0) + (0x11E))));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108CD0.s\"");
#else
void *sub_807FFB8(s32 *);                       /* extern */
extern s32 sub_8108BE0;

void sub_8108CD0(void *arg0) {
    if (3 & (*(u16 *)((s8 *)(arg0) + (0x11E)))) {
        if (((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) && !(0x20 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
            (*(void **)((s8 *)(sub_807FFB8(&sub_8108BE0)) + (8))) = arg0;
            (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x20);
        }
        (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0xFFFC & (*(u16 *)((s8 *)(arg0) + (0x11E))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108D2C.s\"");
#else
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_8108D2C(void *arg0, s32 arg1) {
    if (!(0x8000 & (*(u16 *)((s8 *)(arg0) + (0x11E)))) && (arg1 >= sub_81DD77C(0x64, sub_8199F30()))) {
        (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) ((0xFFF & (*(u16 *)((s8 *)(arg0) + (0x11E)))) | 0xFFFF8000);
        (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((-0x1D & (*(u8 *)((s8 *)(arg0) + (0x122)))) | 0xC);
        return 1;
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108D8C.s\"");
#else
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_8108D8C(void *arg0, s32 arg1) {
    if (!(0x4000 & (*(u16 *)((s8 *)(arg0) + (0x11E)))) && (arg1 >= sub_81DD77C(0x64, sub_8199F30()))) {
        (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) ((0xFFF & (*(u16 *)((s8 *)(arg0) + (0x11E)))) | 0x4000);
        (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((-0x1D & (*(u8 *)((s8 *)(arg0) + (0x122)))) | 0xC);
        return 1;
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108DE4.s\"");
#else
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_8108DE4(void *arg0, s32 arg1) {
    if (!(0x2000 & (*(u16 *)((s8 *)(arg0) + (0x11E)))) && (arg1 >= sub_81DD77C(0x64, sub_8199F30()))) {
        (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) ((0xFFF & (*(u16 *)((s8 *)(arg0) + (0x11E)))) | 0x2000);
        (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((-0x1D & (*(u8 *)((s8 *)(arg0) + (0x122)))) | 0xC);
        return 1;
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108E3C.s\"");
#else
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_8108E3C(void *arg0, s32 arg1) {
    if (!(0x1000 & (*(u16 *)((s8 *)(arg0) + (0x11E)))) && (arg1 >= sub_81DD77C(0x64, sub_8199F30()))) {
        (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) ((0xFFF & (*(u16 *)((s8 *)(arg0) + (0x11E)))) | 0x1000);
        (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((-0x1D & (*(u8 *)((s8 *)(arg0) + (0x122)))) | 0xC);
        return 1;
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108E94.s\"");
#else
s32 sub_8086E8C(void *);                            /* extern */

void sub_8108E94(void *arg0) {
    if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
        (*(s32 *)((s8 *)(arg0) + (0x118))) = sub_8086E8C(arg0 + 8);
        (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108F14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108FE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
